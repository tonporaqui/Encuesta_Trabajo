<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="GuardarEncuesta.aspx.cs" Inherits="GuardarResultados" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">




        .style3
        {
            text-align: left;
            width: 591px;
        }
        .style4
        {
            text-align: left;
            width: 118px;
        }
        .style1
        {
            text-align: left;
        }
        .style9
        {
            height: 23px;
        }
        .style10
        {}
        .style11
        {}
        .style12
        {
            text-align: center;
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
                    Guardar Encuesta&nbsp;&nbsp;&nbsp;&nbsp; </h1>
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
        <table align="center" class="style10">
            <tr>
                <td>
                    Guardando Encuesta.</td>
            </tr>
        </table>
        <br />
        <table align="center" class="style11">
            <tr>
                <td class="style12" colspan="2">
                    Item 1</td>
            </tr>
            <tr>
                <td>
                    1.- Calidad de Trabajo</td>
                <td style="margin-left: 40px">
                    <asp:Label ID="lblItem1_r1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    2.- Efectividad en el trabajo</td>
                <td style="margin-left: 80px">
                    <asp:Label ID="lblItem1_r2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    3.- Conocimientos tecnicos</td>
                <td style="margin-left: 160px">
                    <asp:Label ID="lblItem1_r3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Observacion D</td>
                <td style="margin-left: 200px">
                    <asp:Label ID="lblItem1_obsD" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Observacion E</td>
                <td style="margin-left: 240px">
                    <asp:Label ID="lblItem1_obsE" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    4.- Adaptabilidad en el trabajo</td>
                <td style="margin-left: 240px">
                    <asp:Label ID="lblItem1_r4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    5.- Organizacion del trabajo</td>
                <td style="margin-left: 280px">
                    <asp:Label ID="lblItem1_r5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    6.- Ejecucion del trabajo</td>
                <td style="margin-left: 280px">
                    <asp:Label ID="lblItem1_r6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    7.- Evaluacion del trabajo</td>
                <td style="margin-left: 280px">
                    <asp:Label ID="lblItem1_r7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table align="center" class="style11">
            <tr>
                <td colspan="2" style="text-align: center">
                    Item 2</td>
            </tr>
            <tr>
                <td>
                    1.- Planificacion</td>
                <td style="margin-left: 80px">
                    <asp:Label ID="lblItem2_r1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    2.- Ejecucion</td>
                <td style="margin-left: 80px">
                    <asp:Label ID="lblItem2_r2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    3.- Evaluacion y/o Control</td>
                <td style="margin-left: 80px">
                    <asp:Label ID="lblItem2_r3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table align="center" class="style11">
            <tr>
                <td colspan="2" style="text-align: center">
                    Item 3</td>
            </tr>
            <tr>
                <td>
                    1.- Puntualidad</td>
                <td>
                    <asp:Label ID="lblItem3_r1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    2.- Responsabilidad</td>
                <td style="margin-left: 40px">
                    <asp:Label ID="lblItem3_r2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    3.- Cooperacion en el trabajo</td>
                <td style="margin-left: 40px">
                    <asp:Label ID="lblItem3_r3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    4.- Disposicion en el trabajo</td>
                <td style="margin-left: 40px">
                    <asp:Label ID="lblItem3_r4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    5.- Creatividad</td>
                <td style="margin-left: 80px">
                    <asp:Label ID="lblItem3_r5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    6.- Integracion al grupo</td>
                <td style="margin-left: 120px">
                    <asp:Label ID="lblItem3_r6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Observacion General</td>
                <td style="margin-left: 160px">
                    <asp:Label ID="lblItem3_obsGeneral" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table align="center" class="style11">
            <tr>
                <td>
                    <asp:Button ID="btnGuardar" runat="server" onclick="btnGuardar_Click" 
                        Text="Guardar" />
                </td>
            </tr>
        </table>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
