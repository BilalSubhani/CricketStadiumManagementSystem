<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="match_manager.aspx.cs" Inherits="DBProject.match_manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Match Manager</title>
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
           
 <h3 style="color:green; font-size:40px; text-align:center; opacity: 1;"> TABLES FOR MATCH MANGER </h3>    
              	             	

<%-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>
<%-- ////////////////////////////////////////////////////////// MATCH //////////////////////////////////////////////////////////////--%>
<%-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>

            <h3 style="text-align:center"> MATCH TABLE </h3>
            
    <asp:GridView ID="ItemGrid" runat="server" AutoGenerateColumns="False" EnableViewState="False" OnRowEditing="ItemGrid_RowEditing" OnRowUpdating="ItemGrid_RowUpdating" OnRowCancelingEdit="ItemGrid_RowCancelingEdit" OnRowDeleting="ItemGrid_RowDeleting" CellPadding="4" HorizontalAlign="Center" ForeColor="#333333" GridLines="None">
         <AlternatingRowStyle HorizontalAlign="Center" BackColor="White" />
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


            <asp:TemplateField HeaderText="match_status" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtmatch_status" runat="server" Text='<%# Bind("match_status") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblmatch_status" runat="server" Text='<%# Bind("match_status") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="admin_id" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:Label ID="txtadmin_id"  runat="server" Text='<%# Bind("admin_id") %>'></asp:Label>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lbladmin_id" runat="server" Text='<%# Bind("admin_id") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="stadium_id" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:Label ID="txtstadium_id"  runat="server" Text='<%# Bind("stadium_id") %>'></asp:Label>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblstadium_id" runat="server" Text='<%# Bind("stadium_id") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


        </Columns>
         <EditRowStyle BackColor="#7C6F57" />
         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#E3EAEB" />
         <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F8FAFA" />
         <SortedAscendingHeaderStyle BackColor="#246B61" />
         <SortedDescendingCellStyle BackColor="#D4DFE1" />
         <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>


              	             	














    <h4 style="text-align:left;">To insert the data, type in the valid inputs in the following textbox and press the button</h4>

    <p> 
        Match Status:  
        <asp:TextBox runat="server"  ID="insrtmatchstatus" Text="" style="margin-top: 2px" CssClass="auto-style4"></asp:TextBox> <br/>
        Stadium ID:  
        <asp:TextBox runat="server"  ID="insrtstadiumid" Text="" style="margin-top: 4px" CssClass="auto-style3" ></asp:TextBox> <br/>
    </p>    
    
    <asp:Button runat="server" ID="button1" Text="Add New Tuple" OnClick="insert_tuple_click" style="margin-top: 5px" CssClass="auto-style6" /> <br /> <br />

    <div id="message" runat="server" style="font-style:italic">
         Enter the valid inputs.
        </div>


