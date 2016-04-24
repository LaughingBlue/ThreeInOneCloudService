using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRole1
{
    public partial class LotteryGenServiceWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //radioBtnList變動會換圖片
        protected void radioList_lotType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(radList_lotType.SelectedItem.Text == "大樂透")
            {
                Image_logo.ImageUrl = "~/Images/biglot.jpg";
            }
            else if (radList_lotType.SelectedItem.Text == "威力彩")
            {
                Image_logo.ImageUrl = "~/Images/powerlot.jpg";
            }
            else if (radList_lotType.SelectedItem.Text == "今彩539")
            {
                Image_logo.ImageUrl = "~/Images/todaylot.jpg";
            }
        }

        //按下產生後呼叫服務
        protected void btn_GenStart_Click(object sender, EventArgs e)
        {
            txtBox_Result.Text="";
            if (txtBox_want.Text.Length == 0)
            {
                txtBox_Result.Text = "請輸入欲產生組數!";
                return;
            }

            try{
                LocalLotGenServiceReference.WCF_LotteryGenServiceClient proxy = new LocalLotGenServiceReference.WCF_LotteryGenServiceClient();
            
                if (radList_lotType.SelectedItem.Text == "大樂透")
                {
                    txtBox_Result.Text = proxy.bigLottery(Convert.ToInt32(txtBox_want.Text));
                }
                else if (radList_lotType.SelectedItem.Text == "威力彩")
                {
                    txtBox_Result.Text = proxy.powerLottery(Convert.ToInt32(txtBox_want.Text));
                }
                else if (radList_lotType.SelectedItem.Text == "今彩539")
                {
                    txtBox_Result.Text = proxy.jintsai539(Convert.ToInt32(txtBox_want.Text));
                }
            }
            catch (Exception ex)
            {
                txtBox_Result.Text = ex.ToString();
            }
        }

        //Go HOME
        protected void btn_backHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}