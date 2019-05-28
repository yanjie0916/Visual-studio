<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tutAccount.aspx.cs" Inherits="DB.tutAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-9FK9D18;Initial Catalog=localDB;Persist Security Info=True;User ID=yanjie;Password=yanjie017" DeleteCommand="DELETE FROM [tutAccount] WHERE [Tid] = @Tid" InsertCommand="INSERT INTO [tutAccount] ([Tid], [tutBalance], [tutWithdraw], [tutDeposit], [tutTransdate]) VALUES (@Tid, @tutBalance, @tutWithdraw, @tutDeposit, @tutTransdate)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tutAccount]" UpdateCommand="UPDATE [tutAccount] SET [tutBalance] = @tutBalance, [tutWithdraw] = @tutWithdraw, [tutDeposit] = @tutDeposit, [tutTransdate] = @tutTransdate WHERE [Tid] = @Tid">
                <DeleteParameters>
                    <asp:Parameter Name="Tid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Tid" Type="String" />
                    <asp:Parameter Name="tutBalance" Type="String" />
                    <asp:Parameter Name="tutWithdraw" Type="String" />
                    <asp:Parameter Name="tutDeposit" Type="String" />
                    <asp:Parameter Name="tutTransdate" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tutBalance" Type="String" />
                    <asp:Parameter Name="tutWithdraw" Type="String" />
                    <asp:Parameter Name="tutDeposit" Type="String" />
                    <asp:Parameter Name="tutTransdate" Type="String" />
                    <asp:Parameter Name="Tid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-9FK9D18;Initial Catalog=localDB;Persist Security Info=True;User ID=yanjie;Password=yanjie017" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tutAccount] WHERE (([Tid] LIKE '%' + @Tid + '%') AND ([tutBalance] LIKE '%' + @tutBalance + '%') OR ([tutDeposit] LIKE '%' + @tutDeposit + '%') OR ([tutTransdate] LIKE '%' + @tutTransdate + '%') OR ([tutWithdraw] LIKE '%' + @tutWithdraw + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Tid" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="tutBalance" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="tutDeposit" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="tutTransdate" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="tutWithdraw" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Tid" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Tid" HeaderText="Tid" ReadOnly="True" SortExpression="Tid" />
                    <asp:BoundField DataField="tutBalance" HeaderText="tutBalance" SortExpression="tutBalance" />
                    <asp:BoundField DataField="tutWithdraw" HeaderText="tutWithdraw" SortExpression="tutWithdraw" />
                    <asp:BoundField DataField="tutDeposit" HeaderText="tutDeposit" SortExpression="tutDeposit" />
                    <asp:BoundField DataField="tutTransdate" HeaderText="tutTransdate" SortExpression="tutTransdate" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Tid" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="Tid" HeaderText="Tid" ReadOnly="True" SortExpression="Tid" />
                    <asp:BoundField DataField="tutBalance" HeaderText="tutBalance" SortExpression="tutBalance" />
                    <asp:BoundField DataField="tutWithdraw" HeaderText="tutWithdraw" SortExpression="tutWithdraw" />
                    <asp:BoundField DataField="tutDeposit" HeaderText="tutDeposit" SortExpression="tutDeposit" />
                    <asp:BoundField DataField="tutTransdate" HeaderText="tutTransdate" SortExpression="tutTransdate" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
        </div>
    </form>
</body>
</html>
