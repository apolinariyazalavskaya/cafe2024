﻿#pragma checksum "..\..\..\Pages\AdministrationPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "B5438868F153835871DDCB7BD1AD55CFF85042F38777CB0F6E371DFD531CD8CA"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using CafeWPF.Pages;
using System;
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


namespace CafeWPF.Pages {
    
    
    /// <summary>
    /// AdministrationPage
    /// </summary>
    public partial class AdministrationPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 24 "..\..\..\Pages\AdministrationPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox search;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\..\Pages\AdministrationPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox position_;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\..\Pages\AdministrationPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button registr;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\..\Pages\AdministrationPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button smena;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\..\Pages\AdministrationPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListBox personlistbox;
        
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
            System.Uri resourceLocater = new System.Uri("/CafeWPF;component/pages/administrationpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\AdministrationPage.xaml"
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
            this.search = ((System.Windows.Controls.TextBox)(target));
            
            #line 24 "..\..\..\Pages\AdministrationPage.xaml"
            this.search.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.search_TextChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.position_ = ((System.Windows.Controls.ComboBox)(target));
            
            #line 28 "..\..\..\Pages\AdministrationPage.xaml"
            this.position_.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.serviswork_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.registr = ((System.Windows.Controls.Button)(target));
            
            #line 32 "..\..\..\Pages\AdministrationPage.xaml"
            this.registr.Click += new System.Windows.RoutedEventHandler(this.registr_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.smena = ((System.Windows.Controls.Button)(target));
            
            #line 33 "..\..\..\Pages\AdministrationPage.xaml"
            this.smena.Click += new System.Windows.RoutedEventHandler(this.smena_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.personlistbox = ((System.Windows.Controls.ListBox)(target));
            
            #line 36 "..\..\..\Pages\AdministrationPage.xaml"
            this.personlistbox.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.personlistbox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 6:
            
            #line 68 "..\..\..\Pages\AdministrationPage.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.redak_Click);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}

