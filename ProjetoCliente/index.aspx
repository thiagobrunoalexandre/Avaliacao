<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProjetoCliente.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>

<link rel="stylesheet" href="estilo.css" />
    <title>Cadastro de Clientes</title>
</head>
<body>

    <form  runat="server">
        
        <div id="form1">
            <nav class="menu">
  <div class="underline"></div>
  <div class="underline"></div>
  <div class="underline"></div>
  <asp:Button Text="Novo" ID="Button1" class="btn btn-primary" runat="server" OnClick="btnNovo" />
  <asp:Button Text="Salvar" ID="btnsalvar" class="btn btn-primary" runat="server" OnClick="btnsalvar_Click" />
  <asp:Button Text="Listar" ID="btnlistar" class="btn btn-primary" runat="server" OnClick="btnlistar_Click"/>
  <asp:Button Text="Detalhes" ID="btndetalhes" class="btn btn-primary" runat="server" OnClick="btndetalhes_Click" />
 
</nav>
             </div>

        <div class="form-group">
           <asp:HiddenField ID="idproduto" runat="server" />

            <table>
                <tr>
                    <td>
                        <asp:Label Text="Nome Completo" class="form-control" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtnome"  runat="server" OnTextChanged="txtnome_TextChanged" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Email" class="form-control" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtemail" runat="server" OnTextChanged="txtemail_TextChanged" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Senha" class="form-control" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtsenha" runat="server" OnTextChanged="txtsenha_TextChanged" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Data Nascimento" class="form-control" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtdata" runat="server" OnTextChanged="txtdata_TextChanged" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Contribuidor" class="form-control" runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtcontri" runat="server" OnTextChanged="txtcontri_TextChanged" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label Text="" ID="lblMenssagemOK" runat="server" ForeColor="YellowGreen"/>
                       
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label Text="" ID="lblSMessagemErro" runat="server" ForeColor="Red" />
                       
                    </td>
                    
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
