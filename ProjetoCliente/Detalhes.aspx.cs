using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoCliente
{
    public partial class Detalhes : System.Web.UI.Page
    {
        Conexao con = new Conexao();
        Int32 id;
        protected void Page_Load(object sender, EventArgs e)
        {

            Listar();


        }

        private void Listar()
        {
            string sql;
            MySqlCommand cmd;
            MySqlDataAdapter da = new MySqlDataAdapter();
            DataTable dt = new DataTable();
            con.AbrirCon();
            sql = "SELECT * FROM cliente order by nome asc";
            cmd = new MySqlCommand(sql, con.con);
            da.SelectCommand = cmd;
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {

                grid.Visible = true;
                grid.DataSource = dt;
                grid.DataBind();

            }
            else
            {
                lblMenssagemOK.Text = "Não possui Cliente Cadastrado!!!";
                grid.Visible = false;

            }
            con.FecharCon();
        }
        protected void btnSelecionar_Clik(object sender, EventArgs e)
        {
            id = Convert.ToInt32((sender as Button).CommandArgument);
            string sql;
            MySqlCommand cmd;
            MySqlDataAdapter da = new MySqlDataAdapter();
            DataTable dt = new DataTable();

            con.AbrirCon();
            sql = "SELECT * FROM cliente where id = @id";
            cmd = new MySqlCommand(sql, con.con);
            cmd.Parameters.AddWithValue("@id", id);
            da.SelectCommand = cmd;
            da.Fill(dt);

            txtnome.Text = dt.Rows[0][1].ToString();
            txtemail.Text = dt.Rows[0][2].ToString();
            txtsenha.Text = dt.Rows[0][3].ToString();
            txtdata.Text = dt.Rows[0][4].ToString();
            txtcontri.Text = dt.Rows[0][5].ToString();


            con.FecharCon();

        }

        

        protected void btnVoltar_Click1(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("listar.aspx");
        }
    }
}