using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRole1
{
    public partial class ToolsWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //按下產生按鈕
        protected void btn_Gen_Click(object sender, EventArgs e)
        {
            try{
                toolsServiceReference.WCF_CloudRandomServiceClient proxy = new toolsServiceReference.WCF_CloudRandomServiceClient();

                //依listBox被選擇項, 呼叫相對應服務
                if (ListBox_randomType.SelectedValue.ToString() == "數字")
                {
                    foreach (int i in proxy.randomInt(0, (int)Math.Pow(10, int.Parse(txtBox_length.Text)), int.Parse(txtBox_wanted.Text)))
                    {
                        txtBox_result.Text += i.ToString() + "\r\n";
                    }
                }
                else if (ListBox_randomType.SelectedValue.ToString() == "英文 小寫")
                {
                    txtBox_result.Text += proxy.randomOnlyAlphabet(int.Parse(txtBox_length.Text), int.Parse(txtBox_wanted.Text), true, false);
                }
                else if (ListBox_randomType.SelectedValue.ToString() == "英文 大寫")
                {
                    txtBox_result.Text += proxy.randomOnlyAlphabet(int.Parse(txtBox_length.Text), int.Parse(txtBox_wanted.Text), false, true);
                }
                else if (ListBox_randomType.SelectedValue.ToString() == "混和")
                {
                    txtBox_result.Text += proxy.GetRandomStringByPassword(int.Parse(txtBox_length.Text), int.Parse(txtBox_wanted.Text), 0);
                }
            }
            catch (System.Exception ex)
            {
                txtBox_result.Text = ex.ToString();
            }
        }

        //清除結果按鈕按下
        protected void btn_clear_Click(object sender, EventArgs e)
        {
            txtBox_result.Text = "";
        }

        //====================================================================================

        //進制轉換
        protected void btn_convert_Click(object sender, EventArgs e)
        {
            try{
                int fromBase = 10, toBase = 10;
                toolsServiceReference.WCF_CloudRandomServiceClient proxy = new toolsServiceReference.WCF_CloudRandomServiceClient();

                //來源進制選擇
                switch (radList_input.SelectedItem.Text)
                {
                    case "Bin":
                        fromBase = 2;
                        break;
                    case "Dec":
                        fromBase = 10;
                        break;
                    case "Hex":
                        fromBase = 16;
                        break;
                }

                //目的進制選擇
                switch (radList_output.SelectedItem.Text)
                {
                    case "Bin":
                        toBase = 2;
                        break;
                    case "Dec":
                        toBase = 10;
                        break;
                    case "Hex":
                        toBase = 16;
                        break;
                }

                txtBox_output.Text = proxy.digitConvert(txtBox_input.Text.ToString(), fromBase, toBase);
            }
            catch (System.Exception ex)
            {
                txtBox_output.Text = ex.ToString();
            }
        }

        protected void btn_backHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}