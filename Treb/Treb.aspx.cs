using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.Configuration;
using System.Text;
using Newtonsoft.Json.Linq;

public partial class Contents_Treb : System.Web.UI.Page
{
    #region Variable Declaration
    DataSet dsTreb = new DataSet();
    DataSet dsDetails = new DataSet();
    DataSet dsData = new DataSet();
    public string TrebCnt = string.Empty;
    public string Type = string.Empty;
    public string resData = string.Empty;
    int pgSize = Convert.ToInt32(ConfigurationManager.AppSettings["pgSize"]);
    string strFilter = string.Empty, strName = string.Empty;
    public string AppID = Convert.ToString(ConfigurationManager.AppSettings["AppID"]);
    static int Count = Convert.ToInt32(ConfigurationManager.AppSettings["Cnt"]);
    DataProcess.SearchTreb search = new DataProcess.SearchTreb();
    #endregion

    #region Page Load
    /// <summary>
    /// Handles the page load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.Form["signed_request"]))
                {
                    string payload = Request.Form["signed_request"].Split('.')[1];
                    var encoding = new UTF8Encoding();
                    var decodedJson = payload.Replace("=", string.Empty).Replace('-', '+').Replace('_', '/');
                    var base64JsonArray = Convert.FromBase64String(decodedJson.PadRight(decodedJson.Length + (4 - decodedJson.Length % 4) % 4, '='));
                    var json = encoding.GetString(base64JsonArray);
                    var signed_request = JObject.Parse(json);
                    if (!string.IsNullOrEmpty(Convert.ToString(signed_request.SelectToken("page.liked"))))
                    {
                        if (Convert.ToBoolean(Convert.ToString(signed_request.SelectToken("page.liked"))))
                            dvLike.Attributes.Add("style", "display:none");
                    }
                    string FBPageID = Convert.ToString(signed_request.SelectToken("page.id"));
                    //string FBPageID = "268410026511686";
                    if (!string.IsNullOrEmpty(FBPageID))
                    {
                        DataProcess.GetPageDetails(ref dsData, Convert.ToInt64(FBPageID), pgSize);
                        if (dsData != null && dsData.Tables.Count > 1)
                        {
                            Type = Convert.ToString(dsData.Tables[0].Rows[0]["ListingType"]);
                            ViewState["OfficeName"] = Convert.ToString(dsData.Tables[0].Rows[0]["OfficeName"]);
                            ViewState["Type"] = Type;
                            if (Type == "S")
                                SearchListings();
                            else if (Type == "O")
                            {
                                dsTreb = new DataSet();
                                dsTreb.Tables.Add(dsData.Tables[1].Copy());
                                dsTreb.Tables.Add(dsData.Tables[2].Copy());
                                ViewState["TrebDetails"] = dsTreb;
                                OfficeListings();
                            }
                        }
                    }
                }
                else if (!string.IsNullOrEmpty(Request.QueryString["ItemId"]))
                    Response.Redirect("trebitem.aspx?ItemId=" + Convert.ToString(Request.QueryString["ItemId"]));
            }
        }
        catch (Exception ex)
        {
            Alert.ShowAlert(this, ex.Message);
        }
    }

    #endregion

    #region Repeater Events
    /// <summary>
    /// Handles the rptPages OnInitialization Event.
    /// </summary>
    /// <param name="e">The instance containing the event data.</param>
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        rptPages.ItemCommand +=
           new RepeaterCommandEventHandler(rptPages_ItemCommand);
    }

    /// <summary>
    /// Handles the RepeaterCommandEventHandler
    /// </summary>
    /// <param name="source">The source of the event.</param>
    /// <param name="e">The instance containing the event data.</param>
    void rptPages_ItemCommand(object source,
                             RepeaterCommandEventArgs e)
    {
        try
        {
            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            if (Convert.ToString(ViewState["Type"]) == "O")
            {
                search.Office = Convert.ToString(ViewState["OfficeName"]);
                if (!string.IsNullOrEmpty(Convert.ToString(ViewState["Class"])))
                    search.Class = Convert.ToString(ViewState["Class"]);
            }
            else if (Convert.ToString(ViewState["Type"]) == "S")
            {
                search.Office = null;
                if (ddlArea.SelectedValue != "-1")
                    search.Area = ddlArea.SelectedValue;
                else
                    search.Area = null;
                if (ddlMunicipality.SelectedValue != "-1")
                    search.Municiplaity = ddlMunicipality.SelectedValue;
                else
                    search.Municiplaity = null;
                if (ddlCommunity.SelectedValue != "-1")
                    search.Community = ddlCommunity.SelectedValue;
                else
                    search.Community = null;
                if (ddlClass.SelectedValue != "-1")
                    search.Class = ddlClass.SelectedValue;
                else
                    search.Class = null;
                if (ddlFrom.SelectedValue != "-1" && ddlTo.SelectedValue != "-1")
                {
                    search.FromAmt = Convert.ToInt64(ddlFrom.SelectedValue);
                    search.ToAmt = Convert.ToInt64(ddlTo.SelectedValue);
                }
                else
                {
                    search.FromAmt = null;
                    search.ToAmt = null;
                }
            }
            search.PageIndex = Convert.ToInt32(e.CommandArgument);
            search.PageSize = pgSize;
            DataProcess.GetListings(ref dsTreb, search);
            ViewState["TrebDetails"] = dsTreb;
            BindData();
            Button btnPage = rptPages.Items[PageNumber].FindControl("btnPage") as Button;
            if (btnPage != null)
            {
                if (Convert.ToInt32(btnPage.CommandArgument) == Convert.ToInt32(e.CommandArgument))
                    btnPage.Enabled = false;
            }
        }
        catch (Exception ex)
        {
            Alert.ShowAlert(this, ex.Message);
        }
    }

    /// <summary>
    /// Gets the total Page number.
    /// </summary>
    public int PageNumber
    {
        get
        {
            if (ViewState["PageNumber"] != null)
                return Convert.ToInt32(ViewState["PageNumber"]);
            else
                return 0;
        }
        set
        {
            ViewState["PageNumber"] = value;
        }
    }
    #endregion

    #region Button Events
    /// <summary>
    /// Handles the search button click event
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        try
        {
            search.Office = null;
            if (ddlArea.SelectedValue != "-1")
                search.Area = ddlArea.SelectedValue;
            else
                search.Area = null;
            if (ddlMunicipality.SelectedValue != "-1")
                search.Municiplaity = ddlMunicipality.SelectedValue;
            else
                search.Municiplaity = null;
            if (ddlCommunity.SelectedValue != "-1")
                search.Community = ddlCommunity.SelectedValue;
            else
                search.Community = null;
            if (ddlClass.SelectedValue != "-1")
                search.Class = ddlClass.SelectedValue;
            else
                search.Class = null;
            if (ddlFrom.SelectedValue != "-1" && ddlTo.SelectedValue != "-1")
            {
                search.FromAmt = Convert.ToInt64(ddlFrom.SelectedValue);
                search.ToAmt = Convert.ToInt64(ddlTo.SelectedValue);
            }
            else
            {
                search.FromAmt = null;
                search.ToAmt = null;
            }
            search.PageIndex = 1;
            search.PageSize = pgSize;
            DataProcess.GetListings(ref dsTreb, search);
            ViewState["TrebDetails"] = dsTreb;
            BindData();
        }
        catch (Exception ex)
        {
            Alert.ShowAlert(this, ex.Message);
        }
    }
    #endregion

    #region Image Button Events
    /// <summary>
    /// Handles the image button click events
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void imgFree_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            strName = ((ImageButton)(sender)).CommandArgument;
            if (strName == "Free")
            {
                imgFree.Enabled = false;
                imgCondo.Enabled = imgCom.Enabled = true;
                resData = "for the search Residential";
            }
            else if (strName == "Condo")
            {
                imgCondo.Enabled = false;
                imgFree.Enabled = imgCom.Enabled = true;
                resData = "for the search Condo";
            }
            else if (strName == "Com")
            {
                imgCom.Enabled = false;
                imgFree.Enabled = imgCondo.Enabled = true;
                resData = "for the search Commercial";
            }
            search = new DataProcess.SearchTreb();
            search.Office = Convert.ToString(ViewState["OfficeName"]);
            search.Area = null;
            search.Municiplaity = null;
            search.Community = null;
            search.Class = strName;
            search.FromAmt = null;
            search.ToAmt = null;
            search.PageIndex = 1;
            search.PageSize = pgSize;
            ViewState["Class"] = strName;
            DataProcess.GetListings(ref dsTreb, search);
            ViewState["TrebDetails"] = dsTreb;
            BindData();
        }
        catch (Exception ex)
        {
            Alert.ShowAlert(this, ex.Message);
        }
    }
    #endregion

    #region User Defined Functions

    /// <summary>
    /// Binds the Data
    /// </summary>
    private void BindData()
    {
        try
        {
            dsTreb = ViewState["TrebDetails"] as DataSet;
            if (dsTreb != null)
            {
                double TotCnt = Convert.ToDouble(dsTreb.Tables[1].Rows[0]["Cnt"]);
                TrebCnt = Convert.ToString(dsTreb.Tables[1].Rows[0]["Cnt"]) + " Matches found ";
                int rndCnt = Convert.ToInt32(Math.Ceiling(TotCnt / pgSize));
                ArrayList pages = new ArrayList();
                for (int i = 1; i <= rndCnt; i++)
                    pages.Add(i.ToString());
                rptPages.DataSource = pages;
                rptPages.DataBind();
                rptPages.Visible = pages.Count != 0;
                rptTreb.Visible = true;
                rptTreb.DataSource = dsTreb;
                rptTreb.DataBind();
                trCnt.Visible = true;
            }
        }
        catch (Exception ex)
        {
            Alert.ShowAlert(this, ex.Message);
        }
    }

    /// <summary>
    /// Binds for Office listings
    /// </summary>
    private void OfficeListings()
    {
        trSearch.Visible = true;
        BindData();
    }

    /// <summary>
    /// Binds for Search listings
    /// </summary>
    private void SearchListings()
    {
        dvSearch.Attributes.Add("style", "display:block");
        DataProcess.GetACMDetails(ref dsDetails);
        if (dsDetails.Tables.Count > 2)
        {
            UserFunctions.FillDropdown(ddlArea, dsDetails.Tables[0], "area");
            UserFunctions.FillDropdown(ddlMunicipality, dsDetails.Tables[1], "Municipality");
            UserFunctions.FillDropdown(ddlCommunity, dsDetails.Tables[2], "Community");
        }
        rptPages.Visible = false;
        rptTreb.Visible = false;
        trSearch.Visible = trCnt.Visible = false;
    }

    #endregion
}
