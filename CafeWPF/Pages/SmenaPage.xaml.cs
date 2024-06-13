﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using CafeWPF.Models;

namespace CafeWPF.Pages
{
    /// <summary>
    /// Логика взаимодействия для SmenaPage.xaml
    /// </summary>
    public partial class SmenaPage : Page
    {
        public SmenaPage()
        {
            InitializeComponent();
            DataGridSmena.ItemsSource = cafe_dbEntities.GetContext().SmenaTables.ToList();
        }
        private void smen_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.AddSmenPage(null));
        }
    }
}