<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="normal_user_manager.aspx.cs" Inherits="DBProject.normal_user_manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Normal User Manager</title>
   <link rel="icon" type="./image/jpg" href="./images/favicon-3.jpg" />

	<link rel="stylesheet" type="text/css" href="sports.css"/>
	<link rel="stylesheet" type="text/css" href="button.css"/>
        <style type="text/css">
            .auto-style1 {
                margin-top: 30px;
            }
        </style>
</head>
<body style="background-color: #777777; background-image: url('./images/bg1.jpg'); background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed;">
    <form id="form1" runat="server">
    <div>

        <h3 style="color:green; font-size:40px; text-align:center; opacity: 1;"> NORMAL USER MANGER TABLES </h3>    
              	             	

         <asp:GridView ID="ItemGrid1" runat="server" CellPadding="4" ForeColor="#333333" Width="100%">
              <AlternatingRowStyle HorizontalAlign="Left" BackColor="#E3EAEB"/>
             <EditRowStyle BackColor="#2461BF" />
             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#EFF3FB" />
             <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F5F7FB" />
             <SortedAscendingHeaderStyle BackColor="#6D95E1" />
             <SortedDescendingCellStyle BackColor="#E9EBEF" />
             <SortedDescendingHeaderStyle BackColor="#4870BE" />
         </asp:GridView>
         <asp:GridView ID="ItemGrid2" runat="server" CellPadding="3" Width="100%">
          <AlternatingRowStyle HorizontalAlign="Left" BackColor="#E3EAEB"/>
             <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
             <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
             <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
             <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
             <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
             <SortedAscendingCellStyle BackColor="#F4F4FD" />
             <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
             <SortedDescendingCellStyle BackColor="#D8D8F0" />
             <SortedDescendingHeaderStyle BackColor="#3E3277" />
         </asp:GridView>
            
        <asp:GridView ID="ItemGrid" runat="server" AutoGenerateColumns="False" EnableViewState="False" OnRowEditing="ItemGrid_RowEditing" OnRowUpdating="ItemGrid_RowUpdating" OnRowCancelingEdit="ItemGrid_RowCancelingEdit" OnRowDeleting="ItemGrid_RowDeleting" CellPadding="3" HorizontalAlign="Center" ForeColor="#333333" Width="100%">
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
          
  <Columns>
      <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />

             <asp:TemplateField HeaderText="id" HeaderStyle-HorizontalAlign="center">
            <EditItemTemplate>
            <asp:Label ID="txtid" runat="server" Text='<%# Bind("id") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
            <asp:Label ID="lblid" runat="server" Text='<%# Bind("id") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


      

      <asp:TemplateField HeaderText="fname" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtfname"  runat="server" Text='<%# Bind("fname") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblfname" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>

      <asp:TemplateField HeaderText="lname" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtlname"  runat="server" Text='<%# Bind("lname") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lbllname" runat="server" Text='<%# Bind("lname") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>

       <asp:TemplateField HeaderText="ticket_id" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtticketid"  runat="server" Text='<%# Bind("ticket_id") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblticketid" runat="server" Text='<%# Bind("ticket_id") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>

      <asp:TemplateField HeaderText="admin_id" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:Label ID="txtadmin_id" runat="server" Text='<%# Bind("admin_id") %>'></asp:Label>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lbladmin_id" runat="server" Text='<%# Bind("admin_id") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


      </Columns>
         <RowStyle HorizontalAlign="left" VerticalAlign="Middle" />
    </asp:GridView>
            </div>


        <div class="container">

			<table border="0" width="35%" style="margin-left:auto; margin-right:auto;">
				<tr>
					<td>
						<h2 style="color:white; font-size:20px; text-align:center; opacity: 1;"></td>
              	             	
                            <h3 style="text-align:left; color:white;" >To insert the data, type in the valid inputs in the following textbox and press the button</h3>

    <p> 
        <p1 style ="color:white">  fname:  </p1>
        <asp:TextBox runat="server"  ID="insrtfname" Text=""  style="margin-top: 2px " CssClass="auto-style4"></asp:TextBox> <br/>
    
        <p1 style ="color:white"> lname:  </p1>
        <asp:TextBox runat="server"  ID="insrtlname" Text="" style="margin-top: 4px" CssClass="auto-style6"></asp:TextBox> <br/>
      
         <p1 style ="color:white"> ticket_id:  </p1>
        <asp:TextBox runat="server"  ID="insrticketid" Text="" style="margin-top: 4px" CssClass="auto-style1" ></asp:TextBox> <br/>
        </p>    
    
    <asp:Button runat="server" ID="button1" Text="Add Row" OnClick="insert_tuple_click" style="margin-top: 5px" CssClass="auto-style6" /> <br /> <br />
</td>
				</tr>

        <div id="message" runat="server" style="font-style:italic ; color:white ">
         Enter the valid inputs.
        </div>


            </table>
           </div>
                
      
         

    </form>
</body>
</html>
