<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="ProjetoCliente.Detalhes" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>

<link rel="stylesheet" href="estilo.css" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Detalhes</title>
</head>
<body>
    <form runat="server">
        <div id="form1">
            <nav class="menu">
  <div class="underline"></div>
  <div class="underline"></div>
  <div class="underline"></div>
  <asp:Button Text="Cadastrar" ID="Button1"  class="btn btn-primary"   runat="server" OnClick="btnVoltar_Click1"/>
  <asp:Button Text="Listar" ID="Button2"  class="btn btn-primary"   runat="server" OnClick="Button2_Click" />           
  
</nav>
             <asp:HiddenField ID="idproduto" runat="server" />
            <table>
                

                <tr>
                    <td colspan="2">
                        <asp:Label Text="Nome Completo:" ID="txtUsuario" runat="server" class="fadeIn second"  placeholder=".form-control-lg" />
                        </td>
                    <td>
                        <asp:Label Text="" ID="txtnome" runat="server"  />
                    </td>
               </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label Text="E-mail:" runat="server" />
                    </td>
                    <td>
                        <asp:Label Text="" ID="txtemail" runat="server" />
                    </td>
               </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label Text="Senha:" runat="server" />
                    </td>
                    <td>
                        <asp:Label Text="" ID="txtsenha" runat="server" />
                    </td>
               </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label Text="Data de Nascimento:" runat="server" />
                    </td>
                    <td>
                        <asp:Label Text="" ID="txtdata" runat="server" />
                    </td>
               </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label Text="Contribuidor:" runat="server" />
                    </td>
                    <td>
                        <asp:Label Text="" ID="txtcontri" runat="server" />
                    </td>
               </tr>

                <tr>
                        <td colspan="2">
                        <asp:Label Text="" ID="lblMenssagemOK" runat="server" ForeColor="YellowGreen"/>
                     </td>
                 </tr>
            </table>

            <br />  <br />
            <asp:GridView ID="grid" runat="server"  placeholder=".form-control-lg" AutoGenerateColumns="false" >
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="Clientes" />

                    
                    <asp:TemplateField>
                        <ItemTemplate>
                                
                                <asp:Button Text="Detalhes" ID="btnSelecionar" class="btn btn-primary"  CommandArgument='<%# Eval("id") %>' runat="server" OnClick="btnSelecionar_Clik" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