<%-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>
<%-- ////////////////////////////////////////////////////// ONE DAY MATCH //////////////////////////////////////////////////////////--%>
<%-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>


            <h3 style="text-align:center"> ONE DAY MATCH TABLE </h3>
            
    <asp:GridView ID="ItemGrid1" runat="server" AutoGenerateColumns="False" EnableViewState="False" OnRowEditing="ItemGrid_RowEditing1" OnRowUpdating="ItemGrid_RowUpdating1" OnRowCancelingEdit="ItemGrid_RowCancelingEdit1" CellPadding="4" HorizontalAlign="Center" ForeColor="#333333" GridLines="None">
         <AlternatingRowStyle HorizontalAlign="Center" BackColor="White" />
         <Columns>
            <asp:CommandField ShowEditButton="True" />

             <asp:TemplateField HeaderText="id" HeaderStyle-HorizontalAlign="center">
            <EditItemTemplate>
            <asp:Label ID="txtid" runat="server" Text='<%# Bind("id") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
            <asp:Label ID="lblid" runat="server" Text='<%# Bind("id") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="match_id" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:Label ID="txtmatch_id" runat="server" Text='<%# Bind("match_id") %>'></asp:Label>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblmatch_id" runat="server" Text='<%# Bind("match_id") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="team_one" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:Label ID="txtteam_one"  runat="server" Text='<%# Bind("team_one") %>'></asp:Label>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblteam_one" runat="server" Text='<%# Bind("team_one") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="team_two" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:Label ID="txtteam_two"  runat="server" Text='<%# Bind("team_two") %>'></asp:Label>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblteam_two" runat="server" Text='<%# Bind("team_two") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


             
            <asp:TemplateField HeaderText="overs_played_one" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtovers_played_one"  runat="server" Text='<%# Bind("overs_played_one") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblovers_played_one" runat="server" Text='<%# Bind("overs_played_one") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


             
            <asp:TemplateField HeaderText="overs_left_one" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtovers_left_one"  runat="server" Text='<%# Bind("overs_left_one") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblovers_left_one" runat="server" Text='<%# Bind("overs_left_one") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


             
            <asp:TemplateField HeaderText="runs_one" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtruns_one"  runat="server" Text='<%# Bind("runs_one") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblruns_one" runat="server" Text='<%# Bind("runs_one") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


             
            <asp:TemplateField HeaderText="wickets_one" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtwickets_one"  runat="server" Text='<%# Bind("wickets_one") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblwickets_one" runat="server" Text='<%# Bind("wickets_one") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


             <asp:TemplateField HeaderText="overs_played_two" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtovers_played_two"  runat="server" Text='<%# Bind("overs_played_two") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblovers_played_two" runat="server" Text='<%# Bind("overs_played_two") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


             
            <asp:TemplateField HeaderText="overs_left_two" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtovers_left_two"  runat="server" Text='<%# Bind("overs_left_two") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblovers_left_two" runat="server" Text='<%# Bind("overs_left_two") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


             
            <asp:TemplateField HeaderText="runs_two" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtruns_two"  runat="server" Text='<%# Bind("runs_two") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblruns_two" runat="server" Text='<%# Bind("runs_two") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


             
            <asp:TemplateField HeaderText="wickets_two" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtwickets_two"  runat="server" Text='<%# Bind("wickets_two") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblwickets_two" runat="server" Text='<%# Bind("wickets_two") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>

        </Columns>
         <EditRowStyle BackColor="#2461BF" />
         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#EFF3FB" />
         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F5F7FB" />
         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
         <SortedDescendingCellStyle BackColor="#E9EBEF" />
         <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>


    <h4 style="text-align:left;">To insert the data, type in the valid inputs in the following textbox and press the button</h4>

    <p> 
        Match ID:  
        <asp:TextBox runat="server"  ID="insrtmatchid" Text="" style="margin-top: 2px" CssClass="auto-style4"></asp:TextBox> <br/>
        Team One:  
        <asp:TextBox runat="server"  ID="insrtteamone" Text="" style="margin-top: 4px" CssClass="auto-style3" ></asp:TextBox> <br/>
        Team Two:  
        <asp:TextBox runat="server"  ID="insrtteamtwo" Text="" style="margin-top: 4px" CssClass="auto-style2"></asp:TextBox> <br/>
        Overs Played One:  
        <asp:TextBox runat="server"  ID="insrtoversplayedone" Text="" style="margin-top: 4px" CssClass="auto-style1" ></asp:TextBox> <br/>
        Overs Left One:  
        <asp:TextBox runat="server"  ID="insrtoversleftone" Text="" style="margin-top: 4px" CssClass="auto-style5" ></asp:TextBox> <br/>
        Runs One:  
        <asp:TextBox runat="server"  ID="insrtrunsone" Text="" style="margin-top: 4px" CssClass="auto-style5" ></asp:TextBox> <br/>
        Wickets One:  
        <asp:TextBox runat="server"  ID="insrtwicketone" Text="" style="margin-top: 4px" CssClass="auto-style5" ></asp:TextBox> <br/>
        Overs Played Two:  
        <asp:TextBox runat="server"  ID="insrtoversplayedtwo" Text="" style="margin-top: 4px" CssClass="auto-style5" ></asp:TextBox> <br/>
        Overs Left Two:  
        <asp:TextBox runat="server"  ID="insrtlefttwo" Text="" style="margin-top: 4px" CssClass="auto-style5" ></asp:TextBox> <br/>
        Runs Two:  
        <asp:TextBox runat="server"  ID="insrtrunstwo" Text="" style="margin-top: 4px" CssClass="auto-style5" ></asp:TextBox> <br/>
        Wickets Two:  
        <asp:TextBox runat="server"  ID="insrtwicketstwo" Text="" style="margin-top: 4px" CssClass="auto-style5" ></asp:TextBox> <br/>
    </p>    
    
    <asp:Button runat="server" ID="button2" Text="Add New Tuple" OnClick="insert_tuple_click1" style="margin-top: 5px" CssClass="auto-style6" /> <br /> <br />

    <div id="Div1" runat="server" style="font-style:italic">
         Enter the valid inputs.
        </div>


