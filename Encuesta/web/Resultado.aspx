<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resultado.aspx.cs" Inherits="Resultado" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">





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
        .style1
        {
            text-align: left;
        }
        .style5
        {}
        .style6
        {
            width: 296px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table style="width:100%;">
        <tr>
            <td class="style3">
                <h1>
                    Evaluacion</h1>
            </td>
            <td class="style4">
                <strong>Usuario</strong>
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
    
        <br />
        <table align="center" class="style5">
            <tr>
                <td>
                    Tu puntaje</td>
                <td class="style6">
                    :<asp:Label ID="lblPuntaje" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Desempeño
                </td>
                <td class="style6">
                    :<asp:Label ID="lblDesempenio" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style6">
        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
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
