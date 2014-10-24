<%@ Page Language="C#" AutoEventWireup="true" CodeFile="principal.aspx.cs" Inherits="principal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: left;
        }
        .style3
        {
            text-align: left;
            width: 698px;
        }
        .style4
        {
            text-align: left;
            width: 47px;
        }
        .style9
        {
            width: 225px;
            margin-left: 589px;
        }
        .style10
        {
            width: 114px;
        }
        .style11
        {
            width: 264px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style3">
                <h1>
                    Ingreso al sistema</h1>
            </td>
            <td class="style4">
                Usuario
            </td>
            <td class="style1">
                :
                <asp:Label ID="lblUsuario" runat="server"></asp:Label>
            </td>
            <td class="style1">
                <asp:Button ID="btnSalir" runat="server" onclick="btnSalir_Click" 
                    style="margin-left: 0px" Text="Salir" />
            </td>
        </tr>
    </table>
    <div>
    
        <br />
        <br />
        <br />
        <br />
    
        <br />
        <table class="style9">
            <% 
            string nose = "eva";
            if (Session["perfil"].ToString().Equals(nose))
           { 
         %>
            <tr>
                <td class="style11">
                    <asp:RadioButtonList ID="rbOpcion2" runat="server">
                        <asp:ListItem Value="Ver_Evaluacion">Ver Evaluacion</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style10" style="margin-left: 120px">
                    &nbsp;</td>
            </tr>
            <% }
           else
           { %>
            <tr>
                <td class="style11">
                    <asp:RadioButtonList ID="rbOpcion1" runat="server">
                        <asp:ListItem Value="Evaluar_Personal">Evaluar Personal</asp:ListItem>
                        <asp:ListItem Value="Listar_Evaluacion">Listar Evaluacion</asp:ListItem>
                        <asp:ListItem Value="Ver_Evaluacion">Ver Evaluacion</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style10" style="margin-left: 120px">
                    &nbsp;</td>
            </tr>
            <% } %>   
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style10" style="margin-left: 120px">
                    <asp:Button ID="Button1" runat="server" Text="Ir" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
