using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRole1
{
    public partial class cmdHelperWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //按下查詢
        protected void btn_search_Click(object sender, EventArgs e)
        {
            label_searchResult.Text = "";
            if (txtBox_commandWanted.Text.Length == 0)
            {
                label_searchResult.Text = "請輸入欲查詢指令!";
                return;
            }

            try{
                cmdHelperServiceReference.WCF_cmdHelpServiceClient proxy = new cmdHelperServiceReference.WCF_cmdHelpServiceClient();

                //傳送欲查詢指令字串至服務
                label_searchResult.Text = proxy.CommandOutput(txtBox_commandWanted.Text.ToString());
            }
            catch(Exception ex)
            {
                label_searchResult.Text = ex.ToString();
            }

        }

        protected void btn_bachHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}