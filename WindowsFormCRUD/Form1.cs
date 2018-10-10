using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Data.SqlClient;


namespace WindowsFormCRUD
{

    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            GetBatches();
        }

        private void GetBatches()
        {
            var conn = new SqlConnection(MyHelper.Connection);
            conn.Open();

            var command = new SqlCommand("SELECT * FROM Batches", conn);
            var da = new SqlDataAdapter();
            da.SelectCommand = command;

            var ds = new DataSet();
            da.Fill(ds);

            var dt = ds.Tables[0];
            conn.Close();
            dgvBatches.DataSource = dt.DefaultView;
        }

        private void btnAddBatch_Click(object sender, EventArgs e)
        {
            if (tbBatch.Text != "")
            {
                var conn = new SqlConnection(MyHelper.Connection);
                conn.Open();

                var sql = "";

                if (Id > 0)
                {
                    sql = "UPDATE batches SET Name='" + tbBatch.Text + "' WHERE Id=" + Id;
                }
                else
                {
                    sql = "INSERT INTO Batches VALUES('" + tbBatch.Text + "')";
                }
                var comm = new SqlCommand(sql, conn);
                comm.ExecuteNonQuery();
                conn.Close();

                GetBatches();

                Id = 0;
                tbBatch.Text = "";
                btnAddBatch.Text = "Add";
            }
        }

        int Id = 0;

        private void dgvBatches_SelectionChanged(object sender, EventArgs e)
        {
            if (dgvBatches.SelectedRows.Count > 0)
            {
                var selectedrow = dgvBatches.SelectedRows[0];

                Id = Convert.ToInt32(selectedrow.Cells[0].Value);
                var batchcode = selectedrow.Cells[1].Value;

                tbBatch.Text = batchcode.ToString();

                btnAddBatch.Text = "Update";
            }
        }
    }
}