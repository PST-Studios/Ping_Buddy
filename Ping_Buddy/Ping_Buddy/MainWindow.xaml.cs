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

using System.Net.NetworkInformation;
using System.Net;

namespace Ping_Buddy
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string pingbox = "";
                pingbox = pingtextbox.Text;
                IPAddress address;
                if (IPAddress.TryParse(pingbox, out address))
                {
                    Ping ping = new Ping();
                    PingReply pingresult = ping.Send(pingbox);
                    if (pingtextbox.Text != "" && pingtextbox.Text != null && pingresult.Status.ToString() == "Success")
                    {
                        VisualStateManager.GoToState(status, "Good", true);
                        if (notification.IsChecked == true)
                        {
                            MessageBox.Show("The connection to (" + pingbox + ") is successful!", "Ping Success");
                        }
                    }
                    else if (pingtextbox.Text != "" && pingtextbox.Text != null && pingresult.Status.ToString() != "Success")
                    {
                        VisualStateManager.GoToState(status, "Bad", true);
                        if (notification.IsChecked == true)
                        {
                            MessageBox.Show("The connection to (" + pingbox + ") has failed. \n\nPlease check that the address is correct\nand try again.\n\n\nError: " + pingresult.Status.ToString(), "Ping Failure");
                        }
                    }
                }
                else
                {
                    VisualStateManager.GoToState(status, "Empty", true);
                    if (notification.IsChecked == true)
                    {
                        MessageBox.Show("Please Enter a Valid IP Address and Try Again.", "Invalid IP Address");
                    }
                }
            }
            catch
            {
                MessageBox.Show("Error - Please Try Valid IP Address", "Error");
                pingtextbox.Text = "";
            }
        }
    }
}
