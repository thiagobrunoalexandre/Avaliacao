<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listar.aspx.cs" Inherits="ProjetoCliente.listar" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>

<link rel="stylesheet" href="estilo.css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group">
            <nav class="menu">
  <div class="underline"></div>
  <div class="underline"></div>
  <div class="underline"></div>
  <asp:Button Text="Cadastrar" ID="Button1"  class="btn btn-primary"   runat="server" OnClick="Button1_Click" />
  <asp:Button Text="Detalhes" ID="Button2"  class="btn btn-primary"   runat="server" OnClick="Button2_Click"  />           
  
</nav>
            <asp:HiddenField ID="idproduto" runat="server" />
            <table>
                <tr>
                    <td colspan="2">
                
                        <asp:Label Text="Listagem de Clientes"  runat="server" />
                        </td>
                    </tr>
                        <tr>
                            <td colspan="2">
                                          
                        <asp:Label Text="" ID="lblMenssagemOK" runat="server" ForeColor="YellowGreen"/>
                       
                    </td>
                 </tr>
               
            </table>

            <br />  <br />
            <asp:GridView ID="grid" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="Nome" />
                    <asp:BoundField DataField="email" HeaderText="E-mail" />
                    <asp:BoundField DataField="senha" HeaderText="Senha" />
                    <asp:BoundField DataField="data" HeaderText="Data" />
                    <asp:BoundField DataField="contribuidor" HeaderText="Contribuidor" />
                   
                    
                </Columns>
            </asp:GridView>
            
        </div>
    </form>
</body>
</html>
