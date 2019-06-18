<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintPage.aspx.cs" Inherits="PrintPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 713px;
        }
        .auto-style3 {
            width: 653px;
        }
    </style>
    <script>
        function printthispage() {
            var getpnl = document.getElementById("<%=PnlPrint.ClientID%>");
            var MainWindow = window.open('', '', 'height=500,width=800');
            MainWindow.document.write("<html><head><title>Print Page</title>");
            MainWindow.document.write("</head><body>");
            MainWindow.document.write(getpnl.innerHTML);
            MainWindow.document.write("</body></html>");
            MainWindow.document.close();
            setTimeout(function () { 
                MainWindow.print();
            }, 500);
            return false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="PnlPrint" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Research Credit: <a href="http://registry.conquerchiari.org/">http://registry.conquerchiari.org/</a></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Percent Of Females Registered On Conquer Chiari</td>
                    <td class="auto-style3">Percent Of Males Registered On Conquer Chiari</td>
                    <td>Highest Percent Age Group With Chiari&#39;s Registered 40-49</td>
                </tr>
                <tr>
                    <td class="auto-style2">81%</td>
                    <td class="auto-style3">14%</td>
                    <td>25.5%</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Button ID="BtnPrint" runat="server" OnClientClick="return printthispage();" Text="Print This Page" />
    </form>
</body>
</html>
