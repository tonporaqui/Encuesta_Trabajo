<%@ Page Language="C#" AutoEventWireup="true" CodeFile="evaluacion.aspx.cs" Inherits="evaluacion" %>

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
            width: 199px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style3">
                <h1>
                    Evaluacion</h1>
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
        <table align="center" class="style5">
            <tr>
                <td class="style6">
                    Seleccione Usuario a Evaluar</td>
                <td>
                    <asp:DropDownList ID="ddliEncuestado" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="APELLIDO" 
                        DataValueField="ID_ENCUESTADO">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="Data Source=R580-PC;Initial Catalog=ENCUESTA;Integrated Security=True" 
                        ProviderName="System.Data.SqlClient" SelectCommand="SELECT USUARIO.NOMBRE, USUARIO.APELLIDO, USUARIO.ID_USUARIO, GRUPOS.ID_ENCUESTADO, GRUPOS.ID_USUARIO AS Expr1, GRUPOS.ID_JEFE 
FROM GRUPOS
INNER JOIN USUARIO 
ON GRUPOS.ID_USUARIO = USUARIO.ID_USUARIO
AND GRUPOS.ID_JEFE = @id_usuario">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblIDEncuestador" Name="id_usuario" 
                                PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnIrEvaluar" runat="server" onclick="btnIrEvaluar_Click" 
                        PostBackUrl="~/Item1.aspx" Text="Ir" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblIDEncuestador" runat="server" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
