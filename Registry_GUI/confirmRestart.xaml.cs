using System.Windows;
using System.Windows.Input;
using System.Diagnostics;

namespace Registry_GUI
{
    /// <summary>
    /// Interaktionslogik für confirmRestart.xaml
    /// </summary>
    public partial class confirmRestart : Window
    {
        public confirmRestart()
        {
            InitializeComponent();
        }
        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void confirmRestart_Yes_Click(object sender, RoutedEventArgs e)
        {
            Process.Start("shutdown", "/r /t 30 /c \"The computer will restart in 30 seconds. Make sure to save your work.\"");
            Application.Current.Shutdown();
        }

        private void confirmRestart_No_Click(object sender, RoutedEventArgs e)
        {
            ConfirmRestartGUI.Hide();
            MainWindow w = new MainWindow();
            w.Show();
        }
    }
}