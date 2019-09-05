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
    public partial class PTRequest : Form
    { 
        public PTRequest()
        {
            InitializeComponent();

            SqlConnection con = new SqlConnection();
            SqlCommand com = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            con.ConnectionString = "Data Source=DESKTOP-4K792AB;" + "Initial Catalog=Taxi project;" + "Integrated Security=True;";
            com.Connection = con;
            try
            {
                con.Open();
                DataSet ds = new DataSet();
                com.CommandText = "Select * from OriginCity";
                da.SelectCommand = com;
                DataTable dt1 = new DataTable();
                da.Fill(dt1);
                c1.DisplayMember = "CityName";
                c1.ValueMember = "ID";
                c1.DataSource = dt1;
               

                com.CommandText = "Select * from DestinationCity";
                da.SelectCommand = com;
                DataTable dt2 = new DataTable();
                da.Fill(dt2);
                c2.DisplayMember = "CityName";
                c2.ValueMember = "ID";
                c2.DataSource = dt2;


                com.CommandText = "Select distinct degree from Car";
                da.SelectCommand = com;
                DataTable dt3 = new DataTable();
                da.Fill(dt3);
                c3.DisplayMember = "degree";
                c3.ValueMember = "ID";
                c3.DataSource = dt3;


                com.CommandText = " Select distinct gender from Driver";
                da.SelectCommand = com;
                DataTable dt4 = new DataTable();
                da.Fill(dt4);
                c4.DisplayMember = "gender";
                c4.ValueMember = "ID";
                c4.DataSource = dt4;


                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Can not open connection ! ");
            }

        }

        

        private void b1_Click(object sender, EventArgs e)
        {

            this.Hide();
            Psgapprovement ps = new Psgapprovement(c1.Text, c2.Text);
            ps.Visible = true;
        }

        private void PTRequest_Load(object sender, EventArgs e)
        {

        }

        private void c1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
         
        }

        private void c2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void c3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void c4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void b3_Click(object sender, EventArgs e)
        {
            psglogin p1 = new psglogin();
            p1.Tag = this;
            p1.Show(this);
            Hide();
        }
    }
}
