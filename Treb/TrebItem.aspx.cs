using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class Contents_TrebItem : System.Web.UI.Page
{
    #region Variable Declaration
    DataSet dsTrebItem = new DataSet();
    public string AppID = Convert.ToString(ConfigurationManager.AppSettings["AppID"]);

    #endregion

    #region Page Load
    /// <summary>
    /// Handles page load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["ItemId"]))
            {
                try
                {
                    DataProcess.GetTrebItem(ref dsTrebItem, Convert.ToInt32(Request.QueryString["ItemId"]));
                    if (dsTrebItem.Tables[0].Rows.Count > 0)
                    {
                        rptTrebItem.DataSource = dsTrebItem;
                        rptTrebItem.DataBind();
                    }
                }
                catch
                {
                    throw;
                }
            }
        }
    }
    #endregion
}
