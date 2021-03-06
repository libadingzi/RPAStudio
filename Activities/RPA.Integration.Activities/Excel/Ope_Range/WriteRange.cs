﻿using System.Activities;
using System.ComponentModel;
using System;
using Plugins.Shared.Library;
using Excel = Microsoft.Office.Interop.Excel;

namespace RPA.Integration.Activities.ExcelPlugins
{

    [Designer(typeof(WriteRangeDesigner))]
    public sealed class WriteRange : AsyncCodeActivity
    {
        public WriteRange()
        {
        }


        [Browsable(false)]
        public string icoPath { get { return "pack://application:,,,/RPA.Integration.Activities;Component/Resources/Excel/rangewrite.png"; } }



        [Category("选项")]
        [DisplayName("工作表名称")]
        [Browsable(true)]
        public InArgument<string> SheetName
        {
            get;set;
        }


        [Category("单元格起始")]
        [DisplayName("行")]
        [Browsable(true)]
        public InArgument<Int32> CellRow_Begin
        {
            get;set;
        }

        [Category("单元格起始")]
        [DisplayName("列")]
        [Browsable(true)]
        public InArgument<Int32> CellColumn_Begin
        {
            get; set;
        }


        [Category("单元格起始")]
        [Description("代表单元格名称的VB表达式，如A1")]
        [DisplayName("单元格名称")]
        [Browsable(true)]
        public InArgument<string> CellName_Begin
        {
            get; set;
        }

        [Category("选项")]
        [DisplayName("表头")]
        [Browsable(true)]
        public bool isTitle
        {
            get;set;
        }

        [Category("选项")]
        [RequiredArgument]
        [DisplayName("DataTable")]
        [Browsable(true)]
        [Description("写入数据的DataTable变量名")]
        public InArgument<System.Data.DataTable> DataTable
        {
            get;
            set;
        }

        [Browsable(false)]
        public string ClassName { get { return "WriteRange"; } }
        private delegate string runDelegate();
        private runDelegate m_Delegate;
        public string Run()
        {
            return ClassName;
        }

        protected override IAsyncResult BeginExecute(AsyncCodeActivityContext context, AsyncCallback callback, object state)
        {
            PropertyDescriptor property = context.DataContext.GetProperties()[ExcelCreate.GetExcelAppTag];
            Excel::Application excelApp = property.GetValue(context.DataContext) as Excel::Application;
            try
            {
                string sheetName = SheetName.Get(context);
                string cellName_Begin = CellName_Begin.Get(context);
                int cellRow_Begin = CellRow_Begin.Get(context);
                int cellColumn_Begin = CellColumn_Begin.Get(context);
                System.Data.DataTable dt = DataTable.Get(context);

                Excel::_Worksheet sheet;
                if (sheetName != null)
                    sheet = excelApp.ActiveWorkbook.Sheets[sheetName];
                else
                    sheet = excelApp.ActiveSheet;


                Excel::Range range = cellName_Begin == null ? sheet.Cells[cellRow_Begin, cellColumn_Begin] : sheet.Range[cellName_Begin];

                int iRowBegin = range.Row;
                int iColBegin = range.Column;

                int i = 0;
                if(isTitle)
                {
                    for (int j = 0; j <= dt.Columns.Count - 1; j++)
                    {
                        sheet.Cells[iRowBegin + i, j + iColBegin] = dt.Columns[j].ColumnName;
                    }
                    i ++;
                }
                for (int a = 0; a <= dt.Rows.Count - 1; a++)
                {
                    for (int j = 0; j <= dt.Columns.Count - 1; j++)
                    {
                        sheet.Cells[iRowBegin + i + a, j + iColBegin] = dt.Rows[a][j];
                    }
                }
                System.Runtime.InteropServices.Marshal.ReleaseComObject(sheet);
                sheet = null;
                GC.Collect();
            }
            catch (Exception e)
            {
                SharedObject.Instance.Output(SharedObject.enOutputType.Error, "EXCEL写入区域执行过程出错", e.Message);
                new CommonVariable().realaseProcessExit(excelApp);
            }

            m_Delegate = new runDelegate(Run);
            return m_Delegate.BeginInvoke(callback, state);
        }

        protected override void EndExecute(AsyncCodeActivityContext context, IAsyncResult result)
        {
        }
    }
}
