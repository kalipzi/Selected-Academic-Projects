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
    public partial class Final : Form
    {
        public Final()
        {
            InitializeComponent();
            SqlConnection con = new SqlConnection();
            SqlCommand com = new SqlCommand();
            SqlDataAdapter d = new SqlDataAdapter();
            con.ConnectionString = "Data Source=DESKTOP-4K792AB;" + "Initial Catalog=Taxi project;" + "Integrated Security=True;";
            com.Connection = con;
            try
            {

                con.Open();
                com.CommandType = CommandType.Text;
                //com.CommandText = "select count(*) from Travel ";
                //Int32 count = (Int32)com.ExecuteScalar();
                com.CommandText = "select * FROM(SELECT ROW_NUMBER() OVER (ORDER BY TID) AS ROW,TID from Travel) us where ROW = (SELECT COUNT(*) FROM Travel)"; 
                d.SelectCommand = com;
                DataTable dt = new DataTable();
                d.Fill(dt);
                t1.Text = dt.Rows[0]["TID"].ToString();
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("can't open");
            }
        }


        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void t1_TextChanged(object sender, EventArgs e)
        {

        }

        private void Final_Load(object sender, EventArgs e)
        {

        }

        private void b1_Click(object sender, EventArgs e)
        {
            PTRequest p1 = new PTRequest();
            p1.Tag = this;
            p1.Show(this);
            Hide();
        }
    }
}
