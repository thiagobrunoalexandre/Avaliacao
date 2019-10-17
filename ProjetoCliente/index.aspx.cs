using MySql.Data.MySqlClient;
using NPOI.SS.Formula.Functions;
using System;
using System.Activities;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoCliente
{
    public partial class index : System.Web.UI.Page
    {

        Conexao con = new Conexao();
     

        protected void Page_Load(object sender, EventArgs e)
        {
            DesabilitarCampos();
           
            btnsalvar.Enabled = false;
        }

       

        protected void btnsalvar_Click(object sender, EventArgs e)

        {
            if (txtnome.Text == "")
            {
                lblSMessagemErro.Text = "O Campo Nome é Obrigratório";
                txtnome.Focus();
                return;
            }
            if (txtemail.Text == "")
            {
                lblSMessagemErro.Text = "O Campo E-mail é Obrigratório";
                txtemail.Focus();
                return;
            }
            if (txtsenha.Text == "")
            {
                lblSMessagemErro.Text = "O Campo Senha é Obrigratório";
                txtsenha.Focus();
                return;
            }
            if (txtdata.Text == "")
            {
                lblSMessagemErro.Text = "O Campo Data é Obrigratório";
                txtdata.Focus();
                return;
            }
            if (txtcontri.Text == "")
            {
                lblSMessagemErro.Text = "O Campo Contribuidor é Obrigratório";
                txtcontri.Focus();
                return;
            }


            Salvar();
            
           
        }

        private void Salvar()
        {
            string sql;
            MySqlCommand cmd;

            con.AbrirCon();

            sql = "INSERT INTO cliente (nome, email, senha, data, contribuidor) VALUES (@nome, @email, @senha, @data, @contribuidor)";
            cmd = new MySqlCommand(sql, con.con);
            cmd.Parameters.AddWithValue("@nome", txtnome.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@senha", txtsenha.Text);
            cmd.Parameters.AddWithValue("@data", txtdata.Text);
            cmd.Parameters.AddWithValue("@contribuidor", txtcontri.Text);

            cmd.ExecuteNonQuery();
            LimparCampos();
            lblMenssagemOK.Text = "Salvo Com Sucesso!!";
          
            con.FecharCon();
            btnsalvar.Enabled = false;
        }

        private void LimparCampos()
        {
            txtnome.Text = "";
            txtemail.Text = "";
            txtsenha.Text = "";
            txtdata.Text = "";
            txtcontri.Text = "";
            lblMenssagemOK.Text = "";
        }
        protected void btnNovo(object sender, EventArgs e)
        {
            btnsalvar.Enabled = true;
            LimparCampos();
            HabilitarCampos();
        }

        protected void txtdata_TextChanged(object sender, EventArgs e)
        {
            lblSMessagemErro.Text="";
        }

        protected void txtnome_TextChanged(object sender, EventArgs e)
        {
            lblSMessagemErro.Text = "";
        }

        protected void txtemail_TextChanged(object sender, EventArgs e)
        {
            lblSMessagemErro.Text = "";
        }

        protected void txtsenha_TextChanged(object sender, EventArgs e)
        {
            lblSMessagemErro.Text = "";
        }

        protected void txtcontri_TextChanged(object sender, EventArgs e)
        {
            lblSMessagemErro.Text = "";
        }
        private void HabilitarCampos()
        {
            txtnome.Enabled = true;
            txtemail.Enabled = true;
            txtsenha.Enabled = true;
            txtdata.Enabled = true;
            txtcontri.Enabled = true;
        }
        private void DesabilitarCampos()
        {
            txtnome.Enabled = false;
            txtemail.Enabled = false;
            txtsenha.Enabled = false;
            txtdata.Enabled = false;
            txtcontri.Enabled = false;
        }
       
        protected void btnlistar_Click(object sender, EventArgs e)
        {
            Response.Redirect("listar.aspx");
        }

        protected void btndetalhes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Detalhes.aspx");

        }
    }
}