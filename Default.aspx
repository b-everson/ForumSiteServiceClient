<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetForumUsers" TypeName="ForumUserServiceNS.ForumUserServiceClient"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetForumUser" TypeName="ForumUserServiceNS.ForumUserServiceClient">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="UserName" DataValueField="UserName" AutoPostBack="True">
        </asp:DropDownList>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="ObjectDataSource2" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Permissions" HeaderText="Permissions" SortExpression="Permissions" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Street1" HeaderText="Street1" SortExpression="Street1" />
                <asp:BoundField DataField="Street2" HeaderText="Street2" SortExpression="Street2" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
            </Fields>
        </asp:DetailsView>
    
        <asp:Button ID="Button1" runat="server" Text="Download Text File" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Download ShutterDowner.zip" />
    
    </div>
    </form>
</body>
</html>
