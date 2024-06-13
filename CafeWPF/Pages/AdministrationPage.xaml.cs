using System;
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
    /// Логика взаимодействия для AdministrationPage.xaml
    /// </summary>
    public partial class AdministrationPage : Page
    {
       
        List<WorkTable> workers;
        public AdministrationPage()
        {
            InitializeComponent();
            personlistbox.ItemsSource = cafe_dbEntities.GetContext().WorkTables.ToList();

            var worker = cafe_dbEntities.GetContext().PositionTables.ToList();
            worker.Insert(0, new PositionTable
            {
               NamePosition = "все сотрудники"
            });
            position_.ItemsSource = worker;
            position_.SelectedIndex = 0;
        }
        void LoadData()
        {
            cafe_dbEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
            workers = cafe_dbEntities.GetContext().WorkTables.OrderBy(p => p.IDWorker).ToList();
        }
        private void UpdateData()
        {
            var currentwor = cafe_dbEntities.GetContext().WorkTables.OrderBy(p => p.Fname).ToList();
            if (position_.SelectedIndex > 0)
                currentwor = currentwor.Where(p => p.WorkPosition == (position_.SelectedItem as PositionTable).IDPosition).ToList();
            currentwor = currentwor.Where(p => p.Fname.ToLower().Contains(search.Text.ToLower())).ToList();
            personlistbox.ItemsSource = currentwor.OrderBy(p => p.IDWorker).ToList();
        }
        private void search_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateData();
        }
        private void registr_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.AddWorkPage(null));
        }
        private void smena_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.SmenaPage());
        }
        private void personlistbox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateData();
        }
        private void redak_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.AddWorkPage((sender as Button).DataContext as WorkTable));
        }
        private void serviswork_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateData();
        }
    }
}