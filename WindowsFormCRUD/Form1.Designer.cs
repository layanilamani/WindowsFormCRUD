namespace WindowsFormCRUD
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
            this.dgvBatches = new System.Windows.Forms.DataGridView();
            this.tbBatch = new System.Windows.Forms.TextBox();
            this.btnAddBatch = new System.Windows.Forms.Button();
            this.lblBatch = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvBatches)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvBatches
            // 
            this.dgvBatches.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvBatches.Location = new System.Drawing.Point(12, 99);
            this.dgvBatches.Name = "dgvBatches";
            this.dgvBatches.Size = new System.Drawing.Size(292, 318);
            this.dgvBatches.TabIndex = 0;
            this.dgvBatches.SelectionChanged += new System.EventHandler(this.dgvBatches_SelectionChanged);
            // 
            // tbBatch
            // 
            this.tbBatch.Location = new System.Drawing.Point(99, 29);
            this.tbBatch.Name = "tbBatch";
            this.tbBatch.Size = new System.Drawing.Size(100, 20);
            this.tbBatch.TabIndex = 1;
            // 
            // btnAddBatch
            // 
            this.btnAddBatch.Location = new System.Drawing.Point(217, 26);
            this.btnAddBatch.Name = "btnAddBatch";
            this.btnAddBatch.Size = new System.Drawing.Size(75, 23);
            this.btnAddBatch.TabIndex = 2;
            this.btnAddBatch.Text = "Add";
            this.btnAddBatch.UseVisualStyleBackColor = true;
            this.btnAddBatch.Click += new System.EventHandler(this.btnAddBatch_Click);
            // 
            // lblBatch
            // 
            this.lblBatch.AutoSize = true;
            this.lblBatch.Location = new System.Drawing.Point(25, 36);
            this.lblBatch.Name = "lblBatch";
            this.lblBatch.Size = new System.Drawing.Size(35, 13);
            this.lblBatch.TabIndex = 3;
            this.lblBatch.Text = "Batch";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.tbBatch);
            this.groupBox1.Controls.Add(this.lblBatch);
            this.groupBox1.Controls.Add(this.btnAddBatch);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(326, 70);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Add Batch";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(820, 442);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dgvBatches);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvBatches)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvBatches;
        private System.Windows.Forms.TextBox tbBatch;
        private System.Windows.Forms.Button btnAddBatch;
        private System.Windows.Forms.Label lblBatch;
        private System.Windows.Forms.GroupBox groupBox1;
    }
}

