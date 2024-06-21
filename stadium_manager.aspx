<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stadium_manager.aspx.cs" Inherits="DBProject.stadium_manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Stadium Manager </title>

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


     <h3 style="color:green; font-size:40px; text-align:center; opacity: 1;"> STADIUM TABLE </h3>    
              	             	


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


            <asp:TemplateField HeaderText="admin_id" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:Label ID="txtadmin_id" runat="server" Text='<%# Bind("admin_id") %>'></asp:Label>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lbladmin_id" runat="server" Text='<%# Bind("admin_id") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="stadium_name" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtstadium_name"  runat="server" Text='<%# Bind("stadium_name") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblstadium_name" runat="server" Text='<%# Bind("stadium_name") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="capacity" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtcapacity"  runat="server" Text='<%# Bind("capacity") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblcapacity" runat="server" Text='<%# Bind("capacity") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="city" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtcity"  runat="server" Text='<%# Bind("city") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblcity" runat="server" Text='<%# Bind("city") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="country" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtcountry"  runat="server" Text='<%# Bind("country") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblcountry" runat="server" Text='<%# Bind("country") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>
             


        </Columns>
         <RowStyle HorizontalAlign="left" VerticalAlign="Middle" />
    </asp:GridView>
            </div>


		<div class="container">
		<table border="0" width="35%" style="margin-left:auto; margin-right:auto;">
					<td>
						<h2 style="color:black; font-size:20px; text-align:center; opacity: 1;">
              	    </td>
					

                            

    <h4 style="text-align:left; color:white;" >To insert the data, type in the valid inputs in the following textbox and press the button</h4>

    <p> 
        <p1 style ="color:white"> Stadium Name:  </p1>
        <asp:TextBox runat="server"  ID="insrtstadiumname" Text=""  style="margin-top: 2px " CssClass="auto-style4"></asp:TextBox> <br/>
     <p1 style ="color:white"> Capacity:  </p1>  
        <asp:TextBox runat="server"  ID="insrtcapacity" Text="" style="margin-top: 4px" CssClass="auto-style3" ></asp:TextBox> <br/>
        <p1 style ="color:white"> City:  </p1>
        <asp:TextBox runat="server"  ID="insrtcity" Text="" style="margin-top: 4px" CssClass="auto-style6"></asp:TextBox> <br/>
       <p1 style ="color:white"> Country:  </p1>
        <asp:TextBox runat="server"  ID="insrtcountry" Text="" style="margin-top: 4px" CssClass="auto-style1" ></asp:TextBox> <br/>
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