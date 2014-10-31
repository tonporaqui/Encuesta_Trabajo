<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detalle.aspx.cs" Inherits="Detalle" %>

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
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table style="width:100%;">
        <tr>
            <td class="style3">
                <h1>
                    Detalle</h1>
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
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="ID_ENCUESTA" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" 
            SkinID="s" Width="350px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ID_ENCUESTA" HeaderText="NUMERO ENCUESTA" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ID_ENCUESTA" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" 
                    SortExpression="ESTADO" />
                <asp:BoundField DataField="UNO_RES_UNO" HeaderText="RESPUESTA 1 ITEM 1" 
                    SortExpression="UNO_RES_UNO" />
                <asp:BoundField DataField="UNO_RES_DOS" HeaderText="RESPUESTA 2 ITEM 1" 
                    SortExpression="UNO_RES_DOS" />
                <asp:BoundField DataField="UNO_RES_TRES" HeaderText="RESPUESTA 3 ITEM 1" 
                    SortExpression="UNO_RES_TRES" />
                <asp:BoundField DataField="UNO_RES_CUATRO" HeaderText="RESPUESTA 4 ITEM 1" 
                    SortExpression="UNO_RES_CUATRO" />
                <asp:BoundField DataField="UNO_RES_CINCO" HeaderText="RESPUESTA 5 ITEM 1" 
                    SortExpression="UNO_RES_CINCO" />
                <asp:BoundField DataField="UNO_RES_SEIS" HeaderText="RESPUESTA 6 ITEM 1" 
                    SortExpression="UNO_RES_SEIS" />
                <asp:BoundField DataField="UNO_RES_SIETE" HeaderText="RESPUESTA 7 ITEM 1" 
                    SortExpression="UNO_RES_SIETE" />
                <asp:BoundField DataField="UNO_RES_OBS_D" HeaderText="OBSERVACION D" 
                    SortExpression="UNO_RES_OBS_D" />
                <asp:BoundField DataField="UNO_RES_OBS_E" HeaderText="OBSERVACION E" 
                    SortExpression="UNO_RES_OBS_E" />
                <asp:BoundField DataField="DOS_RES_UNO" HeaderText="RESPUESTA 1 ITEM 2" 
                    SortExpression="DOS_RES_UNO" />
                <asp:BoundField DataField="DOS_RES_DOS" HeaderText="RESPUESTA 2 ITEM 2" 
                    SortExpression="DOS_RES_DOS" />
                <asp:BoundField DataField="DOS_RES_TRES" HeaderText="RESPUESTA 3 ITEM 2" 
                    SortExpression="DOS_RES_TRES" />
                <asp:BoundField DataField="TRES_RES_UNO" HeaderText="RESPUESTA 1 ITEM 3" 
                    SortExpression="TRES_RES_UNO" />
                <asp:BoundField DataField="TRES_RES_DOS" HeaderText="RESPUESTA 2 ITEM 3" 
                    SortExpression="TRES_RES_DOS" />
                <asp:BoundField DataField="TRES_RES_TRES" HeaderText="RESPUESTA 3 ITEM 3" 
                    SortExpression="TRES_RES_TRES" />
                <asp:BoundField DataField="TRES_RES_CUATRO" HeaderText="RESPUESTA 4 ITEM 3" 
                    SortExpression="TRES_RES_CUATRO" />
                <asp:BoundField DataField="TRES_RES_CINCO" HeaderText="RESPUESTA 5 ITEM 3" 
                    SortExpression="TRES_RES_CINCO" />
                <asp:BoundField DataField="TRES_RES_SEIS" HeaderText="RESPUESTA 6 ITEM 3" 
                    SortExpression="TRES_RES_SEIS" />
                <asp:BoundField DataField="TRES_RES_OBS_GENERAL" 
                    HeaderText="OBSERVACION GENERAL" SortExpression="TRES_RES_OBS_GENERAL" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ENCUESTAConnectionString %>" 
            DeleteCommand="DELETE FROM [ENCUESTAS] WHERE [ID_ENCUESTA] = @ID_ENCUESTA" 
            InsertCommand="INSERT INTO [ENCUESTAS] ([ID_USUARIO], [ID_JEFE], [ID_ENCUESTADO], [ESTADO]) VALUES (@ID_USUARIO, @ID_JEFE, @ID_ENCUESTADO, @ESTADO)" 
            SelectCommand="SELECT us.NOMBRE, us.APELLIDO, encuestas.ID_ENCUESTA,encuestas.ID_ENCUESTADO,encuestas.ID_JEFE,encuestas.ID_USUARIO, encuestas.ESTADO, i1.UNO_RES_UNO, i1.UNO_RES_DOS, i1.UNO_RES_TRES, i1.UNO_RES_CUATRO, i1.UNO_RES_CINCO, i1.UNO_RES_SEIS, i1.UNO_RES_SIETE, i1.UNO_RES_OBS_D, i1.UNO_RES_OBS_E, i2.DOS_RES_UNO, i2.DOS_RES_DOS, i2.DOS_RES_TRES, i3.TRES_RES_UNO, i3.TRES_RES_DOS, i3.TRES_RES_TRES, i3.TRES_RES_CUATRO, i3.TRES_RES_CINCO, i3.TRES_RES_SEIS, i3.TRES_RES_OBS_GENERAL FROM ENCUESTAS AS encuestas INNER JOIN USUARIO AS us ON encuestas.ID_ENCUESTADO = us.ID_USUARIO INNER JOIN ITEM_UNO AS i1 ON encuestas.ID_ENCUESTA = i1.ENCUESTA_ID INNER JOIN ITEM_DOS AS i2 ON encuestas.ID_ENCUESTA = i2.ID_ENCUESTA INNER JOIN ITEM_TRES AS i3 ON encuestas.ID_ENCUESTA = i3.ENCUESTA_ID AND encuestas.ID_ENCUESTA = @ID_ENCUESTA" 
            
            UpdateCommand="UPDATE [ENCUESTAS] SET [ID_USUARIO] = @ID_USUARIO, [ID_JEFE] = @ID_JEFE, [ID_ENCUESTADO] = @ID_ENCUESTADO, [ESTADO] = @ESTADO WHERE [ID_ENCUESTA] = @ID_ENCUESTA">
            <DeleteParameters>
                <asp:Parameter Name="ID_ENCUESTA" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_USUARIO" Type="Int32" />
                <asp:Parameter Name="ID_JEFE" Type="Int32" />
                <asp:Parameter Name="ID_ENCUESTADO" Type="Int32" />
                <asp:Parameter Name="ESTADO" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="ID_ENCUESTA" QueryStringField="id" 
                    Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_USUARIO" Type="Int32" />
                <asp:Parameter Name="ID_JEFE" Type="Int32" />
                <asp:Parameter Name="ID_ENCUESTADO" Type="Int32" />
                <asp:Parameter Name="ESTADO" Type="String" />
                <asp:Parameter Name="ID_ENCUESTA" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
