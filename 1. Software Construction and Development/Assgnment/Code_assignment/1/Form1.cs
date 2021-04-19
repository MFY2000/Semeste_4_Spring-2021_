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
        SqlConnection con = new SqlConnection("Data Source=MFY;Initial Catalog=Assignment;Integrated Security=True");  // Connection Object
        string ID = "";

        public Form1()
        {
            InitializeComponent();
            getData();
        }

        public void runQueary(string QRY)
        {

            // Pass Query and Connection object into the SQL Command
            SqlCommand obj = new SqlCommand(QRY, con);

            // Open & Close Database after execute the query
            con.Open();
            obj.ExecuteNonQuery();
            con.Close();
            Clear();
            getData();
        }

        public void getData()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from Contact", con);

            DataSet ds = new DataSet();
            da.Fill(ds);
            DataDisplay.DataSource = ds.Tables[0];
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            string InsertQureay = "INSERT INTO Contact () VALUES ('"
                + txtID.Text +","+
                 txtCName.Text + "," +
                 txtName.Text + "," +
                 txtCtitle.Text + "," +
                 txtAddress.Text + "," +
                 txtCity.Text + "," +
                 txtPostal.Text + "," +
                 txtPhone.Text + "," +
                 txtRegion.Text + "," +
                 txtCountry.Text + "," +
                 txtFax.Text+"');";

            runQueary(InsertQureay);

      
        }

        public void Clear()
        {
            txtID.Text = "";
            txtCName.Text = "";
            txtName.Text = "";
            txtCtitle.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            txtPostal.Text = "";
            txtPhone.Text = "";
            txtRegion.Text = "";
            txtCountry.Text = "";
            txtFax.Text = "";
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (ID != "" )
            {
                runQueary("DELETE FROM Contact WHERE id = " + ID);
                ID = "";
            }
        }

        private void DataDisplay_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = e.RowIndex;
            ID = DataDisplay.Rows[index].Cells[0].Value.ToString();

            txtID.Text = DataDisplay.Rows[index].Cells[0].Value.ToString();

            txtCName.Text = DataDisplay.Rows[index].Cells[1].Value.ToString();
            txtName.Text = DataDisplay.Rows[index].Cells[2].Value.ToString();
            txtCtitle.Text = txtName.Text = DataDisplay.Rows[index].Cells[3].Value.ToString();

            txtAddress.Text = txtName.Text = DataDisplay.Rows[index].Cells[4].Value.ToString();

            txtCity.Text = txtName.Text = DataDisplay.Rows[index].Cells[5].Value.ToString();

            txtPostal.Text = txtName.Text = DataDisplay.Rows[index].Cells[6].Value.ToString();

            txtPhone.Text = txtName.Text = DataDisplay.Rows[index].Cells[7].Value.ToString();

            txtRegion.Text = txtName.Text = DataDisplay.Rows[index].Cells[8].Value.ToString();

            txtCountry.Text = txtName.Text = DataDisplay.Rows[index].Cells[9].Value.ToString();

            txtFax.Text = txtName.Text = DataDisplay.Rows[index].Cells[10].Value.ToString();

        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (ID != "")
            {
            string UpdateQureay = "UPDATE List SET " +
                    "Company_Name = '" + txtCName.Text + "," +
                    "Contact_Name = '" + txtName.Text + "," +
                    "Contact_Title = '" + txtCtitle.Text + "," +
                    "Address = '" + txtAddress.Text + "," +
                    "City = '" + txtCity.Text + "," +
                    "Postal Code = '" + txtPostal.Text + "," +
                    "Phone = '" + txtPhone.Text + "," +
                    "Region = '" + txtRegion.Text + "," +
                    "Country = '" + txtCountry.Text + "," +
                    "Fax = '" + txtFax.Text +
                    "' WHERE ID = " + ID + "; ";

                runQueary(UpdateQureay);


            }
        }

    }
}
