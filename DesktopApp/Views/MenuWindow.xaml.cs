using DesktopApp.Models;
using System;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Media.Imaging;
using System.Windows.Threading;

namespace DesktopApp.Views
{
    /// <summary>
    /// Interaction logic for MenuWindow.xaml
    /// </summary>
    public partial class MenuWindow : Window
    {
        private Employee _employee;

        // timer
        private DispatcherTimer _sessionTimer;

        private DateTime _sessionStartTime;


        public MenuWindow()
        {
            InitializeComponent();

            InitializeTimer();

            InitializeHeader();
        }

        private void InitializeHeader()
        {

            switch (AppSettings.Default.UserRole)
            {
                case 1:
                    MainFrame.Content = new SellerView();
                    break;
                case 2:
                    MainFrame.Content = new AdminView();
                    break;
                case 3:
                    MainFrame.Content = new ManagerView();
                    break;
            }
            using (var dbContext = new DatabaseContext())
            {
                _employee = dbContext.Employees.Include("Position").First(x => x.EmployeeID == AppSettings.Default.UserID);
            }

            textBlockRole.Text = _employee.Position.Name;

            textBlockFullName.Text = $"{_employee.LastName} {_employee.FirstName} {_employee.MiddleName}";

            var uri = new Uri(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Desktop), "images", $"{_employee.LastName}.jpeg"));

            userImage.Source = new BitmapImage(uri);
        }

        private void InitializeTimer()
        {
            // Настройки временных интервалов

            _sessionStartTime = DateTime.Now;

            _sessionTimer = new DispatcherTimer();

            _sessionTimer.Interval = TimeSpan.FromSeconds(1);

            _sessionTimer.Tick += SessionTimer_Tick;

            _sessionTimer.Start();
        }

        #region События

        private void ButtonSignOut_Click(object sender, RoutedEventArgs e)
        {
            new LoginWindow().Show();
            Close();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            AppSettings.Default.Save();
        }

        #endregion

        private void SessionTimer_Tick(object sender, EventArgs e)
        {
            // Пройденное время c начала сеанса
            TimeSpan elapsed = DateTime.Now - _sessionStartTime;

            // Оставшееся время до конца сеанса
            TimeSpan remaining = AppSettings.Default.SessionDuration - elapsed;

            // Если оставшееся время закончилось
            if (remaining <= TimeSpan.Zero)
            {
                _sessionTimer.Stop();

                MessageBox.Show("Время сеанса истекло. Вход заблокирован на 3 минуты.");

                AppSettings.Default.IsBlocked = true;
                AppSettings.Default.Save();

                new LoginWindow().Show();
                Close();
            }
            // Если оставшееся время подходит к концу
            else if (Math.Floor(remaining.TotalSeconds) == Math.Floor(AppSettings.Default.WarningDuration.TotalSeconds))
            {
                MessageBox.Show("Внимание! Время сеанса скоро истечет.");
            }

            textBlockTimer.Text = remaining.ToString(@"hh\:mm\:ss");
        }
    }
}
