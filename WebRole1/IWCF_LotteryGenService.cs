using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WebRole1
{
    // 注意: 您可以使用 [重構] 功能表上的 [重新命名] 命令同時變更程式碼和組態檔中的介面名稱 "IWCF_LotteryGenService"。
    [ServiceContract]
    public interface IWCF_LotteryGenService
    {
        //[OperationContract]
        //void DoWork();

        [OperationContract]
        String bigLottery(int quantity);

        [OperationContract]
        String powerLottery(int quantity);

        [OperationContract]
        String jintsai539(int quantity);
    }
}
