using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WebRole3
{
    // 注意: 您可以使用 [重構] 功能表上的 [重新命名] 命令同時變更程式碼和組態檔中的介面名稱 "IWCF_CloudRandomService"。
    [ServiceContract]
    public interface IWCF_CloudRandomService
    {
        //[OperationContract]
        //void DoWork();

        [OperationContract]
        int[] randomInt(int min, int max, int quantity);

        [OperationContract]
        string randomOnlyAlphabet(int length, int quantity, bool lowerCase, bool capital);

        [OperationContract]
        string GetRandomStringByPassword(int length, int quantity, int nonAlphaCount);

        [OperationContract]
        string digitConvert(string value, int fromBase, int toBase);
    }
}