<%-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>
<%-- //////////////////////////////////////////////////////// TEST MATCH ///////////////////////////////////////////////////////////--%>
<%-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>

    <h3 style="text-align:center"> TEST MATCH TABLE </h3>
    
      <asp:GridView ID="ItemGrid2" runat="server" AutoGenerateColumns="False" EnableViewState="False" OnRowEditing="ItemGrid_RowEditing2" OnRowUpdating="ItemGrid_RowUpdating2" OnRowCancelingEdit="ItemGrid_RowCancelingEdit2" CellPadding="3" HorizontalAlign="Center" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal">
         <AlternatingRowStyle HorizontalAlign="Center" BackColor="#F7F7F7" />
         <Columns>
            <asp:CommandField ShowEditButton="True" />

             <asp:TemplateField HeaderText="id" HeaderStyle-HorizontalAlign="center">
            <EditItemTemplate>
            <asp:Label ID="txtid" runat="server" Text='<%# Bind("id") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
            <asp:Label ID="lblid" runat="server" Text='<%# Bind("id") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>



            <asp:TemplateField HeaderText="day_number" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:Label ID="txtday_number"  runat="server" Text='<%# Bind("day_number") %>'></asp:Label>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblday_number" runat="server" Text='<%# Bind("day_number") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>



            <asp:TemplateField HeaderText="match_id" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:Label ID="txtmatch_id" runat="server" Text='<%# Bind("match_id") %>'></asp:Label>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblmatch_id" runat="server" Text='<%# Bind("match_id") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="team_one" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:Label ID="txtteam_one"  runat="server" Text='<%# Bind("team_one") %>'></asp:Label>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblteam_one" runat="server" Text='<%# Bind("team_one") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="team_two" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:Label ID="txtteam_two"  runat="server" Text='<%# Bind("team_two") %>'></asp:Label>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblteam_two" runat="server" Text='<%# Bind("team_two") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


             
            <asp:TemplateField HeaderText="runs_one" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtruns_one"  runat="server" Text='<%# Bind("runs_one") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblruns_one" runat="server" Text='<%# Bind("runs_one") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


             
            <asp:TemplateField HeaderText="wickets_one" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtwickets_one"  runat="server" Text='<%# Bind("wickets_one") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblwickets_one" runat="server" Text='<%# Bind("wickets_one") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>



             
            <asp:TemplateField HeaderText="runs_two" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtruns_two"  runat="server" Text='<%# Bind("runs_two") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblruns_two" runat="server" Text='<%# Bind("runs_two") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


             
            <asp:TemplateField HeaderText="wickets_two" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtwickets_two"  runat="server" Text='<%# Bind("wickets_two") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <ItemTemplate>
	        <asp:Label ID="lblwickets_two" runat="server" Text='<%# Bind("wickets_two") %>'></asp:Label>
	        </ItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="innings" HeaderStyle-HorizontalAlign="center">
	        <EditItemTemplate>
	        <asp:TextBox ID="txtinnings"  runat="server" Text='<%# Bind("innings") %>'></asp:TextBox>
	        </EditItemTemplate>
	        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
            </asp:TemplateField>


        </Columns>
          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
         <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#E7E7FF" ForeColor="#4A3C8C" />
          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
          <SortedAscendingCellStyle BackColor="#F4F4FD" />
          <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
          <SortedDescendingCellStyle BackColor="#D8D8F0" />
          <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>


    <h4 style="text-align:left;">To insert the data, type in the valid inputs in the following textbox and press the button</h4>

    <p align="center"> 
        Day Number:
        <asp:TextBox runat="server"  ID="insrttestdaynumber" Text="" style="margin-top: 2px" CssClass="auto-style4"></asp:TextBox> <br/>
        Match ID:  
        <asp:TextBox runat="server"  ID="insrttestmatchid" Text="" style="margin-top: 2px" CssClass="auto-style4"></asp:TextBox> <br/>
        Team One:  
        <asp:TextBox runat="server"  ID="insrttestteamone" Text="" style="margin-top: 4px" CssClass="auto-style3" ></asp:TextBox> <br/>
        Team Two:  
        <asp:TextBox runat="server"  ID="insrttestteamtwo" Text="" style="margin-top: 4px" CssClass="auto-style2"></asp:TextBox> <br/>
        Runs One:  
        <asp:TextBox runat="server"  ID="insrttestrunsone" Text="" style="margin-top: 4px" CssClass="auto-style5" ></asp:TextBox> <br/>
        Wickets One:  
        <asp:TextBox runat="server"  ID="insrttestwicketone" Text="" style="margin-top: 4px" CssClass="auto-style5" ></asp:TextBox> <br/>
        Runs Two:  
        <asp:TextBox runat="server"  ID="insrttestrunstwo" Text="" style="margin-top: 4px" CssClass="auto-style5" ></asp:TextBox> <br/>
        Wickets Two:  
        <asp:TextBox runat="server"  ID="insrttestwicketstwo" Text="" style="margin-top: 4px" CssClass="auto-style5" ></asp:TextBox> <br/>
        Innings:  
        <asp:TextBox runat="server"  ID="insrtinnings" Text="" style="margin-top: 4px" CssClass="auto-style5" ></asp:TextBox> <br/>
    </p>      
    
    <asp:Button runat="server" ID="button3" Text="Add New Tuple" OnClick="insert_tuple_click2" style="margin-top: 5px" CssClass="auto-style6" /> <br /> <br />

    <div id="Div2" runat="server" style="font-style:italic" align="center">
         Enter the valid inputs.
        </div>


    </div>

    </form>
</body>
</html>