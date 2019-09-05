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
    public partial class PUpdate : Form
    {
        public PUpdate()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-4K792AB;" + "Initial Catalog=Taxi project;" + "Integrated Security=True;";
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "exec updatephone @Phone,@ID";

            try
            {
                con.Open();
                com.Parameters.AddWithValue("@Phone", textBox1.Text);
                com.Parameters.AddWithValue("@ID", t2.Text);
                com.ExecuteNonQuery();
                MessageBox.Show("Row updated!!");
                con.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show("Can't Update!");
            }
        }

        private void b3_Click(object sender, EventArgs e)
        {
            Pinf p1 = new Pinf();
            p1.Tag = this;
            p1.Show(this);
            Hide();
        }
    }
}
