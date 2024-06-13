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
using Microsoft.Win32;
using CafeWPF.Models;

namespace CafeWPF.Pages
{
    /// <summary>
    /// Логика взаимодействия для AutorizationPage.xaml
    /// </summary>
    public partial class AutorizationPage : Page
    {
        public AutorizationPage()
        {
            InitializeComponent();
            if (GetRegistryKey("Password")?.Length > 0)
            {
                passwordtxt.Password = GetRegistryKey("Password");
                logintxt.Text = GetRegistryKey("Login");
            }
        }
        private static readonly string registryPath = System.IO.Path.Combine(Registry.CurrentUser.Name, "Software", "MyLoginSave");
        private static string GetRegistryKey(string key)
        {
            return (string)Registry.GetValue(registryPath, key, string.Empty);
        }
        private static void SetRegistryKey(string key, string value)
        {
            Registry.SetValue(registryPath, key, value, RegistryValueKind.String);
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            WorkTable workers = cafe_dbEntities.GetContext().WorkTables.FirstOrDefault(p => p.Login == logintxt.Text && p.Password == passwordtxt.Password);
            if (workers == null)
            {
                MessageBox.Show("неверный логин или пароль, пожалуйста попробуйте еще раз");
                return;
            }
            if (chkbox.IsChecked == true)
            {
                SetRegistryKey("Password", passwordtxt.Password);
                SetRegistryKey("Login", logintxt.Text);
            }
            if (string.IsNullOrEmpty(logintxt.Text) || string.IsNullOrEmpty(passwordtxt.Password))
            {
                MessageBox.Show("Введите логин и пароль");
                return;
            }
            using (var db = new cafe_dbEntities())
            {
                var user = db.WorkTables
                    .AsNoTracking()
                    .FirstOrDefault(u => u.Login == logintxt.Text && u.Password == passwordtxt.Password);
                if (user == null)
                {
                    MessageBox.Show("Пользователь с такими данными не найден");
                    return;
                }
                switch (user.WorkPosition)
                {
                    case 1:
                        NavigationService.Navigate(new Pages.ServisesPage());
                        MessageBox.Show("вы вошли как администратор");
                        break;
                    case 2:
                        NavigationService.Navigate(new Pages.ServisesPage());
                        MessageBox.Show("вы вошли как официант");
                        break;
                    case 3:
                        NavigationService.Navigate(new Pages.ServisesPage());
                        MessageBox.Show("вы вошли как повар");
                        break;
                }
            }
        }
    }
}