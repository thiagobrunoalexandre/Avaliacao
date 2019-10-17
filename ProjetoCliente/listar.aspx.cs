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
    public partial class listar : System.Web.UI.Page
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

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Detalhes.aspx");
        }
    }
}