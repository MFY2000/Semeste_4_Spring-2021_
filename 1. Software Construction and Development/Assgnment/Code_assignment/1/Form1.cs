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
        /*
        public void getData() {
            SqlDataAdapter da = new SqlDataAdapter("Select * from List", con);

            DataSet ds = new DataSet();
            da.Fill(ds);
            gvData.DataSource = ds.Tables[0];
        }
        */
        public void runQueary(string QRY)
        {

            // Pass Query and Connection object into the SQL Command
            SqlCommand obj = new SqlCommand(QRY, con);

            // Open & Close Database after execute the query
            con.Open();
            obj.ExecuteNonQuery();
            con.Close();
        }

        private void BTNSAVE_Click(object sender, EventArgs e)
        {
            if (txtInput.Text != ""){

                string InsertQureay = "INSERT INTO List (Todo,Status_) VALUES ('" + txtInput.Text + "',0);";
                string UpdateQureay = "UPDATE List SET Todo = '" + txtInput.Text + "' WHERE id = "+ID+"; ";

                runQueary(flag?InsertQureay: UpdateQureay);

                txtInput.Text = "";
                flag = true;
                //getData();
            }
        }



        /*
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = e.RowIndex;
            ID = gvData.Rows[index].Cells[0].Value.ToString();
            txtInput.Text = gvData.Rows[index].Cells[1].Value.ToString();
            flag = false;
        }
        */
        private void button2_Click(object sender, EventArgs e)
        {
            txtInput.Text = "";
        }

        private void BTNDelete_Click(object sender, EventArgs e)
        {
            if (ID != "" && !flag)
            {
                runQueary("DELETE FROM List WHERE id = " + ID);
                ID = "";
                txtInput.Text = "";
                //getData();
            }
        }



        /*
public void getFileList(){
DirectoryInfo di = new DirectoryInfo(@"C:\Users\MF\Desktop\Semester# 4 Spring 2021\Code\_TXT-Files\");
FileInfo[] fi = di.GetFiles();//listBox1. //di.Name;
for(int i = 0; i<=fi.Length-1;i++){
listBox1.Items.Insert(i, fi[i].Name);
}

}
private void textBox1_TextChanged(object sender, EventArgs e)
{

}

private void BTN_Save_Click(object sender, EventArgs e)
{
//textBox1.Text = TXT_input.Text;
StreamWriter obj = new StreamWriter(@"C:\Users\MF\Desktop\Semester# 4 Spring 2021\Code\_TXT-Files\file" + GUID() + ".txt",true);
obj.WriteLine(TXT_input.Text);
obj.Close();

listBox1.Items.Clear();
getFileList();
}

public void BTN_Update_Click(object sender, EventArgs e)
{
//textBox1.Text = TXT_input.Text;
StreamWriter obj = new StreamWriter(@"C:\Users\MF\Desktop\Semester# 4 Spring 2021\Code\_TXT-Files\file" + GUID() + ".txt", true);
obj.WriteLine(TXT_input.Text);
obj.Close();

listBox1.Items.Clear();
getFileList();
}


public String getData(string FileName)
{

FileInfo obj = new FileInfo(FileName);

if (obj.Exists)
{
StreamReader objWrite = new StreamReader(FileName);
string FileData = objWrite.ReadToEnd();
objWrite.Close();

return FileData;
}

return "";
StreamReader objWrite = new StreamReader(FileName);
string FileData = objWrite.ReadToEnd();
objWrite.Close();
TXT_input.Text = FileData;
}

public string GUID(){
return DateTime.Now.Ticks.ToString();
}
*/

    }
}
