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
    public partial class DInf : Form
    {

     

        private void TB_TextChanged(object sender, EventArgs e)
        {
            Label TB = sender as Label; // get control that triggered event
            // with knowledge of total rows and cols of tablelayout you should
            // be able to calculate r and c index positions from index
            int index = this.tableLayoutPanel1.Controls.GetChildIndex(TB);
        }
        public DInf()
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
                com.CommandText = "Select * from juorney";
                da.SelectCommand = com;
                DataTable dt1 = new DataTable();
                da.Fill(dt1);
                Label t2 = new Label();
                t2.AutoSize = false;
                t2.TextAlign = ContentAlignment.MiddleCenter;
                Label t3 = new Label();
                t3.AutoSize = false;
                t3.TextAlign = ContentAlignment.MiddleCenter;
                Label t4 = new Label();
                t4.TextAlign = ContentAlignment.MiddleCenter;
                t4.AutoSize = false;
                Label t5 = new Label();
                t5.TextAlign = ContentAlignment.MiddleCenter;
                t5.AutoSize = false;
                t2.Text = "trip id";
                t3.Text = "trip date";
                t4.Text = "COST";
                t5.Text = "RATE";
                Int32 rowIndex = 0;
                this.tableLayoutPanel1.Controls.Add(t2, 0, rowIndex);
                this.tableLayoutPanel1.Controls.Add(t3, 1, rowIndex);
                this.tableLayoutPanel1.Controls.Add(t4, 2, rowIndex);
                this.tableLayoutPanel1.Controls.Add(t5, 3, rowIndex);
                while (rowIndex < dt1.Rows.Count) {
                    rowIndex++;
                    for ( int columnIndex = 0; columnIndex < 4; columnIndex++) {
                        Label t1 = new Label();
                        t1.AutoSize = false;
                        t1.ForeColor = System.Drawing.Color.Violet;
                        t1.TextAlign = ContentAlignment.MiddleCenter;
                        t1.Text = dt1.Rows[rowIndex][columnIndex].ToString();
                        t1.TextChanged += new System.EventHandler(this.TB_TextChanged);
                        this.tableLayoutPanel1.Controls.Add(t1, columnIndex, rowIndex);
                    }}
                
                } 
            catch (Exception ex)
            {

            }
            con.Close();
        }

    private void tableLayoutPanel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void DInf_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            DriverLogin p = new DriverLogin();
            p.Tag = this;
            p.Show(this);
            Hide();
        }
    }
}
