<%@ Page language="c#" Codebehind="Item.aspx.cs" AutoEventWireup="true" Inherits="SoftwareSolutions.CharityAuction.Item" %>

<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
		<title>Charity Auction</title>
        <link href="styles/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" >
        function noenter() {
          return !(window.event && window.event.keyCode == 13); }
        </script>
  </head>
  <body>
	
    <div class="PageLayout">

		<form id="Form1" method="post" runat="server">
			
            <!--Header-->
            <uc1:Header ID="Header1" runat="server" />
            
			<table class="AuctionItem" >
				<tr class="ThemeColor" style="height:35px;">
					<td>
                        <asp:label id="lblItemName" runat="server" Font-Size="Medium" Font-Bold="true"></asp:label>
                    </td>
					<td style="text-align:right;">
						Lot number <asp:label id="lbItemId" runat="server"></asp:label>
					</td>
	    		</tr>

                <tr><td /></tr>

				<tr class="ThemeColorAlt2">
					<td style="vertical-align:top; width:50%;">
						
                        <table width="100%" border="0">
							<tr>
								<td>Current bid:</td>
								<td>
                                    <asp:label id="lblCurrentBid" runat="server"></asp:label>&nbsp;
									<asp:linkbutton id="LinkButton1" runat="server" Font-Size="X-Small" CausesValidation="False" onclick="LinkButton1_Click">Refresh</asp:linkbutton>
                                </td>
							</tr>
							<tr>
								<td>End Time:</td>
								<td>
                                    <asp:label id="lblEndTime" runat="server"></asp:label>
                                </td>
							</tr>
							<tr>
								<td>History:</td>
								<td>
                                    <asp:hyperlink id="lnkBids" runat="server" Target="_blank"></asp:hyperlink>
                                </td>
							</tr>
							<tr>
								<td>Winning bidder:</td>
								<td>
									<asp:label id="lblHighBidder" runat="server"></asp:label>
                                </td>
							</tr>
							<tr>
								<td>Location:</td>
								<td>
                                    <asp:label id="lblLocation" runat="server"></asp:label>
                                </td>
							</tr>
						</table>

					</td>
					<td style="vertical-align:top;width:50%;">

						<table width="100%" align="right" border="0">
							<tr>
								<td style="vertical-align:top;text-align:right;" colspan="2">
                                    <asp:Literal id="litUpdate" runat="server"></asp:Literal>
                                </td>
							</tr>
							<tr>
								<td style="text-align:right;" colspan="2">

                                    Place a bid&nbsp;

									<asp:textbox id="txtBid" onkeypress="return noenter()" runat="server" Width="80px" onclick="javascript:select();" MaxLength="11"></asp:textbox>

									<asp:button id="btnBid" runat="server" Width="80px" Text="Bid Now" CssClass="ThemeColor" onclick="btnBid_Click"></asp:button>
										<br /><br />

									<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="<br>No bid amount" ControlToValidate="txtBid"
										Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBid"
                                        ErrorMessage="Bid format incorrect" ValidationExpression="^\d+(?:\.\d{0,2})?$"></asp:RegularExpressionValidator></td>
							</tr>
						</table>

					</td>
				</tr>
                                
                <tr><td /></tr>

				<tr class="ThemeColor">
					<td>Description</td>
                    <td />
				</tr>
                				
                <tr><td /></tr>

				<tr>
					<td class="ThemeColorAlt2" colspan="2">
						<div style="padding:5px;">
                            <asp:label id="lblDescription" runat="server"></asp:label>
                        </div>
						<div style="text-align:right">
                            Seller:
							<asp:label id="lblSeller" runat="server"></asp:label>
                        </div>
					</td>
				</tr>

				<tr><td /></tr>

				<tr class="ThemeColor" style="height:5px;">
					<td colspan="5"></td>
				</tr>
			</table>
			
            <div class="ItemFooter">
				<asp:HyperLink id="HyperLink1" runat="server" NavigateUrl="Auctions.aspx">Back to Auctions</asp:HyperLink>
		    </div>

            </form>

		</div>

	</body>
</HTML>
