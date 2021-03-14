using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinPracticePoject
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

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
            /*StreamReader objWrite = new StreamReader(FileName);
            string FileData = objWrite.ReadToEnd();
            objWrite.Close();
            TXT_input.Text = FileData;*/
        }

        public string GUID(){
            return DateTime.Now.Ticks.ToString();
        }
    }
}
