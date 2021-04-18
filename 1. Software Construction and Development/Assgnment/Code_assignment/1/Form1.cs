using System;
using System.Collections.Generic;
using System.ComponentModel;

using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
// Step 01: Call Libraries
using System.Data.SqlClient;
using System.Data;
namespace WinPracticePoject
{
    public partial class Form1 : Form
    {
        // Step 02: connection Object
        SqlConnection con = new SqlConnection("Data Source=MFY;Initial Catalog=TODO_list;Integrated Security=True");  // Connection Object
        string ID = "";
        Boolean flag = false;

        public Form1()
        {
            InitializeComponent();
            //getData();
        }

        public void runQueary(string QRY)
        {

            // Pass Query and Connection object into the SQL Command
            SqlCommand obj = new SqlCommand(QRY, con);

            // Open & Close Database after execute the query
            con.Open();
            obj.ExecuteNonQuery();
            con.Close();
        }


        private void txtInput_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {

        }
    }
}
