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
    /// Логика взаимодействия для AddWorkPage.xaml
    /// </summary>
    public partial class AddWorkPage : Page
    {
        private WorkTable _currenttools = new WorkTable();
        private string _filePath = null;
        public AddWorkPage(WorkTable selectedwork)
        {
            InitializeComponent(); 
            if (selectedwork != null)
            {
                _currenttools = selectedwork;
                IDWorker.Visibility = Visibility.Hidden;
                IDWorkers.Visibility = Visibility.Hidden;
                int x = selectedwork.IDWorker;
            }
            DataContext = _currenttools;
           
            Genders.ItemsSource = cafe_dbEntities.GetContext().GenderTables.ToList();
            WorkPosition.ItemsSource = cafe_dbEntities.GetContext().PositionTables.ToList();
           Status.ItemsSource = cafe_dbEntities.GetContext().StatusWorkerTables.ToList();
        }
        private StringBuilder CheckFileds()
        {
            StringBuilder s = new StringBuilder();
            if (string.IsNullOrWhiteSpace(_currenttools.Fname))
                s.AppendLine("Поле фамилия пустое");
            if (string.IsNullOrWhiteSpace(_currenttools.Name))
                s.AppendLine("Поле имя пустое");
            if (string.IsNullOrWhiteSpace(_currenttools.Phone))
                s.AppendLine("Поле телефон пустое");
            if (string.IsNullOrWhiteSpace(_currenttools.Email))
                s.AppendLine("Поле почта пустое");
            if (string.IsNullOrWhiteSpace(_currenttools.Login))
                s.AppendLine("Поле логин пустое");
            if (string.IsNullOrWhiteSpace(_currenttools.Password))
                s.AppendLine("Поле пароль пустое"); 
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
            if (_currenttools.IDWorker == 0)
            {
                cafe_dbEntities.GetContext().WorkTables.Add(_currenttools);
            }
            try
            {
                if (_filePath != null)
                {   
                }
                cafe_dbEntities.GetContext().SaveChanges();
                MessageBox.Show("Запись изменена");
                NavigationService.Navigate(new Pages.AdministrationPage());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}