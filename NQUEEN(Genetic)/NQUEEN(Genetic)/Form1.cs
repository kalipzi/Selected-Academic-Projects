using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace NQUEEN_Genetic_
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        const int n = 16;
        const int p = 60;
        int[,] currentgeneration = new int[p, n + 1];
        int[,] nextgeneration = new int[p, n + 1];


        public void fit(int[,] g)//تابع محاسبه ی سسودمندی 
        {
            for (int i = 0; i < p; i++)
            {
                int menace = 0;
                for (int j = 0; j < n; j++)
                {
                    for (int l = j + 1; l < n; l++)
                    {
                        if (g[i, j] == g[i, l]) { menace++; }//تهدید های سطری


                        if (Math.Abs(j - l) == Math.Abs(g[i, j] - g[i, l]))//تهدید های قطری
                        {
                            menace++;
                        }
                    }

                }
                g[i, n] = menace;
            }
        }

        public void print(int[,] g, ListBox l)
        {
            l.Items.Clear();
            String z;
            for (int i = 0; i < p; i++)
            {
                z = "";
                for (int j = 0; j < n + 1; j++)
                {
                    z += g[i, j];
                }

                l.Items.Add(z); }
        }

        private void sort(int[,] g)
        {
            int temp;
            for (int i = 0; i < p - 1; i++)
            {
                for (int j = i + 1; j < p; j++)
                {
                    if (g[i, n] > g[j, n]) {
                        for (int l = 0; l <= n; l++)
                        {
                            temp = g[i, l];
                            g[i, l] = g[j, l];
                            g[j, l] = temp;
                        }
                    }
                } } }


        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void b1_Click(object sender, EventArgs e)
        {
            String z;
            Random rand = new Random();
            for (int i = 0; i < p; i++)
            {
                z = "";

                for (int j = 0; j < n; j++)
                {
                    currentgeneration[i, j] = rand.Next(1, n);//تولید نسل تصادفی
                    z += "" + currentgeneration[i, j];
                }
            }
            fit(currentgeneration);
            print(currentgeneration, l1);//نشان دادن تابع سودمندی در listbox1
            sort(currentgeneration);
            print(currentgeneration, l1);//تابع مرتب شده درlistbox1 
        }

        private void b2_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            int repeat = 0;
            label:
            for (int i = 0; i < (p / 2); i++)//انتخاب 50 جمعیت برتر
            {
                for (int l = 0; l <= n; l++)
                {
                    nextgeneration[i, l] = currentgeneration[i, l];

                }
            }
            for (int i = 0; i < (p / 2); i = i + 2)//انتخاب 50تای برتر جمعیت (اتخاب دو به دو جمعیت ها
            {
                for (int l = 0; l <= n; l++)
                {
                    if (l < (n / 2))//cross over انجام عملیات 
                    {
                        nextgeneration[i + (p / 2), l] = currentgeneration[i, l];//انتقال نیمه ی اول ارایه ی اول به اریه ی 50
                        nextgeneration[i + (p / 2) + 1, l] = currentgeneration[i + 1, l];//انتقال نیمه ی اول ارایه ی دوم به نیمه ی اول اریه ی 50+1
                    }
                    else {
                        nextgeneration[i + (p / 2), l] = currentgeneration[i + 1, l];//انتقال نیمه ی دوم اریه ی اول به نمیه ی دوم ارایه ی50+1 
                        nextgeneration[i + (p / 2) + 1, l] = currentgeneration[i, l];//انتقال نیمه ی دوم اریه ی دوم به نمیه ی دوم ارایه ی50 
                    }


                }
                nextgeneration[i, r.Next(n)] = r.Next(n);//انجام عملیات mutation جهت تغییر تصادفی ژن ها
            }

            fit(nextgeneration);
            sort(nextgeneration);
            print(nextgeneration, l2);//چاپ جمعیت بعد از عملیات crossover
            currentgeneration = nextgeneration;//تغییر جای دو نسل
                if(nextgeneration[0, n] != 0) {
                repeat++; //تعداد تکرار
                goto label;
            }
                
        MessageBox.Show(repeat.ToString());
        }

        private void l1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void l2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void T1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
