<%@ Page language="c#" Codebehind="AddAuction.aspx.cs" AutoEventWireup="True" Inherits="SoftwareSolutions.CharityAuction.AddAuction" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Add Auction Item</title>

        <script language="javascript" type="text/javascript">
 
        </script> 

	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
        
            <asp:Literal runat="server" ID="litHeader">
                <h2>Add auction item</h2>
            </asp:Literal>

			<table id="Table1" cellSpacing="5" cellPadding="5" border="0">
				<TR>
					<TD style="HEIGHT: 27px">
						<P align="right">Item Name</P>
					</TD>
					<TD style="HEIGHT: 27px">
						<asp:TextBox id="txtName" runat="server" Width="408px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtName" ErrorMessage="Missing name"></asp:RequiredFieldValidator>
                    </TD>
				</TR>
				<TR>
					<TD vAlign="top">
						<P align="right">Item Description</P>
					</TD>
					<TD>
						<asp:TextBox id="txtDescription" runat="server" Width="408px" Height="136px" MaxLength="1000"
							TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtDescription" ErrorMessage="Missing description"></asp:RequiredFieldValidator>
                    </TD>
				</TR>
				<TR>
					<TD>
						<P align="right">Item Location</P>
					</TD>
					<TD>
						<asp:TextBox id="txtLocation" runat="server" Width="240px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtLocation" ErrorMessage="Missing location"></asp:RequiredFieldValidator>
                    </TD>
				</TR>
				<TR>
					<TD style="text-align: right">
                        Category</TD>
					<TD>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList></TD>
				</TR>
                <tr>
                    <td style="text-align: right">
                        Seller 
                        Name</td>
                    <td>
						<asp:TextBox id="txtSeller" runat="server" Width="240px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtSeller" ErrorMessage="Missing seller name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
				<TR>
					<TD vAlign="top">
						<P align="right">Auction close date&nbsp;and time</P>
					</TD>
					<TD>
						<asp:Calendar id="Calendar1" runat="server" Width="240px" ShowGridLines="True"></asp:Calendar>
						<P>Time (24h)
							<asp:TextBox id="txtTime" runat="server" Width="128px">14:00</asp:TextBox></P>
					</TD>
				</TR>
                <TR>
					<TD vAlign="top" style="text-align: right">
						Image</TD>
					<TD>
						<asp:FileUpload ID="FileUpload1" runat="server" Width="405px" /><asp:RegularExpressionValidator ID="rexp" runat="server" ControlToValidate="FileUpload1"
     ErrorMessage="Only .gif, .jpg, .png, .tiff and .jpeg"
     
                            ValidationExpression="(.*\.([Gg][Ii][Ff])|.*\.([Jj][Pp][Gg])|.*\.([Bb][Mm][Pp])|.*\.([pP][nN][gG])|.*\.([tT][iI][iI][fF])$)"></asp:RegularExpressionValidator>
                        <br />
                        Leave blank if no image </TD>
				</TR>
				<TR>
					<TD vAlign="top"></TD>
					<TD align="right">
						&nbsp;</TD>
				</TR>
				<TR>
					<TD vAlign="top">&nbsp;</TD>
					<TD align="right">
						<asp:Button id="Button1" runat="server" Text="Save Auction" onclick="Button1_Click"></asp:Button></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
