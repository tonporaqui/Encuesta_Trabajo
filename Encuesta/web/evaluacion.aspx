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
                        ConnectionString="<%$ ConnectionStrings:ENCUESTAConnectionString %>" SelectCommand="SELECT USUARIO.NOMBRE+' '+ USUARIO.APELLIDO AS APELLIDO, USUARIO.ID_USUARIO, GRUPOS.ID_ENCUESTADO, GRUPOS.ID_USUARIO AS Expr1, GRUPOS.ID_JEFE 
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
                        PostBackUrl="~/Item1.aspx" Text="Ir Evaluar" />
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID_ENCUESTA" DataSourceID="SqlDataSource2" 
            HorizontalAlign="Center">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="ID_ENCUESTA" 
                    DataNavigateUrlFormatString="Detalle.aspx?id={0}" DataTextField="ID_ENCUESTA" 
                    HeaderText="NUMERO ENCUESTA" />
                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" 
                    SortExpression="NOMBRE" />
                <asp:BoundField DataField="APELLIDO" HeaderText="APELLIDO" 
                    SortExpression="APELLIDO" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" 
                    SortExpression="ESTADO" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ENCUESTAConnectionString %>" 
            SelectCommand="SELECT us.NOMBRE, us.APELLIDO, encuestas.ID_ENCUESTA, encuestas.ESTADO, i1.UNO_RES_UNO, i1.UNO_RES_DOS, i1.UNO_RES_TRES, i1.UNO_RES_CUATRO, i1.UNO_RES_CINCO, i1.UNO_RES_SEIS, i1.UNO_RES_SIETE, i1.UNO_RES_OBS_D, i1.UNO_RES_OBS_E, i2.DOS_RES_UNO, i2.DOS_RES_DOS, i2.DOS_RES_TRES, i3.TRES_RES_UNO, i3.TRES_RES_DOS, i3.TRES_RES_TRES, i3.TRES_RES_CUATRO, i3.TRES_RES_CINCO, i3.TRES_RES_SEIS, i3.TRES_RES_OBS_GENERAL FROM ENCUESTAS AS encuestas INNER JOIN USUARIO AS us ON encuestas.ID_ENCUESTADO = us.ID_USUARIO INNER JOIN ITEM_UNO AS i1 ON encuestas.ID_ENCUESTA = i1.ENCUESTA_ID INNER JOIN ITEM_DOS AS i2 ON encuestas.ID_ENCUESTA = i2.ID_ENCUESTA INNER JOIN ITEM_TRES AS i3 ON encuestas.ID_ENCUESTA = i3.ENCUESTA_ID AND encuestas.ID_ENCUESTADO = @id_encuestado">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddliEncuestado" Name="id_encuestado" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="lblIDEncuestador" runat="server" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
