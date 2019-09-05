namespace NQUEEN_Genetic_
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.l1 = new System.Windows.Forms.ListBox();
            this.b1 = new System.Windows.Forms.Button();
            this.l2 = new System.Windows.Forms.ListBox();
            this.b2 = new System.Windows.Forms.Button();
            this.T1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // l1
            // 
            this.l1.FormattingEnabled = true;
            this.l1.Location = new System.Drawing.Point(63, 54);
            this.l1.Name = "l1";
            this.l1.Size = new System.Drawing.Size(165, 407);
            this.l1.TabIndex = 0;
            this.l1.SelectedIndexChanged += new System.EventHandler(this.l1_SelectedIndexChanged);
            // 
            // b1
            // 
            this.b1.Location = new System.Drawing.Point(107, 467);
            this.b1.Name = "b1";
            this.b1.Size = new System.Drawing.Size(75, 23);
            this.b1.TabIndex = 1;
            this.b1.Text = "current generation";
            this.b1.UseVisualStyleBackColor = true;
            this.b1.Click += new System.EventHandler(this.b1_Click);
            // 
            // l2
            // 
            this.l2.FormattingEnabled = true;
            this.l2.Location = new System.Drawing.Point(405, 54);
            this.l2.Name = "l2";
            this.l2.Size = new System.Drawing.Size(165, 407);
            this.l2.TabIndex = 2;
            this.l2.SelectedIndexChanged += new System.EventHandler(this.l2_SelectedIndexChanged);
            // 
            // b2
            // 
            this.b2.Location = new System.Drawing.Point(444, 467);
            this.b2.Name = "b2";
            this.b2.Size = new System.Drawing.Size(75, 23);
            this.b2.TabIndex = 3;
            this.b2.Text = "next generation";
            this.b2.UseVisualStyleBackColor = true;
            this.b2.Click += new System.EventHandler(this.b2_Click);
            // 
            // T1
            // 
            this.T1.Location = new System.Drawing.Point(251, 163);
            this.T1.Name = "T1";
            this.T1.Size = new System.Drawing.Size(100, 20);
            this.T1.TabIndex = 4;
            this.T1.TextChanged += new System.EventHandler(this.T1_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(271, 138);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(58, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "ENTER N:";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(660, 541);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.T1);
            this.Controls.Add(this.b2);
            this.Controls.Add(this.l2);
            this.Controls.Add(this.b1);
            this.Controls.Add(this.l1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListBox l1;
        private System.Windows.Forms.Button b1;
        private System.Windows.Forms.ListBox l2;
        private System.Windows.Forms.Button b2;
        private System.Windows.Forms.TextBox T1;
        private System.Windows.Forms.Label label1;
    }
}

