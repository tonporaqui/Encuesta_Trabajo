<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Item2.aspx.cs" Inherits="Item2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



        .style3
        {
            text-align: left;
            width: 561px;
        }
        .style4
        {
            text-align: left;
            width: 127px;
        }
        .style1
        {
            text-align: left;
        }
        .style8
        {
            width: 57px;
        }
        .style12
        {
            text-align: left;
            width: 40px;
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
                    Ingreso Item 2&nbsp; </h1>
            </td>
            <td class="style4">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/principal.aspx">Principal</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                Usuario
            </td>
            <td class="style1">
                :
                <asp:Label ID="lblUsuario" runat="server"></asp:Label>
            </td>
            <td class="style12">
                <asp:Button ID="btnSalir" runat="server" onclick="btnSalir_Click" 
                    style="margin-left: 0px" Text="Salir" />
            </td>
        </tr>
    </table>
        <br />
        <table align="center" class="style5">
            <tr>
                <td>
                    <strong>Usuario a Evaluar</strong></td>
                <td>
                    :
        <asp:Label ID="lblNomEvaluado" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table align="center" class="style7">
            <tr>
                <td class="style8">
                    ITEM 2</td>
            </tr>
        </table>
        <br />
        <table align="center" class="style6">
            <tr>
                <td>
                    1.- Planificacion</td>
                <td>
                    <asp:TextBox ID="txtR1_item2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    2.- Ejecucion</td>
                <td>
                    <asp:TextBox ID="txtR2_item2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    3.- Evaluacion y/o Control</td>
                <td>
                    <asp:TextBox ID="txtR3_item2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnItem1" runat="server" Text="Siguiente" 
                        PostBackUrl="~/Item3.aspx" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="lblItem1_R1" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblItem1_R2" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblItem1_R3" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblItem1_R4" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblItem1_R5" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblItem1_R6" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblItem1_R7" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="txtAreaObservacionD" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="txtAreaObservacionE" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
