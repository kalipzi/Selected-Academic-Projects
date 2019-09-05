namespace jade
{
    partial class PTRequest
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
            this.c1 = new System.Windows.Forms.ComboBox();
            this.b1 = new System.Windows.Forms.Button();
            this.c2 = new System.Windows.Forms.ComboBox();
            this.c3 = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.c4 = new System.Windows.Forms.ComboBox();
            this.b3 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // c1
            // 
            this.c1.FormattingEnabled = true;
            this.c1.Location = new System.Drawing.Point(82, 42);
            this.c1.Name = "c1";
            this.c1.Size = new System.Drawing.Size(121, 21);
            this.c1.TabIndex = 0;
            this.c1.SelectedIndexChanged += new System.EventHandler(this.c1_SelectedIndexChanged);
            // 
            // b1
            // 
            this.b1.Location = new System.Drawing.Point(108, 197);
            this.b1.Name = "b1";
            this.b1.Size = new System.Drawing.Size(75, 23);
            this.b1.TabIndex = 1;
            this.b1.Text = "NEXT";
            this.b1.UseVisualStyleBackColor = true;
            this.b1.Click += new System.EventHandler(this.b1_Click);
            // 
            // c2
            // 
            this.c2.FormattingEnabled = true;
            this.c2.Location = new System.Drawing.Point(82, 78);
            this.c2.Name = "c2";
            this.c2.Size = new System.Drawing.Size(121, 21);
            this.c2.TabIndex = 2;
            this.c2.SelectedIndexChanged += new System.EventHandler(this.c2_SelectedIndexChanged);
            // 
            // c3
            // 
            this.c3.FormattingEnabled = true;
            this.c3.Location = new System.Drawing.Point(82, 115);
            this.c3.Name = "c3";
            this.c3.Size = new System.Drawing.Size(121, 21);
            this.c3.TabIndex = 3;
            this.c3.SelectedIndexChanged += new System.EventHandler(this.c3_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(23, 50);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(38, 13);
            this.label2.TabIndex = 5;
            this.label2.Text = "stating";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(18, 86);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(58, 13);
            this.label3.TabIndex = 6;
            this.label3.Text = "destination";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(23, 123);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(40, 13);
            this.label4.TabIndex = 7;
            this.label4.Text = "degree";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(23, 156);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(40, 13);
            this.label1.TabIndex = 8;
            this.label1.Text = "gender";
            // 
            // c4
            // 
            this.c4.FormattingEnabled = true;
            this.c4.Location = new System.Drawing.Point(82, 148);
            this.c4.Name = "c4";
            this.c4.Size = new System.Drawing.Size(121, 21);
            this.c4.TabIndex = 9;
            this.c4.SelectedIndexChanged += new System.EventHandler(this.c4_SelectedIndexChanged);
            // 
            // b3
            // 
            this.b3.Location = new System.Drawing.Point(12, 226);
            this.b3.Name = "b3";
            this.b3.Size = new System.Drawing.Size(49, 23);
            this.b3.TabIndex = 10;
            this.b3.Text = "BACK";
            this.b3.UseVisualStyleBackColor = true;
            this.b3.Click += new System.EventHandler(this.b3_Click);
            // 
            // PTRequest
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 261);
            this.Controls.Add(this.b3);
            this.Controls.Add(this.c4);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.c3);
            this.Controls.Add(this.c2);
            this.Controls.Add(this.b1);
            this.Controls.Add(this.c1);
            this.Name = "PTRequest";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "PTRequest";
            this.Load += new System.EventHandler(this.PTRequest_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox c1;
        private System.Windows.Forms.Button b1;
        private System.Windows.Forms.ComboBox c2;
        private System.Windows.Forms.ComboBox c3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox c4;
        private System.Windows.Forms.Button b3;
    }
}