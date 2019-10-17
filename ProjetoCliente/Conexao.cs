using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoCliente
{
    public class Conexao
    {
        public string conec = "SERVER=localhost; DATABASE=clientedb; UID=root; PWD=; PORT=;";
        public MySqlConnection con = null;

        public void AbrirCon()
        {
            try
            {
                con = new MySqlConnection(conec);
                con.Open();
               
            }
            catch (Exception ex)
            {
                HttpContext.Current.Response.Write("Erro ao Conectar" + ex);

            }
        }
                public void FecharCon()
        {
            try
            {
                con = new MySqlConnection(conec);
                con.Close();
            }
            catch (Exception ex)
            {
                    HttpContext.Current.Response.Write("Erro ao fechar" + ex);

            }
        }

        
  
        
    }
}