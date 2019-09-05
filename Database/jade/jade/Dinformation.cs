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
    public partial class Dinformation : Form
    {
        public Dinformation(String DID)
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
                com.CommandText = "SELECT dbo.counter(@DID)";
                com.CommandType = CommandType.Text;
                com.Parameters.Add(new SqlParameter("@DID", DID));
                da.SelectCommand = com;
                t2.Text = com.ExecuteScalar().ToString();
                com.CommandText = "SELECT dbo.rating(@DID)";
                
                t1.Text = DID;

                //DataTable dt1 = new DataTable();
                //da.Fill(dt1);
                t3.Text = com.ExecuteScalar().ToString();
                com.CommandText = "Select * from Driver where DID=@DID";
                DataTable dt2 = new DataTable();
                da.Fill(dt2);
                t4.Text = dt2.Rows[0]["phone"].ToString();
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("can't display");
            }
        }
        private void b2_Click(object sender, EventArgs e)
        {
            this.Hide();
            DInf ps = new DInf();
            ps.Visible = true;
        }

        private void Dinformation_Load(object sender, EventArgs e)
        {

        }

        private void t4_TextChanged(object sender, EventArgs e)
        {

        }

        private void t3_TextChanged(object sender, EventArgs e)
        {

        }

        private void t2_TextChanged(object sender, EventArgs e)
        {

        }

        private void t1_TextChanged(object sender, EventArgs e)
        {

        }

        private void b3_Click(object sender, EventArgs e)
        {
            DriverLogin p = new DriverLogin();
            p.Tag = this;
            p.Show(this);
            Hide();
        }
    }
}
