using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
// Step 01: Call Libraries
using System.Data.SqlClient;
using System.Data;

namespace winProjectAM
{
    public partial class Form1 : Form
    {
        // Step 02: connection Object
        SqlConnection con = new SqlConnection("Data Source=LT--0157;Initial Catalog=dbTestAM;Persist Security Info=True;User ID=sa;Password=Cl@ss!c123");  // Connection Object
        string ID = String.Empty;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            BindGrid();
        }

        public void BindGrid()
        {
            // Step 03: Sql Data Adapter Call
            SqlDataAdapter da = new SqlDataAdapter("Select * from Students", con);

            // Stpe 04: Define Data Set
            DataSet ds = new DataSet();

            // Step 05: Fill Data into the Dataset
            da.Fill(ds);

            // Step 06: Show Data in to gridview
            gvStudents.DataSource = ds.Tables[0];
        }

        private void btnInsert_Click(object sender, EventArgs e)
        {
            // Set Query of Insert Table
            string QRY = "Insert into [dbo].[Students] (Name, Email, Fees) Values ('"+ txtName.Text +"', '"+ txtEmail.Text +"', "+ txtFees.Text +")";
            
            // Pass Query and Connection object into the SQL Command
            SqlCommand obj = new SqlCommand(QRY, con);

            // Open & Close Database after execute the query
            con.Open();
            obj.ExecuteNonQuery();
            con.Close();

            BindGrid();

            txtName.Text = "";
            txtEmail.Text = "";
            txtFees.Text = "";
        }

        private void gvStudents_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            ID = gvStudents.Rows[e.RowIndex].Cells[0].Value.ToString();
            txtName.Text = gvStudents.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtEmail.Text = gvStudents.Rows[e.RowIndex].Cells[2].Value.ToString();
            txtFees.Text = gvStudents.Rows[e.RowIndex].Cells[3].Value.ToString();

            
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            string QRY = "Update [dbo].[Students] Set Name = '" + txtName.Text + "',  Email = '" + txtEmail.Text + "', Fees = " + txtFees.Text + " Where ID = " + ID;

            // Pass Query and Connection object into the SQL Command
            SqlCommand obj = new SqlCommand(QRY, con);

            // Open & Close Database after execute the query
            con.Open();
            obj.ExecuteNonQuery();
            con.Close();

            BindGrid();

            txtName.Text = "";
            txtEmail.Text = "";
            txtFees.Text = "";
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            string QRY = "Delete from [dbo].[Students] Where ID = " + ID;

            // Pass Query and Connection object into the SQL Command
            SqlCommand obj = new SqlCommand(QRY, con);

            // Open & Close Database after execute the query
            con.Open();
            obj.ExecuteNonQuery();
            con.Close();

            BindGrid();

            txtName.Text = "";
            txtEmail.Text = "";
            txtFees.Text = "";
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            // Step 03: Sql Data Adapter Call
            SqlDataAdapter da = new SqlDataAdapter("Select * from Students where Name like '%"+ txtSearch.Text  + "%' OR Email like '%" + txtSearch.Text + "%'", con);

            // Stpe 04: Define Data Set
            DataSet ds = new DataSet();

            // Step 05: Fill Data into the Dataset
            da.Fill(ds);

            // Step 06: Show Data in to gridview
            gvStudents.DataSource = ds.Tables[0];
        }

        private void gvStudents_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
