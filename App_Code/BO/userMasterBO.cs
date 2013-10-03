using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RateMyMp.App_Code.BO
{
    public class userMasterBO
    {
        public Int64 guid
        {
            set;
            get;
        }
        public string email
        {
            set;
            get;
        }
        public string password
        {
            set;
            get;
        }
        public int roleId
        {
            set;
            get;
        }
        public string firstName
        {
            set;
            get;
        }
        public string middleName
        {
            set;
            get;
        }
        public string lastName
        {
            set;
            get;
        }
        public Boolean socialNetwork
        { 
            set; 
            get; 
        }
        public int snTypeId
        {
            set;
            get;
        }
        public Boolean status
        {
            set;
            get;
        }

    }
}