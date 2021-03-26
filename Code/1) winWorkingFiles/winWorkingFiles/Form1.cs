using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace winWorkingFiles{

    class Global{
        public static string FileAddress = @"C:\Users\MF\Desktop\Semester# 4 Spring 2021\Code\_TXT-Files\";
    }

    public partial class Form1 : Form{


        public Form1(){
            InitializeComponent();
        }
        /*
        private void btnSave_Click(object sender, EventArgs e)
        {
            WritingFile(txtMyData.Text, true);
        }

        public void WritingFile(string FileData, bool status)
        {
            StreamWriter obj = new StreamWriter(Global.FileAddress + GUID() + ".txt", status);
            obj.WriteLine(FileData);
            obj.Close();
        }

        private void btnRead_Click(object sender, EventArgs e)
        {
            txtReadData.Text = ReadFile();
        }

        public string ReadFile()
        {
            FileInfo obj = new FileInfo(Global.FileAddress);

            if (obj.Exists)
            {
                StreamReader objWrite = new StreamReader(Global.FileAddress);
                string FileData = objWrite.ReadToEnd();
                objWrite.Close();

                return FileData;
            }

            return "";
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            FileInfo obj = new FileInfo(@"E:\Lectures\SP21\Software Construction & Development\TestFiles\file.txt");

            if (obj.Exists)
                obj.Delete();
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            WritingFile("", false);
        }

*/

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
