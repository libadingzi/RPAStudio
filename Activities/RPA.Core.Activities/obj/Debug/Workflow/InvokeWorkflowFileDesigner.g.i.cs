﻿#pragma checksum "..\..\..\Workflow\InvokeWorkflowFileDesigner.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "25DC9E032ED17C1E0D2B9CD31B069D6DF2FAF6C487941DC408D5B54E71C71FCC"
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using Plugins.Shared.Library.Attached;
using Plugins.Shared.Library.Controls;
using System;
using System.Activities.Presentation;
using System.Activities.Presentation.Converters;
using System.Activities.Presentation.View;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace RPA.Core.Activities.Workflow {
    
    
    /// <summary>
    /// InvokeWorkflowFileDesigner
    /// </summary>
    public partial class InvokeWorkflowFileDesigner : System.Activities.Presentation.ActivityDesigner, System.Windows.Markup.IComponentConnector {
        
        
        #line 24 "..\..\..\Workflow\InvokeWorkflowFileDesigner.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BrowserBtn;
        
        #line default
        #line hidden
        
        
        #line 31 "..\..\..\Workflow\InvokeWorkflowFileDesigner.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button EditArgumentsBtn;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\..\Workflow\InvokeWorkflowFileDesigner.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ImportArgumentsBtn;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/RPA.Core.Activities;component/workflow/invokeworkflowfiledesigner.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Workflow\InvokeWorkflowFileDesigner.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.BrowserBtn = ((System.Windows.Controls.Button)(target));
            
            #line 24 "..\..\..\Workflow\InvokeWorkflowFileDesigner.xaml"
            this.BrowserBtn.Click += new System.Windows.RoutedEventHandler(this.BrowserBtn_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.EditArgumentsBtn = ((System.Windows.Controls.Button)(target));
            
            #line 31 "..\..\..\Workflow\InvokeWorkflowFileDesigner.xaml"
            this.EditArgumentsBtn.Click += new System.Windows.RoutedEventHandler(this.EditArgumentsBtn_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.ImportArgumentsBtn = ((System.Windows.Controls.Button)(target));
            
            #line 32 "..\..\..\Workflow\InvokeWorkflowFileDesigner.xaml"
            this.ImportArgumentsBtn.Click += new System.Windows.RoutedEventHandler(this.ImportArgumentsBtn_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}
