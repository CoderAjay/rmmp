using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RateMyMp.App_Code.BO
{
    public class ratingBO
    {
        public Int64 ratingId
        {
            set;
            get;
        }
        public byte ratingParamId
        {
            set;
            get;
        }
        public Int64 mpId
        {
            set;
            get;
        }
        public Int64 guId
        {
            set;
            get;
        }
        public byte rating
        {
            set;
            get;
        }
    }
}