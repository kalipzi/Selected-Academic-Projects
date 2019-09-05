namespace jade
{
    partial class DriverLogin
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
            this.label2 = new System.Windows.Forms.Label();
            this.t4 = new System.Windows.Forms.TextBox();
            this.b3 = new System.Windows.Forms.Button();
            this.t3 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.b1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(40, 111);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(30, 13);
            this.label2.TabIndex = 9;
            this.label2.Text = "Pass";
            // 
            // t4
            // 
            this.t4.Location = new System.Drawing.Point(98, 104);
            this.t4.Name = "t4";
            this.t4.Size = new System.Drawing.Size(100, 20);
            this.t4.TabIndex = 8;
            this.t4.TextChanged += new System.EventHandler(this.t4_TextChanged);
            // 
            // b3
            // 
            this.b3.Location = new System.Drawing.Point(43, 173);
            this.b3.Name = "b3";
            this.b3.Size = new System.Drawing.Size(201, 27);
            this.b3.TabIndex = 7;
            this.b3.Text = "Sign In";
            this.b3.UseVisualStyleBackColor = true;
            this.b3.Click += new System.EventHandler(this.b3_Click);
            // 
            // t3
            // 
            this.t3.Location = new System.Drawing.Point(98, 60);
            this.t3.Name = "t3";
            this.t3.Size = new System.Drawing.Size(100, 20);
            this.t3.TabIndex = 6;
            this.t3.TextChanged += new System.EventHandler(this.t3_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(40, 67);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(29, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "User";
            // 
            // b1
            // 
            this.b1.Location = new System.Drawing.Point(-4, 231);
            this.b1.Name = "b1";
            this.b1.Size = new System.Drawing.Size(63, 27);
            this.b1.TabIndex = 10;
            this.b1.Text = "BACK";
            this.b1.UseVisualStyleBackColor = true;
            this.b1.Click += new System.EventHandler(this.b1_Click);
            // 
            // DriverLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 261);
            this.Controls.Add(this.b1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.t4);
            this.Controls.Add(this.b3);
            this.Controls.Add(this.t3);
            this.Controls.Add(this.label1);
            this.Name = "DriverLogin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "DriverLogin";
            this.Load += new System.EventHandler(this.DriverLogin_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox t4;
        private System.Windows.Forms.Button b3;
        private System.Windows.Forms.TextBox t3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button b1;
    }
}