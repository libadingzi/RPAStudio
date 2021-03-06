﻿using System.Activities;
using System.ComponentModel;
using System;
using Plugins.Shared.Library;
using Excel = Microsoft.Office.Interop.Excel;

namespace RPA.Integration.Activities.ExcelPlugins
{

    [Designer(typeof(DataFillDesigner))]
    public sealed class DataFill : AsyncCodeActivity
    {
        public DataFill()
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


        [Category("单元格终点")]
        [DisplayName("行")]
        [Browsable(true)]
        public InArgument<Int32> CellRow_End
        {
            get; set;
        }

        [Category("单元格终点")]
        [DisplayName("列")]
        [Browsable(true)]
        public InArgument<Int32> CellColumn_End
        {
            get; set;
        }

        [Category("单元格终点")]
        [Description("代表单元格名称的VB表达式，如B2")]
        [DisplayName("单元格名称")]
        [Browsable(true)]
        public InArgument<string> CellName_End
        {
            get; set;
        }


        [Category("输入")]
        [DisplayName("单元格数据")]
        [RequiredArgument]
        [Browsable(true)]
        public InArgument<object> FillData
        {
            get; set;
        }


        [Browsable(false)]
        public string ClassName { get { return "DataFill"; } }
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
                string cellName_End = CellName_End.Get(context);
                int cellRow_Begin = CellRow_Begin.Get(context);
                int cellColumn_Begin = CellColumn_Begin.Get(context);
                int cellRow_End = CellRow_End.Get(context);
                int cellColumn_End = CellColumn_End.Get(context);
                Excel::_Worksheet sheet;
                if (sheetName != null)
                    sheet = excelApp.ActiveWorkbook.Sheets[sheetName];
                else
                    sheet = excelApp.ActiveSheet;

                Excel::Range range1, range2;
                range1 = cellName_Begin == null ? sheet.Cells[cellRow_Begin, cellColumn_Begin] : sheet.Range[cellName_Begin];
                range2 = cellName_End == null ? sheet.Cells[cellRow_End, cellColumn_End] : sheet.Range[cellName_End];
                Excel::Range range3 = sheet.Range[range1, range2];
                range3.Value2 = FillData.Get(context);


                System.Runtime.InteropServices.Marshal.ReleaseComObject(sheet);
                sheet = null;
                GC.Collect();
            }
            catch (Exception e)
            {
                SharedObject.Instance.Output(SharedObject.enOutputType.Error, "EXCEL区域填充过程出错", e.Message);
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
