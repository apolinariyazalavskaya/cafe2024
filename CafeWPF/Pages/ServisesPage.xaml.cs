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
    /// Логика взаимодействия для ServisesPage.xaml
    /// </summary>
    public partial class ServisesPage : Page
    {
        int _itemcount = 0;
        int _allitemcount = 0;
        int _pagenumber = 0;
        int _pagecount = 0;
        List<ZakazTable> zakazs;
        public ServisesPage()
        {
            InitializeComponent();
            cataloglistbox.ItemsSource = cafe_dbEntities.GetContext().ZakazTables.ToList();

            var worker = cafe_dbEntities.GetContext().WorkTables.OrderBy(x => x.Fname).ToList();
            worker.Insert(0, new WorkTable
            {
                Fname = "все сотрудники"
            });
            serviswork.ItemsSource = worker;
            serviswork.SelectedIndex = 0;

            _allitemcount = cataloglistbox.Items.Count;
            textblockcount.Text = $" Результат запроса: {_allitemcount} записей из { _allitemcount  } ";
        }
        private void serviswork_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateData();
        }
        private void InitializeListBoxPages()
        {
            listboxcountpages.Items.Clear();
            _pagecount = _itemcount / 10;
            if (_itemcount % 10 != 0)
                _pagecount++;
            for (int i = 1; i <= _pagecount; i++)
            {
                ListBoxItem itm = new ListBoxItem
                {
                    Content = i.ToString()
                };
                listboxcountpages.Items.Add(itm);
            }
        }
        void LoadData()
        {
            cafe_dbEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
            zakazs = cafe_dbEntities.GetContext().ZakazTables.OrderBy(p => p.IDZakaz).ToList();
            _allitemcount = zakazs.Count;
            _itemcount = _allitemcount;
            cataloglistbox.ItemsSource = cafe_dbEntities.GetContext().ZakazTables.OrderBy(p => p.IDZakaz).ToList();
            _pagenumber = 1;
            InitializeListBoxPages();
            int k = zakazs.Count - (_pagenumber - 1) * 10;
            if (k < 10)
                cataloglistbox.ItemsSource = zakazs.GetRange((_pagenumber - 1) * 10, k);
            else cataloglistbox.ItemsSource = zakazs.GetRange((_pagenumber - 1) * 10, 10);
            textblockcount.Text = $"Результат запроса: {_itemcount} записей из {_allitemcount}";
        }
        private void UpdateData()
        {
            var currentwork = cafe_dbEntities.GetContext().ZakazTables.OrderBy(p => p.IDZakaz).ToList();
            if (serviswork.SelectedIndex > 0)
                currentwork = currentwork.Where(p => p.Oficiant == (serviswork.SelectedItem as WorkTable).IDWorker).ToList();
            currentwork = currentwork.Where(p => p.WorkTable.Fname.ToLower().Contains(search.Text.ToLower())).ToList();   
            _pagenumber = 1;
            zakazs = currentwork;
            cataloglistbox.ItemsSource = currentwork;
            _itemcount = currentwork.Count;
            InitializeListBoxPages();
            int k = zakazs.Count - (_pagenumber - 1) * 10;
            if (k < 10)
                cataloglistbox.ItemsSource = zakazs.GetRange((_pagenumber - 1) * 10, k);
            else
                cataloglistbox.ItemsSource = zakazs.GetRange((_pagenumber - 1) * 10, 10);
            textblockcount.Text = $" Результат запроса: {currentwork.Count} записей из { _allitemcount  } ";
        }
        private void date_combo_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            var zakaz = cafe_dbEntities.GetContext().ZakazTables.OrderBy(p => p.IDZakaz).ToList();
            zakaz = zakaz.Where(p => p.DateZakaz == date_combo.SelectedDate).ToList();
            cataloglistbox.ItemsSource = zakaz;
        }
        private void cataloglistbox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
        }    
        private void BtnPrev_Click(object sender, RoutedEventArgs e)
        {
            if ((_pagenumber > 1))
                _pagenumber--;
            cataloglistbox.SelectedIndex = _pagenumber - 1;
        }
        private void listboxcountpages_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (cataloglistbox.SelectedItems.Count == 0)
                return;
            ListBoxItem lbi = ((sender as ListBox).SelectedItem as ListBoxItem);
            _pagenumber = Convert.ToInt32(lbi.Content);
            int k = zakazs.Count - (_pagenumber - 1) * 10;
            if (k < 10)
                cataloglistbox.ItemsSource = zakazs.GetRange((_pagenumber - 1) * 10, k);
            else
                cataloglistbox.ItemsSource = zakazs.GetRange((_pagenumber - 1) * 10, 10);
        }
        private void BtnNext_Click(object sender, RoutedEventArgs e)
        {
            if ((_pagenumber < _pagecount))
                _pagenumber++;
            cataloglistbox.SelectedIndex = _pagenumber - 1;
        }
        private void search_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateData();
        }

        private void admin_Click(object sender, RoutedEventArgs e)
        {
           NavigationService.Navigate(new Pages.AdministrationPage());
        }
        private void add_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.AddServisPage(null));
        }
        private void redak_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.AddServisPage((sender as Button).DataContext as ZakazTable));
        }
    }
}