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
using System.IO;
using Microsoft.Win32;

namespace CafeWPF.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddServisPage.xaml
    /// </summary>
    public partial class AddServisPage : Page
    {
        private ZakazTable _currentzakaz = new ZakazTable();
        private string _filePath = null;
        public AddServisPage(ZakazTable selectedzakaz)
        {
            InitializeComponent();
            if (selectedzakaz != null)
            {
                _currentzakaz = selectedzakaz;
                IDZakaz.Visibility = Visibility.Hidden;
                ID.Visibility = Visibility.Hidden;
                int x = selectedzakaz.IDZakaz;
            }
            DataContext = _currentzakaz;
            StatusOfics.ItemsSource = cafe_dbEntities.GetContext().StatusOficTables.ToList();
                StatusCook.ItemsSource = cafe_dbEntities.GetContext().StatusCookTables.ToList();
            Oficiant.ItemsSource = cafe_dbEntities.GetContext().WorkTables.ToList();

            NDish.ItemsSource = cafe_dbEntities.GetContext().DishTables.ToList();

            NDrink.ItemsSource = cafe_dbEntities.GetContext().DrinkTables.ToList();

        }
        private StringBuilder CheckFileds()
        {
            StringBuilder s = new StringBuilder();
           

            
            if (_currentzakaz.WorkTable == null)
                s.AppendLine("Поле официант пустое");
            return s;


        }
        private void btnsave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder _error = CheckFileds();
            if (_error.Length > 0)
            {
                MessageBox.Show(_error.ToString());
                return;
            }
            if (_currentzakaz.IDZakaz == 0)
            {

                cafe_dbEntities.GetContext().ZakazTables.Add(_currentzakaz);
            }
            try
            {
                if (_filePath != null)
                {

                }
                cafe_dbEntities.GetContext().SaveChanges();
                MessageBox.Show("Запись изменена");
                NavigationService.Navigate(new Pages.ServisesPage());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
