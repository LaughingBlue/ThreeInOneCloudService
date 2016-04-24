using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRole1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_LotteryGen_Click(object sender, EventArgs e)
        {
            Response.Redirect("LotteryGenServiceWebForm.aspx");
        }

        protected void btn_cmdHelper_Click(object sender, EventArgs e)
        {
            Response.Redirect("cmdHelperWebForm.aspx");
        }

        protected void btn_tools_Click(object sender, EventArgs e)
        {
            Response.Redirect("ToolsWebForm.aspx");
        }
    }
}