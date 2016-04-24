using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

using System.Web.Security;

namespace WebRole3
{
    // 注意: 您可以使用 [重構] 功能表上的 [重新命名] 命令同時變更程式碼、svc 和組態檔中的類別名稱 "WCF_CloudRandomService"。
    // 注意: 若要啟動 WCF 測試用戶端以便測試此服務，請在 [方案總管] 中選取 WCF_CloudRandomService.svc 或 WCF_CloudRandomService.svc.cs，然後開始偵錯。
    
    public class WCF_CloudRandomService : IWCF_CloudRandomService
    {
        /*public void DoWork()
        {
        }*/

        private static string a2z = "abcdefghijklmnopqrstuvwxyz";
        private static string A2Z = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

        //產生隨機整數陣列回傳
        public int[] randomInt(int min, int max, int quantity)
        {
            int[] randIntArray = new int[quantity];
            Random rand = new Random();

            for (int quantityIndex = 0; quantityIndex < quantity; quantityIndex++)
            {
                randIntArray[quantityIndex] = rand.Next(min, max+1);
            }

            return randIntArray;
        }

        //產生只含有英文字母的隨機字串 length <-字串長度, quantity <-組數, lowerCase <-是否含小寫, capital <-是否含大寫
        public string randomOnlyAlphabet(int length, int quantity, bool lowerCase, bool capital)
        {
            StringBuilder strBuilder = new StringBuilder();
            Random rand = new Random();

            if (lowerCase && capital)
            {
                for (int quantityIndex = 0; quantityIndex < quantity; quantityIndex++)
                {
                    for (int lineIndex = 0; lineIndex < length; lineIndex++)
                    {
                        switch (rand.Next(2))
                        {
                            case 0:
                                strBuilder.Append(a2z[rand.Next(0, a2z.Length)]);
                                break;
                            case 1:
                                strBuilder.Append(A2Z[rand.Next(0, A2Z.Length)]);
                                break;
                        }
                    }
                    strBuilder.Append("\r\n");
                }
            }
            else if(lowerCase)
            {
                for (int quantityIndex = 0; quantityIndex < quantity; quantityIndex++)
                {
                    for (int lineIndex = 0; lineIndex < length; lineIndex++)
                    {
                        strBuilder.Append(a2z[rand.Next(0, a2z.Length)]);
                    }
                    strBuilder.Append("\r\n");
                }
            }
            else
            {
                for (int quantityIndex = 0; quantityIndex < quantity; quantityIndex++)
                {
                    for (int lineIndex = 0; lineIndex < length; lineIndex++)
                    {
                        strBuilder.Append(A2Z[rand.Next(0, A2Z.Length)]);
                    }
                    strBuilder.Append("\r\n");
                }
            }

            return strBuilder.ToString();
        }

        //產生英數字符號混合字串, 適合用作密碼
        public string GetRandomStringByPassword(int length, int quantity, int nonAlphaCount)
        {
            StringBuilder strBuilder = new StringBuilder();

            for (int quantityIndex = 0; quantityIndex < quantity; quantityIndex++)
            {
                strBuilder.Append(Membership.GeneratePassword(length, nonAlphaCount));
                strBuilder.Append("\r\n");
            }

            return strBuilder.ToString();
        }

        //===================================================================================
        
        //2, 10, 16進制數換算
        public string digitConvert(string value, int fromBase, int toBase)
        {
            return Convert.ToString(Convert.ToInt32(value, fromBase), toBase);
        }
    }
}
