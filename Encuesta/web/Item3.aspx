<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="Item3.aspx.cs" Inherits="Item3" %>

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
        .style9
        {
            height: 23px;
        }
        .style8
        {
            width: 56px;
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
                <td class="style9">
                    <strong>Usuario a Evaluar</strong></td>
                <td class="style9">
                    :
        <asp:Label ID="lblNomEvaluado" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table align="center" class="style7">
            <tr>
                <td class="style8">
                    ITEM 3</td>
            </tr>
        </table>
        <br />
        <table align="center" class="style6">
            <tr>
                <td>
                    1.- Puntualidad</td>
                <td>
                    <asp:TextBox ID="txtR1_item3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    2.- Responsabilidad</td>
                <td>
                    <asp:TextBox ID="txtR2_item3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    3.- Cooperacion en el trabajo</td>
                <td>
                    <asp:TextBox ID="txtR3_item3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    4.- Disposicion en el trabajo <td>
                    <asp:TextBox ID="txtR4_item3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    5.- Creatividad       5.- Creatividad</td>
                <td>
                    <asp:TextBox ID="txtR5_item3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>6.-&nbsp; Integracion 6.-&nbsp; Integracion al grupo</td>
                <td>
                    <asp:TextBox ID="txtR6_item3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Observacion General</td>
                <td>
                    <asp:TextBox ID="txtObsGeneral" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnItem1" runat="server" Text="Siguiente" 
                        PostBackUrl="~/GuardarEncuesta.aspx" />
                </td>
            </tr>
        </table>
    
    &nbsp;&nbsp;&nbsp;
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
        <asp:Label ID="lblItem2_R1" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblItem2_R2" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblItem2_R3" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
