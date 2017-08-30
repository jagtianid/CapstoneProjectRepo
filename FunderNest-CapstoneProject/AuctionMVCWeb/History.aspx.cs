using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace SoftwareSolutions.CharityAuction
{
	/// <summary>
	/// Summary description for pgHistory.
	/// </summary>
	public partial class History : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
		getHistory();
		}

		public string trimer (string x)
		{
			decimal d = (decimal)Convert.ToDecimal(x);
			string s =String.Format("{0:F2}", d); // "54.97"
			return s;
		}

		private void getHistory()
		{
            using (SqlConnection conn = new SqlConnection(Common.ConnectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("spBidHistory", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@item_id", Request.QueryString["i"].ToString()));

                    // read
                    dlListings.DataSource = cmd.ExecuteReader();
                    dlListings.DataBind();
                }
            }
        }
	}
}
