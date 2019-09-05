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
    public partial class Pinf : Form
    {
        public Pinf()
        {
            InitializeComponent();
        }

        private void b2_Click(object sender, EventArgs e)
        {
            PUpdate p = new PUpdate();
            p.Tag = this;
            p.Show(this);
            Hide();
        }

        private void b1_Click(object sender, EventArgs e)
        {
            //String User = t1.Text;
            //String Pass = t2.Text;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-4K792AB;" + "Initial Catalog=Taxi project;" + "Integrated Security=True;";
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "insert into Passenger([ID],[name],[family],[NCode],[phone])values(@ID,@Name,@Family,@NCode,@Phone)";



            try
            {
                con.Open();
                com.Parameters.AddWithValue("@ID", t5.Text);
                com.Parameters.AddWithValue("@Name", t1.Text);
                com.Parameters.AddWithValue("@Family", t2.Text);
                com.Parameters.AddWithValue("@NCode", t3.Text);
                com.Parameters.AddWithValue("@Phone", t4.Text);
                com.ExecuteNonQuery();
                MessageBox.Show("Row inserted!!");
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("National Code Is Already Available!");
            }

        }

        private void Pinf_Load(object sender, EventArgs e)
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
