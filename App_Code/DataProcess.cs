using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Linq;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Web.UI;

/// <summary>
/// Summary description for DataProcess
/// </summary>
public class DataProcess
{
    static string Connectionstring = Convert.ToString(ConfigurationManager.ConnectionStrings["Conn"]);

    public struct SearchTreb
    {
        public string Office;
        public string Area;
        public string Community;
        public string Municiplaity;
        public string Class;
        public long? FromAmt;
        public long? ToAmt;
        public int PageSize;
        public int PageIndex;
       public SearchTreb(int a)
        {
           this. PageIndex = a;
           this.Office = "";
           this.Area = "";
           this.Community = "";
           this.Municiplaity = "";
           this.Class = "";
           this.FromAmt = null;
           this.ToAmt = null;
           this.PageSize = 0;
        }
    }

    public DataProcess()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    /// <summary>
    /// To get the page Details
    /// </summary>
    /// <param name="dsDetails"></param>
    /// <param name="FBPageID"></param>
    /// <param name="PageSize"></param>
    public static void GetPageDetails(ref DataSet dsDetails, long FBPageID, int PageSize)
    {
        dsDetails = SqlHelper.ExecuteDataset(Connectionstring, CommandType.StoredProcedure, "LOS_SP_Getdetailsforpage", new SqlParameter("@FBPageID", FBPageID), new SqlParameter("@PageSize", PageSize));
    }

    /// <summary>
    /// To get the listings based on search criteria
    /// </summary>
    /// <param name="dsTreb"></param>
    /// <param name="search"></param>
    public static void GetListings(ref DataSet dsTreb, SearchTreb search)
    {
        dsTreb = SqlHelper.ExecuteDataset(Connectionstring, CommandType.StoredProcedure, "LOS_SP_getlistings", new SqlParameter("@office", search.Office), new SqlParameter("@area", search.Area),
            new SqlParameter("@municipality", search.Municiplaity), new SqlParameter("@community", search.Community), new SqlParameter("@FromAmt", search.FromAmt), new SqlParameter("@ToAmt", search.ToAmt),
            new SqlParameter("@class", search.Class), new SqlParameter("@PageNum", search.PageIndex), new SqlParameter("@PageSize", search.PageSize));
    }

    /// <summary>
    /// To get the Area,Community and Municipality details
    /// </summary>
    /// <param name="dsDetails"></param>
    public static void GetACMDetails(ref DataSet dsDetails)
    {
        dsDetails = SqlHelper.ExecuteDataset(Connectionstring, CommandType.StoredProcedure, "LOS_SP_ACMDetails");
    }


    /// <summary>
    /// To get the individual treb details
    /// </summary>
    /// <param name="dsTrebItem"></param>
    /// <param name="ItemID"></param>
    public static void GetTrebItem(ref DataSet dsTrebItem, int ItemID)
    {
        dsTrebItem = SqlHelper.ExecuteDataset(Connectionstring, CommandType.StoredProcedure, "LOS_SP_gettrebitem", new SqlParameter("@ID", ItemID));
    }

    /// <summary>
    /// To Get the Treb Details and treb item
    /// </summary>
    /// <param name="dsTreb"></param>
    /// <param name="Office"></param>
    /// <param name="Class"></param>
    /// <param name="ItemId"></param>
    public static void GetTrebRSS(ref DataSet dsTreb, string Office, string Cnd, int? ItemId)
    {
        dsTreb = SqlHelper.ExecuteDataset(Connectionstring, CommandType.StoredProcedure, "ABO_SP_gettrebdetails", new SqlParameter("@office", Office), new SqlParameter("@Cnd", Cnd), new SqlParameter("@id", ItemId));
    }

    /// <summary>
    /// To get the AdvancedListings details
    /// </summary>
    /// <param name="dsAdvancedListings"></param>
    /// <param name="ItemId"></param>
    public static void GetAdvancedListings(ref DataSet dsAdvancedListings, int? ItemId)
    {
        dsAdvancedListings = SqlHelper.ExecuteDataset(Connectionstring, CommandType.StoredProcedure, "Advancedlistings", new SqlParameter("@id", ItemId));
    }

    /// <summary>
    /// To get the App Status
    /// </summary>
    /// <param name="dsStatus"></param>
    /// <param name="AppID"></param>
    public static void GetAppStatus(ref DataSet dsStatus, int AppID)
    {
        dsStatus = SqlHelper.ExecuteDataset(Connectionstring, CommandType.StoredProcedure, "ABO_SP_getappstatus", new SqlParameter("@Appid", AppID));
    }



}
