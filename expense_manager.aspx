<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="expense_manager.aspx.cs" Inherits="DBProject.expense_manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> expense manger Login </title>
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

    <form id="form2" runat="server">
    <div>

        <h3 style="color:green; font-size:40px; text-align:center; opacity: 1;"> EXPENSE TABLE </h3>    
              	             	   
            
    <asp:GridView ID="ItemGrid" runat="server" AutoGenerateColumns="False" EnableViewState="False" OnRowEditing="ItemGrid_RowEditing" OnRowUpdating="ItemGrid_RowUpdating" OnRowCancelingEdit="ItemGrid_RowCancelingEdit" OnRowDeleting="ItemGrid_RowDeleting" CellPadding="3" HorizontalAlign="Center" ForeColor="#333333" Width="100%" Height="157px">
        <AlternatingRowStyle HorizontalAlign="center" BackColor="#E3EAEB"/>
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


            <asp:TemplateField HeaderText="match_id" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:Label ID="txtmatch_id"  runat="server" Text='<%# Bind("match_id") %>'></asp:Label>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblmatch_id" runat="server" Text='<%# Bind("match_id") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="securities" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtsecurities"  runat="server" Text='<%# Bind("securities") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblsecurities" runat="server" Text='<%# Bind("securities") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="food" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtfood"  runat="server" Text='<%# Bind("food") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblfood" runat="server" Text='<%# Bind("food") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="labor" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtlabor"  runat="server" Text='<%# Bind("labor") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lbllabor" runat="server" Text='<%# Bind("labor") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="game_accessories" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtgame_accessories"  runat="server" Text='<%# Bind("game_accessories") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblgame_accessories" runat="server" Text='<%# Bind("game_accessories") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>

        </Columns>
         <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>
        <center> 
		<div class="container">
                            
              	             	

    <h4 style="text-align:left; color:whitesmoke">To insert the data, type in the valid inputs in the following textbox and press the button</h4>

    <p style ="color:white"> 
        Match ID:  
        <asp:TextBox runat="server"  ID="insrtmatchid" Text="" style=" margin-top: 2px" CssClass="auto-style4"></asp:TextBox> <br/>
                 Security: 
        <asp:TextBox runat="server"  ID="insrtsecurity" Text="" style="margin-top: 4px" CssClass="auto-style3" ></asp:TextBox> <br/>
                 Food
        <asp:TextBox runat="server"  ID="insrtfood" Text="" style="margin-top: 4px" CssClass="auto-style2"></asp:TextBox> <br/>
        Labor:  
        <asp:TextBox runat="server"  ID="insrtlabor" Text="" style="margin-top: 4px" CssClass="auto-style1" ></asp:TextBox> <br/>
        Game Accessories:  
        <asp:TextBox runat="server"  ID="insrtaccessories" Text="" style="margin-top: 4px" CssClass="auto-style5" ></asp:TextBox> <br/>
    </p>    
    
    <asp:Button runat="server" ID="button1" Text="Add New Tuple" OnClick="insert_tuple_click" style="margin-top: 5px" CssClass="auto-style6" /> <br /> <br />
        <div id="message" runat="server" style="font-style:italic; color:black">
         Enter the valid inputs.
        </div>
    </div>
            </center>
    </form>
</body>
</html>