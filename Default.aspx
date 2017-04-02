<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type = "text/javascript" src = "js/main.js"></script>
    <link rel = "stylesheet" type = "text/css" href = "css/main.css">
    <link rel = "stylesheet" href = "css/bootstrap.min.css">
    <link rel = "stylesheet" href = "css/bootstrap.css">
    <script src="js/bootstrap.min.js"></script>
</head>
<body style = "bg-color">
    <div style = "text-align:center;">
        <form id = "form1" runat = "server">
            <div>
                <br />
                <h1>SQL 指令</h1>
            </div>
            <div style = "position:relative; left : 33%; text-align:left;" class = "div-topic">

                                <h2>輸入 : </h2>
                <br />
            </div>
            <div style = "text-align:center;">
             <asp:TextBox ID="txtSQL" runat="server" Height = "200px" TextMode="MultiLine"  Width="50%">SELECT * FROM Students</asp:TextBox>
                                <br />
                                <br />
                                    <asp:Button ID="Button1" runat="server" Text="Search" CssClass = "btn btn-primary btn-wdt" OnClick="Button1_Click" />
            </div>           
            <div style = "position:relative; left : 33%; text-align:left;" class = "div-topic">
                <br /><!-- 2 -->
                                <h2>輸出 : </h2>
                <br />
            </div>
            <asp:Panel ID="Panel1" runat="server">
            <div class ="alert alert-info" style = "text-align:center; width:50%; margin:0 auto;">
            <asp:Label ID="Label1" runat="server" style =" font-size:25px;" ForeColor="#31708F"></asp:Label>
                <br />
                <span style =" font-size:25px;" >檢視</span><br />
                <br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" GridLines="None" ItemStyle-HorizontalAlign="Center" Width="50%" HorizontalAlign="Center">
                <FooterStyle />
                <RowStyle />
                <PagerStyle />
                <SelectedRowStyle/>
                <HeaderStyle/>
            </asp:GridView>
                <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
            <hr />
            <span style =" font-size:25px;" >記錄數</span> <br />
            <asp:Label ID="lblOutput" runat="server" style =" font-size:25px;" ForeColor="#31708F" Text="0"></asp:Label>
            </div>
            </asp:Panel>
                <br />
            <asp:Panel ID="Panel2" runat="server" Visible="False">
            <div class ="alert alert-danger" style = "text-align:left; width:50%; margin:0 auto;">
                <br />
                <asp:Label ID="Label2" runat="server" style =" font-size:25px;" ForeColor="#A94442">
               </asp:Label>
                <br />
            </div>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" Visible="False">
                <br />
            <div class ="alert alert-default" style = "text-align:left; width:50%; margin:0 auto;">
                <br />
                <asp:Label ID="Label3" runat="server" style =" font-size:25px;" ForeColor="#333333">
               </asp:Label>
                <br />
            </div>
            </asp:Panel>
        </form>
    </div>
</body>

</html>
