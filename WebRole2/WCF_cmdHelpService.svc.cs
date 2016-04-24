using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

using System.Diagnostics;
using System.IO;

namespace WebRole2
{
    // 注意: 您可以使用 [重構] 功能表上的 [重新命名] 命令同時變更程式碼、svc 和組態檔中的類別名稱 "WCF_cmdHelpService"。
    // 注意: 若要啟動 WCF 測試用戶端以便測試此服務，請在 [方案總管] 中選取 WCF_cmdHelpService.svc 或 WCF_cmdHelpService.svc.cs，然後開始偵錯。
    public class WCF_cmdHelpService : IWCF_cmdHelpService
    {
        /*public void DoWork()
        {
        }*/

        public string CommandOutput(string commandText)
        {
            System.Diagnostics.Process process = new System.Diagnostics.Process();
            process.StartInfo.FileName = "cmd.exe";
            process.StartInfo.UseShellExecute = false;
            process.StartInfo.RedirectStandardInput = true;
            process.StartInfo.RedirectStandardOutput = true;
            process.StartInfo.RedirectStandardError = true;
            process.StartInfo.CreateNoWindow = true; //不跳出cmd視窗
            string strOutput = null;

            try{
                process.Start();

                process.StandardInput.WriteLine((commandText + " /?"));
                process.StandardInput.WriteLine("exit");

                //一行一行讀至結束
                while (process.StandardOutput.Read() > -1)
                {
                    strOutput += process.StandardOutput.ReadLine(); //
                    strOutput += "<br>"; //行尾加這個break, label才會換行
                }
                //strOutput = process.StandardOutput.ReadToEnd();//匯出整個執行過程

                process.WaitForExit();
                process.Close();
            }
            catch (Exception e)
            {
                strOutput = e.Message;
            }
            return strOutput;
        }
    }
}
