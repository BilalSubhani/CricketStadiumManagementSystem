<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DBProject.Home" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>CRICKIFY</title>
	<link rel="icon" type="./image/jpg" href="./images/favicon-3.jpg" />

	<link rel="stylesheet" type="text/css" href="sports.css"/>
	<link rel="stylesheet" type="text/css" href="button.css"/>
	
</head>
<body style="background-color: #777777; background-image: url('./images/bg1.jpg'); background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed;">
<form id="form1" runat="server">
	<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300&display=swap');
	</style>
	<center>
			<div class="container">
               		 <asp:Button ID="userbutton" runat="server" Text="User" style="width: 80px; font-family: 'Poppins', sans-serif; font-size: 1.1rem; color: white; background-color: #2D3134;" BorderColor="#808080" BorderWidth="1px" OnClick="userbutton_Click"/>
					 <asp:Button ID="adminbutton" runat="server" Text="Admin" style="width: 80px; font-family: 'Poppins', sans-serif; font-size: 1.1rem; color: white; background-color: #2D3134;" BorderColor="#808080" BorderWidth="1px" OnClick="adminbutton_Click"/>
			</div>

			<br>
		
		<table cellpadding="0" style="background-color: #2D3134; border-radius: 5%;" width="1200px">
			<tr>
				<td colspan="5" style="text-align: center;">
					<img src="./images/stadium.jpg" width="1200px" height="500rem" style="border-radius: 5%;" />
				</td>
			</tr>
		</table>
		<table border="0">
			<tr>
				<td style="width: 1200px; align-items: center;">
					<table border="0" cellpadding="5">
						<tr>
							<br>
							<td style="width: 1200px; text-align: center; font-size: xx-large; font-family: 'Poppins', sans-serif; color: white;">
							@ CRICKIFY 
							</td>	
						</tr>
						<tr>
							<td style="text-align: center; font-size: x-large; font-family: 'Poppins', sans-serif; color: white;">
							Find and book tickets for latest cricket matches here.
							</td>
						</tr>
						<tr style="text-align:center;">
							<table border="0" style="background-color: #2D3134;">
								<tr>
									<td colspan="6" style="width: 1280px;">&nbsp</td>
								</tr>
								<tr style="text-align:center;">
									<td width="30px"></td>
									<td width="250px"><a href="https://www.psl-t20.com/"><img style="border-radius: 10%; width: 20rem; height: 25rem; border: 0.1rem solid white;" src="./images/PSL.jpg"></a></td>
									<td width="25px"></td>
									<td rowspan="2" width="250px"><a href="https://www.icc-cricket.com/mens-schedule/list"><img style="border-radius: 10%; width: 25rem; height: 30rem; border: 0.1rem solid white;" src="./images/ball.jpg"></a></td>
									<td width="25px"></td>
									<td width="250px"><a href="https://www.pcb.com.pk/pjl-2022.html"><img style="border-radius: 10%; width: 20rem; height: 25rem; border: 0.1rem solid white;" src="./images/PJL.jpg"></a></td>
								</tr>
								<tr style="text-align:center;">
									<td></td>
									<td style="font-size: large; font-family: 'Poppins', sans-serif; color: white;">Pakistan Super League</td>
									<td></td><td></td>
									<td style="font-size: large; font-family: 'Poppins', sans-serif; color: white;">Pakistan Junior League</td>
								</tr>
								<tr style="text-align:center;">
									<td></td>
									<td style="font-size: 0.7rem; font-family: 'Poppins', sans-serif; color: white;">Results, Tickets and Polling.</td>
									<td></td><td></td><td></td>
									<td style="font-size: 0.7rem; font-family: 'Poppins', sans-serif; color: white;">Results, Tickets and Polling.</td>
								</tr>
								<tr style="text-align:center;">
									<td></td><td></td><td></td>
									<td style="margin-top: 10%; font-size: large; font-family: 'Poppins', sans-serif; color: white;">International Matches</td>
								</tr>
								<tr style="text-align:center;">
									<td></td><td></td><td></td>
									<td style="font-size: 0.7rem; font-family: 'Poppins', sans-serif; color: white;">From match tickets to results.</td>
								</tr>
							</table>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<br><hr><br>
		<table border="0" cellpadding="5">
			<tr>
				<td style="width: 1200px; text-align: center; font-size: xx-large; font-family: 'Poppins', sans-serif; color: white;"><b>WHAT'S OUR SERVICES? </b></td>	
			</tr>
			<tr>
				<td style="text-align: center; font-size: 1.2rem; font-family: 'Poppins', sans-serif; color: white;">
				We provide the tickets and polling services for latest cricket matches.
				</td>
			</tr>
			<tr>
				<td style="text-align: center; font-size: 0.6rem; font-family: 'Poppins', sans-serif; color: white;">
				Find match and polling results here and on sms using our sms subscription.
				</td>
			</tr>
		</table>
		<br>
		
		<br><hr><br>
	</center>
	<footer style="text-align: center; font-size: 0.6rem; font-family: 'Poppins', sans-serif; color: white;">
		19L1343 19L1367 &copy; Bilal Subhani, Moaz Awan
	</footer>
	<br>
</form>
</body>
</html>