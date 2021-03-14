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
            StreamWriter obj = new StreamWriter(@"C:\Users\MF\Desktop\Semester# 4 Spring 2021\Code\_TXT-Files\file.txt",true);
            obj.WriteLine(TXT_input.Text);
            obj.Close();
        }

        private void textBox1_TextChanged_1(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            StreamReader objWrite = new StreamReader(@"C:\Users\MF\Desktop\Semester# 4 Spring 2021\Code\_TXT-Files\file.txt");
            string FileData = objWrite.ReadToEnd();
            objWrite.Close();
            textBox1.Text = FileData;
        }
    }
}
