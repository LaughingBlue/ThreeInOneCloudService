using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WebRole1
{
    // 注意: 您可以使用 [重構] 功能表上的 [重新命名] 命令同時變更程式碼、svc 和組態檔中的類別名稱 "WCF_LotteryGenService"。
    // 注意: 若要啟動 WCF 測試用戶端以便測試此服務，請在 [方案總管] 中選取 WCF_LotteryGenService.svc 或 WCF_LotteryGenService.svc.cs，然後開始偵錯。
    public class WCF_LotteryGenService : IWCF_LotteryGenService
    {
        /*public void DoWork()
        {
        }*/

        public String bigLottery(int quantity)
        {
            String rtnStr = "";

            Random rand = new Random(); // replace from new Random(DateTime.Now.Ticks.GetHashCode());
                                        // Since similar code is done in default constructor internally
            List<int> randomList = new List<int>();
            StringBuilder strBuilder = new StringBuilder();
            int MyNumber = 0;

            //quantity <- 欲產生組數
            for (int q = 0; q < quantity; q++)
            {
                //產生一組六個號碼
                for (int inPair = 0; inPair < 6; inPair++)
                {
                    MyNumber = rand.Next(1, 50);
                    if (!randomList.Contains(MyNumber))
                    {   //不重複便加入
                        randomList.Add(MyNumber);
                    }
                    else
                        inPair--;
                }

                randomList.Sort();  //排序

                //轉字串
                strBuilder.Append("第").Append(q + 1).Append("組: ");
                foreach (int randNum in randomList)
                {
                    if (randNum < 10)
                        strBuilder.Append("0").Append(randNum).Append(" ");
                    else
                        strBuilder.Append(randNum).Append(" ");
                }

                strBuilder.Append("\r\n");
                randomList.Clear(); //清空號碼暫存
            }
            rtnStr = strBuilder.ToString(); //號碼字串

            return rtnStr;
        }

        public String powerLottery(int quantity)
        {
            String rtnStr = "";

            Random rand = new Random(); // replace from new Random(DateTime.Now.Ticks.GetHashCode());
                                        // Since similar code is done in default constructor internally
            List<int> randomList = new List<int>();
            StringBuilder strBuilder = new StringBuilder();
            int MyNumber = 0;

            for (int q = 0; q < quantity; q++)
            {
                for (int inPair = 0; inPair < 6; inPair++)
                {
                    MyNumber = rand.Next(1, 39);
                    if (!randomList.Contains(MyNumber))
                    {
                        randomList.Add(MyNumber);
                    }
                    else
                        inPair--;
                }

                randomList.Sort();

                strBuilder.Append("第").Append(q + 1).Append("組: ");
                foreach (int randNum in randomList)
                {
                    if (randNum < 10)
                        strBuilder.Append("0").Append(randNum).Append(" ");
                    else
                        strBuilder.Append(randNum).Append(" ");
                }
                strBuilder.Append("\t第二區: ").Append(rand.Next(1, 9));
                strBuilder.Append("\r\n");

                randomList.Clear();
            }
            rtnStr = strBuilder.ToString();

            return rtnStr;
        }

        public String jintsai539(int quantity)
        {
            String rtnStr = "";

            Random rand = new Random(); // replace from new Random(DateTime.Now.Ticks.GetHashCode());
                                        // Since similar code is done in default constructor internally
            List<int> randomList = new List<int>();
            StringBuilder strBuilder = new StringBuilder();
            int MyNumber = 0;

            for (int q = 0; q < quantity; q++)
            {
                for (int inPair = 0; inPair < 5; inPair++)
                {
                    MyNumber = rand.Next(1, 40);
                    if (!randomList.Contains(MyNumber))
                    {
                        randomList.Add(MyNumber);
                    }
                    else
                        inPair--;
                }

                randomList.Sort();

                strBuilder.Append("第").Append(q + 1).Append("組: ");
                foreach (int randNum in randomList)
                {
                    if (randNum < 10)
                        strBuilder.Append("0").Append(randNum).Append(" ");
                    else
                        strBuilder.Append(randNum).Append(" ");
                }

                strBuilder.Append("\r\n");
                randomList.Clear();
            }
            rtnStr = strBuilder.ToString();

            return rtnStr;
        }
    }
}
