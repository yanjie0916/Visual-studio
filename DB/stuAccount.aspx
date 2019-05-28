<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stuAccount.aspx.cs" Inherits="DB.stuAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-9FK9D18;Initial Catalog=localDB;Persist Security Info=True;User ID=yanjie;Password=yanjie017" DeleteCommand="DELETE FROM [stuAccount] WHERE [Sid] = @Sid" InsertCommand="INSERT INTO [stuAccount] ([Sid], [stuBalance], [stuWithdraw], [stuDeposit], [stuTransdate]) VALUES (@Sid, @stuBalance, @stuWithdraw, @stuDeposit, @stuTransdate)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [stuAccount]" UpdateCommand="UPDATE [stuAccount] SET [stuBalance] = @stuBalance, [stuWithdraw] = @stuWithdraw, [stuDeposit] = @stuDeposit, [stuTransdate] = @stuTransdate WHERE [Sid] = @Sid">
                <DeleteParameters>
                    <asp:Parameter Name="Sid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Sid" Type="String" />
                    <asp:Parameter Name="stuBalance" Type="String" />
                    <asp:Parameter Name="stuWithdraw" Type="String" />
                    <asp:Parameter Name="stuDeposit" Type="String" />
                    <asp:Parameter Name="stuTransdate" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="stuBalance" Type="String" />
                    <asp:Parameter Name="stuWithdraw" Type="String" />
                    <asp:Parameter Name="stuDeposit" Type="String" />
                    <asp:Parameter Name="stuTransdate" Type="String" />
                    <asp:Parameter Name="Sid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-9FK9D18;Initial Catalog=localDB;Persist Security Info=True;User ID=yanjie;Password=yanjie017" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [stuAccount] WHERE (([Sid] LIKE '%' + @Sid + '%') OR ([stuBalance] LIKE '%' + @stuBalance + '%')OR([stuDeposit] LIKE '%' + @stuDeposit + '%') OR ([stuTransdate] LIKE '%' + @stuTransdate + '%') OR ([stuWithdraw] LIKE '%' + @stuWithdraw + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Sid" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="stuBalance" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="stuDeposit" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="stuTransdate" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="stuWithdraw" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Sid" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Sid" HeaderText="Sid" ReadOnly="True" SortExpression="Sid" />
                    <asp:BoundField DataField="stuBalance" HeaderText="stuBalance" SortExpression="stuBalance" />
                    <asp:BoundField DataField="stuWithdraw" HeaderText="stuWithdraw" SortExpression="stuWithdraw" />
                    <asp:BoundField DataField="stuDeposit" HeaderText="stuDeposit" SortExpression="stuDeposit" />
                    <asp:BoundField DataField="stuTransdate" HeaderText="stuTransdate" SortExpression="stuTransdate" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Sid" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="Sid" HeaderText="Sid" ReadOnly="True" SortExpression="Sid" />
                    <asp:BoundField DataField="stuBalance" HeaderText="stuBalance" SortExpression="stuBalance" />
                    <asp:BoundField DataField="stuWithdraw" HeaderText="stuWithdraw" SortExpression="stuWithdraw" />
                    <asp:BoundField DataField="stuDeposit" HeaderText="stuDeposit" SortExpression="stuDeposit" />
                    <asp:BoundField DataField="stuTransdate" HeaderText="stuTransdate" SortExpression="stuTransdate" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />
        </div>
    </form>
</body>
</html>
