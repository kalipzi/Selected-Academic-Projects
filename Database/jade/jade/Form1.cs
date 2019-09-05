using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace jade
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            c1.Items.Add("DRIVER");
            c1.Items.Add("PASSENGER");
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void b1_Click(object sender, EventArgs e)
        {
            if(c1.Text == "PASSENGER")
            { 
                psglogin p = new psglogin();
                p.Tag = this;
                p.Show(this);
                Hide();
            }
           if(c1.Text == "DRIVER") {
                DriverLogin d = new DriverLogin();
                d.Tag = this;
                d.Show(this);
                Hide();

            }


        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String type = this.c1.SelectedItem.ToString();
          

        }
    }
}
