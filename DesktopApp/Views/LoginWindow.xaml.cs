using DesktopApp.Models;
using System;
using System.Linq;
using System.Windows;

namespace DesktopApp.Views
{
    /// <summary>
    /// Interaction logic for LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void ButtonRevealPassword_Checked(object sender, RoutedEventArgs e)
        {
            textBoxPass.Text = passwordBoxPass.Password;

            passwordBoxPass.Visibility = Visibility.Collapsed;
            textBoxPass.Visibility = Visibility.Visible;

            textBoxPass.Focus();
        }

        private void ButtonRevealPassword_Unchecked(object sender, RoutedEventArgs e)
        {
            passwordBoxPass.Password = textBoxPass.Text;

            textBoxPass.Visibility = Visibility.Collapsed;
            passwordBoxPass.Visibility = Visibility.Visible;

            passwordBoxPass.Focus();
        }

        private void ButtonLogin_Click(object sender, RoutedEventArgs e)
        {
            // Если приложение заблокировано
            if (AppSettings.Default.IsBlocked)
            {
                // Проверяем прошло ли время блокировки
                if (DateTime.Now >= AppSettings.Default.DateBlocked + AppSettings.Default.BlockDuration)
                {
                    AppSettings.Default.IsBlocked = false;

                    AppSettings.Default.Save();

                    MessageBox.Show("Вход разблокирован. Начните новый сеанс.");
                }
                else
                {
                    MessageBox.Show("Время сеанса истекло. Вход заблокирован на 3 минуты.");
                }
            }

            using (var dbContext = new DatabaseContext())
            {
                var password = string.IsNullOrEmpty(textBoxPass.Text) ? passwordBoxPass.Password : textBoxPass.Text;

                if (dbContext.Employees.Any(x => x.Email == textBoxLogin.Text && x.Password == password))
                {
                    var user = dbContext.Employees.First(x => x.Email == textBoxLogin.Text && x.Password == password);

                    AppSettings.Default.UserID = user.EmployeeID;

                    AppSettings.Default.UserRole = user.PositionID;

                    AppSettings.Default.Save();

                    new MenuWindow().Show();

                    Close();
                }
            }
        }
    }
}
