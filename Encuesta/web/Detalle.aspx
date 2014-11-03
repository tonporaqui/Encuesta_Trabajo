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
        .style5
        {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style5">
    
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
        <br />
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="ID_ENCUESTA" DataSourceID="SqlEstado" 
            ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" 
            Width="325px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ID_ENCUESTA" HeaderText="NUMERO DE ENCUESTA" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ID_ENCUESTA" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" 
                    SortExpression="ESTADO" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlEstado" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ENCUESTAConnectionString %>" 
            DeleteCommand="DELETE FROM [ENCUESTAS] WHERE [ID_ENCUESTA] = @ID_ENCUESTA" 
            InsertCommand="INSERT INTO [ENCUESTAS] ([ESTADO]) VALUES (@ESTADO)" 
            SelectCommand="SELECT [ESTADO], [ID_ENCUESTA] FROM [ENCUESTAS] WHERE ([ID_ENCUESTA] = @ID_ENCUESTA)" 
            UpdateCommand="UPDATE [ENCUESTAS] SET [ESTADO] = @ESTADO WHERE [ID_ENCUESTA] = @ID_ENCUESTA">
            <DeleteParameters>
                <asp:Parameter Name="ID_ENCUESTA" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ESTADO" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="ID_ENCUESTA" QueryStringField="id" 
                    Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ESTADO" Type="String" />
                <asp:Parameter Name="ID_ENCUESTA" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="style5">
            <br />
            <strong>RESPUESTAS ITEM 1<br />
            </strong>
            <br />
        </div>
        <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="ID_ITEM1" DataSourceID="SqlItem1" 
            ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" 
            Width="325px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="UNO_RES_UNO" HeaderText="RESPUESTA 1" 
                    SortExpression="UNO_RES_UNO" />
                <asp:BoundField DataField="UNO_RES_DOS" HeaderText="RESPUESTA 2" 
                    SortExpression="UNO_RES_DOS" />
                <asp:BoundField DataField="UNO_RES_TRES" HeaderText="RESPUESTA 3" 
                    SortExpression="UNO_RES_TRES" />
                <asp:BoundField DataField="UNO_RES_CUATRO" HeaderText="RESPUESTA 4" 
                    SortExpression="UNO_RES_CUATRO" />
                <asp:BoundField DataField="UNO_RES_CINCO" HeaderText="RESPUESTA 5" 
                    SortExpression="UNO_RES_CINCO" />
                <asp:BoundField DataField="UNO_RES_SEIS" HeaderText="RESPUESTA 6" 
                    SortExpression="UNO_RES_SEIS" />
                <asp:BoundField DataField="UNO_RES_SIETE" HeaderText="RESPUESTA 7" 
                    SortExpression="UNO_RES_SIETE" />
                <asp:BoundField DataField="UNO_RES_OBS_D" HeaderText="OBSERVACION D" 
                    SortExpression="UNO_RES_OBS_D" />
                <asp:BoundField DataField="UNO_RES_OBS_E" HeaderText="OBSERVACION E" 
                    SortExpression="UNO_RES_OBS_E" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlItem1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ENCUESTAConnectionString %>" 
            DeleteCommand="DELETE FROM [ITEM_UNO] WHERE [ID_ITEM1] = @ID_ITEM1" 
            InsertCommand="INSERT INTO [ITEM_UNO] ([ID_ENCUESTA], [ENCUESTA_ID], [UNO_RES_UNO], [UNO_RES_DOS], [UNO_RES_TRES], [UNO_RES_CUATRO], [UNO_RES_CINCO], [UNO_RES_SEIS], [UNO_RES_SIETE], [UNO_RES_OBS_D], [UNO_RES_OBS_E]) VALUES (@ID_ENCUESTA, @ENCUESTA_ID, @UNO_RES_UNO, @UNO_RES_DOS, @UNO_RES_TRES, @UNO_RES_CUATRO, @UNO_RES_CINCO, @UNO_RES_SEIS, @UNO_RES_SIETE, @UNO_RES_OBS_D, @UNO_RES_OBS_E)" 
            SelectCommand="SELECT * FROM [ITEM_UNO] WHERE ([ID_ENCUESTA] = @ID_ENCUESTA)" 
            UpdateCommand="UPDATE [ITEM_UNO] SET  [UNO_RES_UNO] = @UNO_RES_UNO, [UNO_RES_DOS] = @UNO_RES_DOS, [UNO_RES_TRES] = @UNO_RES_TRES, [UNO_RES_CUATRO] = @UNO_RES_CUATRO, [UNO_RES_CINCO] = @UNO_RES_CINCO, [UNO_RES_SEIS] = @UNO_RES_SEIS, [UNO_RES_SIETE] = @UNO_RES_SIETE, [UNO_RES_OBS_D] = @UNO_RES_OBS_D, [UNO_RES_OBS_E] = @UNO_RES_OBS_E WHERE [ID_ITEM1] = @ID_ITEM1">
            <DeleteParameters>
                <asp:Parameter Name="ID_ITEM1" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_ENCUESTA" Type="Int32" />
                <asp:Parameter Name="ENCUESTA_ID" Type="Int32" />
                <asp:Parameter Name="UNO_RES_UNO" Type="String" />
                <asp:Parameter Name="UNO_RES_DOS" Type="String" />
                <asp:Parameter Name="UNO_RES_TRES" Type="String" />
                <asp:Parameter Name="UNO_RES_CUATRO" Type="String" />
                <asp:Parameter Name="UNO_RES_CINCO" Type="String" />
                <asp:Parameter Name="UNO_RES_SEIS" Type="String" />
                <asp:Parameter Name="UNO_RES_SIETE" Type="String" />
                <asp:Parameter Name="UNO_RES_OBS_D" Type="String" />
                <asp:Parameter Name="UNO_RES_OBS_E" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="ID_ENCUESTA" QueryStringField="id" 
                    Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_ENCUESTA" Type="Int32" />
                <asp:Parameter Name="ENCUESTA_ID" Type="Int32" />
                <asp:Parameter Name="UNO_RES_UNO" Type="String" />
                <asp:Parameter Name="UNO_RES_DOS" Type="String" />
                <asp:Parameter Name="UNO_RES_TRES" Type="String" />
                <asp:Parameter Name="UNO_RES_CUATRO" Type="String" />
                <asp:Parameter Name="UNO_RES_CINCO" Type="String" />
                <asp:Parameter Name="UNO_RES_SEIS" Type="String" />
                <asp:Parameter Name="UNO_RES_SIETE" Type="String" />
                <asp:Parameter Name="UNO_RES_OBS_D" Type="String" />
                <asp:Parameter Name="UNO_RES_OBS_E" Type="String" />
                <asp:Parameter Name="ID_ITEM1" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="style5">
            <br />
            <strong>RESPUESTA ITEM 2<br />
            </strong>
            <br />
        </div>
        <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="ID_ITEM2" DataSourceID="SqlItem2" 
            ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" 
            Width="325px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="DOS_RES_UNO" HeaderText="RESPUESTA 1" 
                    SortExpression="DOS_RES_UNO" />
                <asp:BoundField DataField="DOS_RES_DOS" HeaderText="RESPUESTA 2" 
                    SortExpression="DOS_RES_DOS" />
                <asp:BoundField DataField="DOS_RES_TRES" HeaderText="RESPUESTA 3" 
                    SortExpression="DOS_RES_TRES" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlItem2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ENCUESTAConnectionString %>" 
            DeleteCommand="DELETE FROM [ITEM_DOS] WHERE [ID_ITEM2] = @ID_ITEM2" 
            InsertCommand="INSERT INTO [ITEM_DOS] ([ID_ENCUESTA], [ENCUESTA_ID], [DOS_RES_UNO], [DOS_RES_DOS], [DOS_RES_TRES]) VALUES (@ID_ENCUESTA, @ENCUESTA_ID, @DOS_RES_UNO, @DOS_RES_DOS, @DOS_RES_TRES)" 
            SelectCommand="SELECT * FROM [ITEM_DOS] WHERE ([ID_ENCUESTA] = @ID_ENCUESTA)" 
            UpdateCommand="UPDATE [ITEM_DOS] SET [DOS_RES_UNO] = @DOS_RES_UNO, [DOS_RES_DOS] = @DOS_RES_DOS, [DOS_RES_TRES] = @DOS_RES_TRES WHERE [ID_ITEM2] = @ID_ITEM2">
            <DeleteParameters>
                <asp:Parameter Name="ID_ITEM2" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_ENCUESTA" Type="Int32" />
                <asp:Parameter Name="ENCUESTA_ID" Type="Int32" />
                <asp:Parameter Name="DOS_RES_UNO" Type="String" />
                <asp:Parameter Name="DOS_RES_DOS" Type="String" />
                <asp:Parameter Name="DOS_RES_TRES" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="ID_ENCUESTA" QueryStringField="id" 
                    Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_ENCUESTA" Type="Int32" />
                <asp:Parameter Name="ENCUESTA_ID" Type="Int32" />
                <asp:Parameter Name="DOS_RES_UNO" Type="String" />
                <asp:Parameter Name="DOS_RES_DOS" Type="String" />
                <asp:Parameter Name="DOS_RES_TRES" Type="String" />
                <asp:Parameter Name="ID_ITEM2" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <strong>RESPUESTA ITEM 3<br />
        </strong>
        <br />
        <asp:DetailsView ID="DetailsView5" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="ID_ITEM3" DataSourceID="SqlItem3" 
            ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" 
            Width="325px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="TRES_RES_UNO" HeaderText="RESPUESTA 1" 
                    SortExpression="TRES_RES_UNO" />
                <asp:BoundField DataField="TRES_RES_DOS" HeaderText="RESPUESTA 2" 
                    SortExpression="TRES_RES_DOS" />
                <asp:BoundField DataField="TRES_RES_TRES" HeaderText="RESPUESTA 3" 
                    SortExpression="TRES_RES_TRES" />
                <asp:BoundField DataField="TRES_RES_CUATRO" HeaderText="RESPUESTA 4" 
                    SortExpression="TRES_RES_CUATRO" />
                <asp:BoundField DataField="TRES_RES_CINCO" HeaderText="RESPUESTA 5" 
                    SortExpression="TRES_RES_CINCO" />
                <asp:BoundField DataField="TRES_RES_SEIS" HeaderText="RESPUESTA 6" 
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
        <asp:SqlDataSource ID="SqlItem3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ENCUESTAConnectionString %>" 
            DeleteCommand="DELETE FROM [ITEM_TRES] WHERE [ID_ITEM3] = @ID_ITEM3" 
            InsertCommand="INSERT INTO [ITEM_TRES] ([ID_ENCUESTA], [ENCUESTA_ID], [TRES_RES_UNO], [TRES_RES_DOS], [TRES_RES_TRES], [TRES_RES_CUATRO], [TRES_RES_CINCO], [TRES_RES_SEIS], [TRES_RES_OBS_GENERAL]) VALUES (@ID_ENCUESTA, @ENCUESTA_ID, @TRES_RES_UNO, @TRES_RES_DOS, @TRES_RES_TRES, @TRES_RES_CUATRO, @TRES_RES_CINCO, @TRES_RES_SEIS, @TRES_RES_OBS_GENERAL)" 
            SelectCommand="SELECT * FROM [ITEM_TRES] WHERE ([ID_ENCUESTA] = @ID_ENCUESTA)" 
            UpdateCommand="UPDATE [ITEM_TRES] SET  [TRES_RES_UNO] = @TRES_RES_UNO, [TRES_RES_DOS] = @TRES_RES_DOS, [TRES_RES_TRES] = @TRES_RES_TRES, [TRES_RES_CUATRO] = @TRES_RES_CUATRO, [TRES_RES_CINCO] = @TRES_RES_CINCO, [TRES_RES_SEIS] = @TRES_RES_SEIS, [TRES_RES_OBS_GENERAL] = @TRES_RES_OBS_GENERAL WHERE [ID_ITEM3] = @ID_ITEM3">
            <DeleteParameters>
                <asp:Parameter Name="ID_ITEM3" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_ENCUESTA" Type="Int32" />
                <asp:Parameter Name="ENCUESTA_ID" Type="Int32" />
                <asp:Parameter Name="TRES_RES_UNO" Type="String" />
                <asp:Parameter Name="TRES_RES_DOS" Type="String" />
                <asp:Parameter Name="TRES_RES_TRES" Type="String" />
                <asp:Parameter Name="TRES_RES_CUATRO" Type="String" />
                <asp:Parameter Name="TRES_RES_CINCO" Type="String" />
                <asp:Parameter Name="TRES_RES_SEIS" Type="String" />
                <asp:Parameter Name="TRES_RES_OBS_GENERAL" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="ID_ENCUESTA" QueryStringField="id" 
                    Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_ENCUESTA" Type="Int32" />
                <asp:Parameter Name="ENCUESTA_ID" Type="Int32" />
                <asp:Parameter Name="TRES_RES_UNO" Type="String" />
                <asp:Parameter Name="TRES_RES_DOS" Type="String" />
                <asp:Parameter Name="TRES_RES_TRES" Type="String" />
                <asp:Parameter Name="TRES_RES_CUATRO" Type="String" />
                <asp:Parameter Name="TRES_RES_CINCO" Type="String" />
                <asp:Parameter Name="TRES_RES_SEIS" Type="String" />
                <asp:Parameter Name="TRES_RES_OBS_GENERAL" Type="String" />
                <asp:Parameter Name="ID_ITEM3" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
