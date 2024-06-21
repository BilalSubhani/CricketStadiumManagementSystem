<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_login.aspx.cs" Inherits="DBProject.user_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    	<title>CRICKIFY</title>
	<link rel="icon" type="./image/jpg" href="./images/favicon-3.jpg"

	<link rel="stylesheet" type="text/css" href="sports.css"/>
	<link rel="stylesheet" type="text/css" href="button.css"/>

</head>
<body style="background-color: #777777; background-image: url('./images/bg1.jpg'); background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed;">
    <form id="form1" runat="server">
        <div>

			<h2 style="font-size:30px; text-align:center;">

                 Live Scores</h2>

			<h3> One Day Matches:</h3>

            <asp:GridView ID="ItemGrid1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            
            <asp:GridView ID="ItemGrid2" runat="server" BorderWidth="3px" CellPadding="4" CellSpacing="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="#E3EAEB" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

            <h3> Polling :</h3>
            <h4> <em>Polling Results</em> </h4>
            <asp:GridView ID="ItemGrid3" runat="server" BorderWidth="3px" CellPadding="4" CellSpacing="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="#E3EAEB" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>



            <h2 style="color:black; font-size:20px; text-align:center; opacity: 1;">
							<br>
								Email ID
								<br />
								<asp:TextBox ID="txtUserName" runat="server" BorderStyle="Solid" BorderWidth="2px" style="margin-left: 3px" />
							</br>
							<br/>
								Password
								<br/>
								<asp:TextBox ID="txtPWD" runat="server" TextMode="Password" BorderStyle="Solid" BorderWidth="2px"/>
								<br/>
								<br/>
                                
                <script type="text/javascript">
                    function validation() {
                        var username = document.getElementById('<%=txtUserName.ClientID %>').value;
        var password = document.getElementById('<%=txtPWD.ClientID %>').value;



                        if (username.search("'") >= 0 || username.search("--") >= 0) // sql injection characters
                        {
                            alert('Please Enter Username');
                            return false;
                        }
                        else {
                            if (password.search("'") >= 0 || password.search("--") >= 0) {
                                alert('Please Enter Password');


                                return false;
                            }
                            return true;
                        }

                    }
                </script>
								<asp:Button ID="btnSubmit" runat="server" Text="Sign In" onclick="User_Submit_Click" OnClientClick="javascript: return validation(); " BackColor="Black" BorderColor="Black" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="30px" Width="70px" />
								<div id="message" runat="server"  style="font-size: 18px; text-align:center; color:black" class="auto-style1">
								Please login valid account
							</div>
						</h2>


    </div>

    </form>
</body>
</html>