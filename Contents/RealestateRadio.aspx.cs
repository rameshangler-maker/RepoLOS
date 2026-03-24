using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Net;
using System.Configuration;
using System.Data;

public partial class Contents_RealestateRadio : System.Web.UI.Page
{
    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                if (!string.IsNullOrEmpty(Request.QueryString["AppId"]))
                    Response.Redirect("http://www.listonsocial.com/show229podcast.mp3");
                else
                    Response.Redirect("http://www.listonsocial.com/show229podcast.mp3");
            }
            catch (Exception ex)
            {
                Alert.ShowAlert(this, ex.Message);
            }
        }
    }
    #endregion

}
