<%@ Page Language="C#"  Debug="true" AutoEventWireup="true" CodeFile="Item1.aspx.cs" Inherits="CrearEvaluacion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .style3
        {
            text-align: left;
            width: 578px;
        }
        .style4
        {
            text-align: left;
            width: 158px;
        }
        .style1
        {
            text-align: left;
        }
        .style5
        {}
        .style6
        {}
        .style7
        {
            width: 62px;
        }
        .style8
        {
            width: 49px;
        }
        .style9
        {
            height: 23px;
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
                    Ingreso Item 1 </h1>
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
                    ITEM 1</td>
            </tr>
        </table>
        <br />
        <br />
        <table align="center" class="style6">
            <tr>
                <td>
                    1.- Calidad de Trabajo</td>
                <td>
                    <asp:TextBox ID="txtR1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    2.- Efectividad en el Trabajo</td>
                <td>
                    <asp:TextBox ID="txtR2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    3.- Conocimientos Tecnicos</td>
                <td>
                    <asp:TextBox ID="txtR3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Observacion D</td>
                <td>
                    <asp:TextBox ID="txtObsD" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Observacion E</td>
                <td>
                    <asp:TextBox ID="txtObsE" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    4.- Adaptabilidad en el Trabajo</td>
                <td>
                    <asp:TextBox ID="txtR4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    5.- Organizacion del Trabajo</td>
                <td>
                    <asp:TextBox ID="txtR5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    6.- Ejecucion del Trabajo</td>
                <td>
                    <asp:TextBox ID="txtR6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    7.- Evaluacion del Trabajo</td>
                <td>
                    <asp:TextBox ID="txtR7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnItem1" runat="server" Text="Siguiente" 
                        PostBackUrl="~/Item2.aspx" />
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
