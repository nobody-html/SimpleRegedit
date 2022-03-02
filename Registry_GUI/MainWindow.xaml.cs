using Microsoft.Win32;
using System.Diagnostics;
using System.IO;
using System.Threading;
using System.Windows;
using System.Windows.Input;

namespace Registry_GUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            RegistryKey key1 = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Policies\Microsoft\Windows\System", true);
            if (key1.GetValue("DisableAcrylicBackgroundOnLogon") == null)
            {
                key1.SetValue("DisableAcrylicBackgroundOnLogon", "0", RegistryValueKind.DWord);
            }

            if ((int)key1.GetValue("DisableAcrylicBackgroundOnLogon") == 1)
            {
                DisableAcrylicBackgroundOnLogon.IsChecked = true;
            }
            key1.Close();


            RegistryKey key2 = Registry.CurrentUser.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced", true);
            if (key2.GetValue("DisallowShaking") == null)
            {
                key2.SetValue("DisallowShaking", "0", RegistryValueKind.DWord);
            }

            if ((int)key2.GetValue("DisallowShaking") == 1)
            {
                DisallowShaking.IsChecked = true;
            }
            key2.Close();


            RegistryKey key3 = Registry.CurrentUser.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced", true);
            if (key3.GetValue("ShowSecondsInSystemClock") == null)
            {
                key3.SetValue("ShowSecondsInSystemClock", "0", RegistryValueKind.DWord);
            }

            if ((int)key3.GetValue("ShowSecondsInSystemClock") == 1)
            {
                ShowSecondsInSystemClock.IsChecked = true;
            }
            key3.Close();


            try
            {
                RegistryKey key4 = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Policies\Microsoft\Windows\Personalization", true);
                if (key4.GetValue("NoLockScreen") == null)
                {
                    key4.SetValue("NoLockScreen", "0", RegistryValueKind.DWord);
                }

                if ((int)key4.GetValue("NoLockScreen") == 1)
                {
                    NoLockScreen.IsChecked = true;
                }
                key4.Close();
            }
            catch (System.NullReferenceException)
            {
                Registry.LocalMachine.CreateSubKey(@"SOFTWARE\Policies\Microsoft\Windows\Personalization");
                RegistryKey key4 = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Policies\Microsoft\Windows\Personalization", true);
                if (key4.GetValue("NoLockScreen") == null)
                {
                    key4.SetValue("NoLockScreen", "0", RegistryValueKind.DWord);
                }

                if ((int)key4.GetValue("NoLockScreen") == 1)
                {
                    NoLockScreen.IsChecked = true;
                }
                key4.Close();
            }



            DisableAcrylicBackgroundOnLogon.IsEnabled = true;
            DisallowShaking.IsEnabled = true;
            ShowSecondsInSystemClock.IsEnabled = true;
            NoLockScreen.IsEnabled = true;
            

            ApplyButton.IsEnabled = true;
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void MinimizeButton_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.MainWindow.WindowState = WindowState.Minimized;
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void ApplyButton_Click(object sender, RoutedEventArgs e)
        {
            bool restartRequired = false;

            CloseButton.IsEnabled = false;
            ApplyButton.IsEnabled = false;

            RegistryKey key1 = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Policies\Microsoft\Windows\System", true);
            if (DisableAcrylicBackgroundOnLogon.IsChecked == true && (int)key1.GetValue("DisableAcrylicBackgroundOnLogon") == 0)
            {
                key1.SetValue("DisableAcrylicBackgroundOnLogon", "1", RegistryValueKind.DWord);
            }
            else if (DisableAcrylicBackgroundOnLogon.IsChecked == false && (int)key1.GetValue("DisableAcrylicBackgroundOnLogon") == 1)
            {
                key1.SetValue("DisableAcrylicBackgroundOnLogon", "0", RegistryValueKind.DWord);
            }
            key1.Close();

            RegistryKey key2 = Registry.CurrentUser.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced", true);
            if (DisallowShaking.IsChecked == true && (int)key2.GetValue("DisallowShaking") == 0)
            {
                key2.SetValue("DisallowShaking", "1", RegistryValueKind.DWord);
            }
            else if (DisallowShaking.IsChecked == false && (int)key2.GetValue("DisallowShaking") == 1)
            {
                key2.SetValue("DisallowShaking", "0", RegistryValueKind.DWord);
            }
            key2.Close();

            RegistryKey key3 = Registry.CurrentUser.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced", true);
            if (ShowSecondsInSystemClock.IsChecked == true && (int)key3.GetValue("ShowSecondsInSystemClock") == 0)
            {
                key3.SetValue("ShowSecondsInSystemClock", "1", RegistryValueKind.DWord);
                restartRequired = true;
            }
            else if (ShowSecondsInSystemClock.IsChecked == false && (int)key3.GetValue("ShowSecondsInSystemClock") == 1)
            {
                key3.SetValue("ShowSecondsInSystemClock", "0", RegistryValueKind.DWord);
                restartRequired = true;
            }
            key3.Close();

            RegistryKey key4 = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Policies\Microsoft\Windows\Personalization", true);
            if (NoLockScreen.IsChecked == true && (int)key4.GetValue("NoLockScreen") == 0)
            {
                key4.SetValue("NoLockScreen", 1, RegistryValueKind.DWord);
            }
            else if (NoLockScreen.IsChecked == false && (int)key4.GetValue("NoLockScreen") == 1)
            {
                key4.SetValue("NoLockScreen", 0, RegistryValueKind.DWord);
            }


            if (restartRequired == true)
            {
                MainWindowGUI.Hide();
                confirmRestart w = new confirmRestart();
                w.Show();
            }

            CloseButton.IsEnabled = true;
            ApplyButton.IsEnabled = true;
        }
    }
}
