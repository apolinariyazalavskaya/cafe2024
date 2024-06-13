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
using Microsoft.Win32;

namespace CafeWPF.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddSmenPage.xaml
    /// </summary>
    public partial class AddSmenPage : Page
    {
        private SmenaTable _currentsmen = new SmenaTable();
        private string _filePath = null;
        public AddSmenPage( SmenaTable selectsmena)
        {
            InitializeComponent();
            if (selectsmena != null)
            {
                _currentsmen = selectsmena;
                IDSmen.Visibility = Visibility.Hidden;
                IDSmenas.Visibility = Visibility.Hidden;
                int x = selectsmena.IDSmena;
            }
            DataContext = _currentsmen;
            Sotrud.ItemsSource = cafe_dbEntities.GetContext().WorkTables.ToList();
        }
        private StringBuilder CheckFileds()
        {
            StringBuilder s = new StringBuilder();
            if (date_combo.DisplayDate == null)
                s.AppendLine("Поле дата пустое");
            if (_currentsmen.Worker == null)
               s.AppendLine("Поле сотрудник пусто");
            if (_currentsmen.Time == null)
                s.AppendLine("Поле артикул пустое");
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
            if (_currentsmen.IDSmena == 0)
            {
                cafe_dbEntities.GetContext().SmenaTables.Add(_currentsmen);
            }
            try
            {
                if (_filePath != null)
                {
                }
                cafe_dbEntities.GetContext().SaveChanges();
                MessageBox.Show("Запись изменена");
                NavigationService.Navigate(new Pages.SmenaPage());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
