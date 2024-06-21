<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="polling.aspx.cs" Inherits="DBProject.polling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Registered User Login
    </title>
    	<link rel="icon" type="./image/jpg" href="./images/favicon-3.jpg" />

	<link rel="stylesheet" type="text/css" href="sports.css"/>
	<link rel="stylesheet" type="text/css" href="button.css"/>
           <style type="text/css"> .auto-style1 {
                margin-top: 30px;
            }
        </style>
</head>
<body style="background-color: #777777; background-image: url('./images/bg1.jpg'); background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed;">
    <form id="form1" runat="server">
    <div>


         <h3 style="color:green; font-size:40px; text-align:center; opacity: 1;"> ADD NEW POLLS HERE </h3>    

        <asp:GridView ID="ItemGrid1" runat="server" AutoGenerateColumns="True" EnableViewState="False"     CellPadding="3" HorizontalAlign="Center" ForeColor="#333333" Width="100%">

              <AlternatingRowStyle HorizontalAlign="Left" BackColor="#E3EAEB"/>
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
<RowStyle HorizontalAlign="left" VerticalAlign="Middle" />
    </asp:GridView>
            </div>

        <div class="container">
			<table border="0" width="35%" style="margin-left:auto; margin-right:auto;">

					<td>
						<h2 style="color:black; font-size:20px; text-align:center; opacity: 1;">

           <h4 style="text-align:left; color:white;" >To insert the data, type in the valid inputs in the following textbox and press the button</h4>


<p> 
        <p1 style ="color:white"> question:  </p1>
        <asp:TextBox runat="server"  ID="insrtquestion" Text=""  style="margin-top: 2px " CssClass="auto-style4"></asp:TextBox> <br/>
     <p1 style ="color:white"> option_a:  </p1>
        <asp:TextBox runat="server"  ID="insrtoption_a" Text="" style="margin-top: 4px" CssClass="auto-style6"></asp:TextBox> <br/>
       <p1 style ="color:white"> option_b:  </p1>
        <asp:TextBox runat="server"  ID="insrtoption_b" Text="" style="margin-top: 4px" CssClass="auto-style1" ></asp:TextBox> <br/>
    <p1 style ="color:white"> option_c:  </p1>
        <asp:TextBox runat="server"  ID="insrtoption_c" Text="" style="margin-top: 4px" CssClass="auto-style1" ></asp:TextBox> <br/>
        </p>    

<asp:Button runat="server" ID="button1" Text="Add New Tuple" OnClick="insert_tuple_click" style="margin-top: 5px" CssClass="auto-style6" /> <br /> <br />
</td>


                <div id="message" runat="server" style="font-style:italic ; color:white">
         Enter the valid inputs.
                </div>
            </table>
            </div>
    </form>
</body>
</html>
