using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;

namespace jade
{
    public partial class DriverLogin : Form
    {
        public DriverLogin()
        {
            InitializeComponent();
        }

        private void DriverLogin_Load(object sender, EventArgs e)
        {

        }

        private void b3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-4K792AB;" + "Initial Catalog=Taxi project;" + "Integrated Security=True;";
            SqlCommand com = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            com.Connection = con;
            com.CommandText = "select * from Driver where Driver.DID=@User and Driver.NCode=@Pass";

            try
            {
                con.Open();
                com.Parameters.AddWithValue("@User", t3.Text);
                com.Parameters.AddWithValue("@Pass", t4.Text);
                da.SelectCommand = com;
                DataTable dt1 = new DataTable();
                da.Fill(dt1);
                t3.Text = dt1.Rows[0]["DID"].ToString();
                MessageBox.Show(t3.Text + "WAS FOUND!!");
                con.Close();
                Dinformation p = new Dinformation(t3.Text);
                p.Tag = this;
                p.Show(this);
                Hide();

            }
            catch (Exception ex)
            {
                MessageBox.Show("National Code Is Already Available!");
                DriverLogin p = new DriverLogin();
                p.Tag = this;
                p.Show(this);
                Hide();
            }

           
        }

        private void t3_TextChanged(object sender, EventArgs e)
        {

        }

        private void t4_TextChanged(object sender, EventArgs e)
        {

        }

        private void b1_Click(object sender, EventArgs e)
        {
            Form1 p = new Form1();
            p.Tag = this;
            p.Show(this);
            Hide();
        }
    }
}
