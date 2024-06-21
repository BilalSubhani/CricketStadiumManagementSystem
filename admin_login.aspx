<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="DBProject.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    	<title>CRICKIFY</title>
	<link rel="icon" type="./image/jpg" href="./images/favicon-3.jpg"

	<link rel="stylesheet" type="text/css" href="sports.css"/>
	<link rel="stylesheet" type="text/css" href="button.css"/>
        <style type="text/css">
            .auto-style1 {
                margin-top: 16px;
            }
        </style>
</head>
<body style="background-color: #777777; background-image: url('./images/bg1.jpg'); background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed;">
    <form id="form1" runat="server">
        <div>
  

	<div class="container">
		<div class="centered2">
			<table border="0" width="35%" style="margin-left:auto; margin-right:auto;">
				<tr>
					<td>
						<h2 style="color:black; font-size:30px; text-align:center; opacity: 1;">
							ADMINISTRATOR LOGIN
						</h2>
					</td>
				</tr>
				<tr>
					<td>
						<h2 style="color:black; font-size:20px; text-align:center; opacity: 1;">
							<br>
								Login ID
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
        else
        {
            if (password.search("'") >= 0 || password.search("--") >= 0)
            {
                alert('Please Enter Password');


                return false;
            }
            return true;
        }

    }
                            </script>
								<asp:Button ID="btnSubmit" runat="server" Text="Sign In" onclick="Admin_Submit_Click" OnClientClick="javascript: return validation(); " BackColor="Black" BorderColor="Black" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="30px" Width="70px" />
								
						</h2>
					</td>
				</tr>

				<tr>
					<td>
							<div id="message" runat="server"  style="font-size: 18px; text-align:center; color:black" class="auto-style1">
								Please login valid account
							</div>
					</td>
				</tr>
		
			</table>
							
			
		</div>
	</div>

        </div>
    </form>
</body>
</html>
