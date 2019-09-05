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
    public partial class Psgapprovement : Form
    {
        
        
        public Psgapprovement(String Text1,String Text2)
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
                com.CommandText = "Select * from Coordinate,OriginCity,DestinationCity where Coordinate.OID=OriginCity.ID and Coordinate.DID=DestinationCity.ID and OriginCity.CityName=@Ocity and DestinationCity.CityName=@Dcity";
                com.Parameters.Add("@Ocity", Text1);
                com.Parameters.Add("@Dcity", Text2);
                d.SelectCommand =com;
                DataTable dt6 = new DataTable();
                d.Fill(dt6);
                t1.Text = dt6.Rows[0]["Cost"].ToString();
                t2.Text = dt6.Rows[0]["Time"].ToString();
                String BID = dt6.Rows[0]["BID"].ToString();

                com.CommandText = "insert into Travel([BID],[TDate]) values(@BID,GetDate())";
                com.Parameters.Add("@BID", BID);
                com.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Travel provided soon!");
                psglogin p1 = new psglogin();
                p1.Tag = this;
                p1.Show(this);
                Hide();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            Final ps = new Final();
            ps.Visible = true;
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void Psgapprovement_Load(object sender, EventArgs e)
        {

        }

        private void t1_TextChanged(object sender, EventArgs e)
        {

        }

        private void t2_TextChanged(object sender, EventArgs e)
        {

        }

        private void t4_TextChanged(object sender, EventArgs e)
        {

        }

        private void t3_TextChanged(object sender, EventArgs e)
        {

        }

        private void b3_Click(object sender, EventArgs e)
        {
            PTRequest p1 = new PTRequest();
            p1.Tag = this;
            p1.Show(this);
            Hide();
        }
    }
}
