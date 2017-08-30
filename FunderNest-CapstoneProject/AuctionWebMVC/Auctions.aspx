<%@ Page language="c#" Codebehind="Auctions.aspx.cs" AutoEventWireup="True" Inherits="SoftwareSolutions.CharityAuction.Auctions" %>
<%@ OutputCache Duration="1" VaryByParam="c" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<title>Charity Auction</title>
    <link href="styles/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	
    <div class="PageLayout">

		<form id="Form1" method="post" runat="server">
		
            <uc2:Header ID="Header1" runat="server" EnableViewState="false" />	

			<div class="SubHeading">
                <asp:Literal ID="litHeading" runat="server" EnableViewState="false"/>
			</div>
                                    <a href="MVCArea/DementiaHackathon/dementiaHackathon" class="button">Go to Google</a>

			<asp:datalist id="dlListings" runat="server" BorderStyle="None" 
                BorderWidth="0px" EnableViewState="False" RepeatLayout="Table" >
				<HeaderTemplate>
					<table class="AuctionList">
						<tr class="ThemeColor" style="height:35px;">
							<td nowrap="nowrap"><a href="Auctions.aspx?s=Name"><b>Item</b></a></td>
							<td nowrap="nowrap"><a href="Auctions.aspx?s=Location"><b>Location</b></a></td>
							<td nowrap="nowrap"><a href="Auctions.aspx?s=Buyer"><b>Winning&nbsp;Bidder</b></a></td>
							<!--<td nowrap="nowrap"><a href="Auctions.aspx?s=Category"><b>Catergories</b></a></td>-->
							<td nowrap="nowrap" width="80" style="text-align:center;"><a href="Auctions.aspx?s=BidNumber"><b>Bids</b></a></td>
							<td nowrap="nowrap" width="80"><a href="Auctions.aspx?s=BidAmount"><b>Price</b></a></td>
							<td nowrap="nowrap" width="80"><a href="Auctions.aspx?s=DateClose"><b>Time Left</b></a></td>
						</tr>
				</HeaderTemplate>
				<FooterTemplate>
					<tr class="ThemeColor" style="height:5px;"> 
						<td colspan="6"></td>
					</tr>
					</table>
				</FooterTemplate>
				<ItemTemplate>
					<tr class="ThemeColorAlt">
						<td width="100%"><a href='Item.aspx?i=<%# DataBinder.Eval(Container.DataItem, "Id") %>'><%# DataBinder.Eval(Container.DataItem, "Name") %></a><br>
							<%# FormatDescription(DataBinder.Eval(Container.DataItem, "Description").ToString()) %>
						</td>
						<td nowrap="nowrap"><%# DataBinder.Eval(Container.DataItem, "Location") %></td>
						<td nowrap="nowrap"><%# DataBinder.Eval(Container.DataItem, "Buyer") %></td>
						<td nowrap="nowrap" style="text-align:center;"><%# DataBinder.Eval(Container.DataItem, "BidNumber") %></td>
						<td nowrap="nowrap"><%# FormatAmount(DataBinder.Eval(Container.DataItem, "BidAmount").ToString()) %></td>
						<td nowrap="nowrap" style="text-align:right;"><%# FormatCountdown(DataBinder.Eval(Container.DataItem, "DateClose").ToString()) %></td>
					</tr>
				</ItemTemplate>
				<AlternatingItemTemplate>
					<tr class="ThemeColorAlt2">
						<td width="100%"><a href='Item.aspx?i=<%# DataBinder.Eval(Container.DataItem, "Id") %>'><%# DataBinder.Eval(Container.DataItem, "Name") %></a><br>
							<%# FormatDescription(DataBinder.Eval(Container.DataItem, "Description").ToString()) %>
						</td>
						<td nowrap="nowrap"><%# DataBinder.Eval(Container.DataItem, "Location") %></td>
						<td nowrap="nowrap"><%# DataBinder.Eval(Container.DataItem, "Buyer")%></td>
						<td nowrap="nowrap" style="text-align:center;"><%# DataBinder.Eval(Container.DataItem, "BidNumber") %></td>
						<td nowrap="nowrap"><%# FormatAmount(DataBinder.Eval(Container.DataItem, "BidAmount").ToString())%></td>
						<td nowrap="nowrap" style="text-align:right;"><%# FormatCountdown(DataBinder.Eval(Container.DataItem, "DateClose").ToString())%></td>
					</tr>
				</AlternatingItemTemplate>
			</asp:datalist>

			<div class="MoneyRaised">
                So far a total of £&nbsp;<asp:Literal id="litTotal" runat="server" EnableViewState="false" >0</asp:Literal>&nbsp;has been raised.&nbsp; <b>Well done!</b>
			</div>
            		
		</form>
       </div>
	</body>
</html>
