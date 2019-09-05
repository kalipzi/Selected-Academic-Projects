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
    public partial class psglogin : Form
    {
        public psglogin()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
           
            Pinf p = new Pinf();
            p.Tag = this;
            p.Show(this);
            Hide();

        }
       

        private void psglogin_Load(object sender, EventArgs e)
        {

        }

        private void t1_TextChanged(object sender, EventArgs e)
        {

        }

        private void t2_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-4K792AB;" + "Initial Catalog=Taxi project;" + "Integrated Security=True;";
            SqlCommand com = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            com.Connection = con;
            com.CommandText = "select * from passenger where passenger.ID=@User and Passenger.NCode=@Pass";

            try
            {
                con.Open();
                com.Parameters.AddWithValue("@User", t1.Text);
                com.Parameters.AddWithValue("@Pass", t2.Text);
                da.SelectCommand = com;
                DataTable dt1 = new DataTable();
                da.Fill(dt1);
                t1.Text = dt1.Rows[0]["ID"].ToString();
                MessageBox.Show(t1.Text+"WAS FOUND!!");
                con.Close();

                PTRequest p = new PTRequest();
                p.Tag = this;
                p.Show(this);
                Hide();

            }
            catch (Exception ex)
            {
                MessageBox.Show("National Code Is Already Available!");
                psglogin p1 = new psglogin();
                p1.Tag = this;
                p1.Show(this);
                Hide();
            }
           
        }

        private void b3_Click(object sender, EventArgs e)
        {
            Form1 p1 = new Form1();
            p1.Tag = this;
            p1.Show(this);
            Hide();

        }
    }
}
































