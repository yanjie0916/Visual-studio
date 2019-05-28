<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teaching.aspx.cs" Inherits="DB.Teaching" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-9FK9D18;Initial Catalog=localDB;Persist Security Info=True;User ID=yanjie;Password=yanjie017" DeleteCommand="DELETE FROM [Teaching] WHERE [Tid] = @Tid AND [Cid] = @Cid" InsertCommand="INSERT INTO [Teaching] ([Tid], [Cid], [teaTime], [teaLocation]) VALUES (@Tid, @Cid, @teaTime, @teaLocation)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Teaching]" UpdateCommand="UPDATE [Teaching] SET [teaTime] = @teaTime, [teaLocation] = @teaLocation WHERE [Tid] = @Tid AND [Cid] = @Cid">
                <DeleteParameters>
                    <asp:Parameter Name="Tid" Type="String" />
                    <asp:Parameter Name="Cid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Tid" Type="String" />
                    <asp:Parameter Name="Cid" Type="String" />
                    <asp:Parameter Name="teaTime" Type="String" />
                    <asp:Parameter Name="teaLocation" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="teaTime" Type="String" />
                    <asp:Parameter Name="teaLocation" Type="String" />
                    <asp:Parameter Name="Tid" Type="String" />
                    <asp:Parameter Name="Cid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-9FK9D18;Initial Catalog=localDB;Persist Security Info=True;User ID=yanjie;Password=yanjie017" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Teaching] WHERE (([Cid] LIKE '%' + @Cid + '%') OR ([teaLocation] LIKE '%' + @teaLocation + '%') OR ([teaTime] LIKE '%' + @teaTime + '%') OR ([Tid] LIKE '%' + @Tid + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Cid" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="teaLocation" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="teaTime" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="Tid" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Serch" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Tid,Cid" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Tid" HeaderText="Tid" ReadOnly="True" SortExpression="Tid" />
                    <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" SortExpression="Cid" />
                    <asp:BoundField DataField="teaTime" HeaderText="teaTime" SortExpression="teaTime" />
                    <asp:BoundField DataField="teaLocation" HeaderText="teaLocation" SortExpression="teaLocation" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Tid,Cid" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="Tid" HeaderText="Tid" ReadOnly="True" SortExpression="Tid" />
                    <asp:BoundField DataField="Cid" HeaderText="Cid" ReadOnly="True" SortExpression="Cid" />
                    <asp:BoundField DataField="teaTime" HeaderText="teaTime" SortExpression="teaTime" />
                    <asp:BoundField DataField="teaLocation" HeaderText="teaLocation" SortExpression="teaLocation" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />
        </div>
    </form>
</body>
</html>
