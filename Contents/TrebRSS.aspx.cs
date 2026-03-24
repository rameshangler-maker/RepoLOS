using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Xml;
using System.Text;
using System.Net;
using System.IO;

public partial class Contents_TrebRSS : System.Web.UI.Page
{
    #region Variable Declaration
    DataSet dsTreb = new DataSet();
    string strDesc = string.Empty;
    string strImg = string.Empty;
    string stringfPath = string.Empty;
    string UserName = Convert.ToString(ConfigurationManager.AppSettings["proxyUserName"]);
    string Password = Convert.ToString(ConfigurationManager.AppSettings["proxyPassword"]);
    #endregion

    #region Page Load
    /// <summary>
    /// Handles the page load event.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["office"]))
            {
                DataProcess.GetTrebRSS(ref dsTreb, Convert.ToString(Request.QueryString["office"]), "RSS", null);
                if (dsTreb.Tables[0].Rows.Count > 0)
                {
                    Response.Clear();
                    Response.ContentType = "text/xml";
                    XmlTextWriter objX = new XmlTextWriter(Response.OutputStream, Encoding.ASCII);
                    objX.WriteStartDocument();
                    objX.WriteStartElement("rss");
                    objX.WriteAttributeString("version", "2.0");
                    objX.WriteAttributeString("xmlns:media", "http://search.yahoo.com/mrss/");
                    objX.WriteStartElement("channel");
                    objX.WriteElementString("title", Convert.ToString(Request.QueryString["office"]) + " Details");
                    objX.WriteElementString("link", "http://www.listonsocial.com/");
                    objX.WriteElementString("description", Convert.ToString(Request.QueryString["office"]) + " Details");
                    objX.WriteElementString("copyright", "Copyright " + Convert.ToString(DateTime.Now.Year) + " Trade World Corporation.All rights reserved.");
                    for (int i = 0; i < dsTreb.Tables[0].Rows.Count; i++)
                    {
                        objX.WriteStartElement("item");
                        strDesc = string.Empty;
                        objX.WriteElementString("title", "$" + Convert.ToString(dsTreb.Tables[0].Rows[i]["22"]) + " -- " + Convert.ToString(dsTreb.Tables[0].Rows[i]["42"]) + " -- " + Convert.ToString(dsTreb.Tables[0].Rows[i]["32"]));
                        strDesc += "<img src='" + Convert.ToString(dsTreb.Tables[0].Rows[i]["mainimagetn"]) + "' alt=''/><br />";
                        strDesc += Convert.ToString(dsTreb.Tables[0].Rows[i]["12"]).Replace("®", string.Empty) + "<br /><br />" + Convert.ToString(dsTreb.Tables[0].Rows[i]["212"]) + "<br />";
                        objX.WriteStartElement("media:thumbnail");
                        objX.WriteAttributeString("url", Convert.ToString(dsTreb.Tables[0].Rows[i]["mainimagetn"]));
                        objX.WriteAttributeString("height", "100px");
                        objX.WriteAttributeString("width", "100px");
                        objX.WriteEndElement();
                        objX.WriteElementString("guid", "http://www.listonsocial.com/contents/trebitems.aspx?itemid=" + Convert.ToString(dsTreb.Tables[0].Rows[i]["id"]));
                        objX.WriteElementString("link", "http://www.listonsocial.com/contents/trebitems.aspx?itemid=" + Convert.ToString(dsTreb.Tables[0].Rows[i]["id"]));
                        objX.WriteElementString("description", strDesc + "<br/>");
                        objX.WriteEndElement();
                    }
                    objX.WriteEndElement();
                    objX.WriteEndDocument();
                    objX.Flush();
                    objX.Close();
                    Response.End();
                }
            }
        }
    }
    #endregion

    #region User Defined Functions
    /// <summary>
    /// Check image URL is valid or not
    /// </summary>
    /// <param name="url"></param>
    /// <returns></returns>
    public static bool UrlExists(string url)
    {
        try
        {
            new System.Net.WebClient().DownloadData(url);
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }
    #endregion
}
