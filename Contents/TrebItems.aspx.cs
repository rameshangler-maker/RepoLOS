using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Contents_TrebItems : System.Web.UI.Page
{
    #region Variable Declaration
    DataSet dsTrebItem = new DataSet();
    string strDesc = string.Empty;
    string strImg = string.Empty;
    #endregion

    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["ItemId"]))
            {
                try
                {
                    DataProcess.GetTrebRSS(ref dsTrebItem, null, "Item", Convert.ToInt32(Request.QueryString["ItemId"]));
                    if (dsTrebItem.Tables[0].Rows.Count > 0)
                    {
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["mainimagetn"])))
                            strImg = UrlExists(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["mainimagetn"])).ToString();

                        if (strImg == "True")
                        {
                            liimgmain.Visible = true;
                            imgmain.Visible = true;
                            imgmain.Src = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["mainimagetn"]);
                        }
                        lblPrice.Text = "$" + Convert.ToString(dsTrebItem.Tables[0].Rows[0]["22"]);

                        lblStatus.Text = "<b>" + "For " + Convert.ToString(dsTrebItem.Tables[0].Rows[0]["32"]) + "</b>";

                        lblMLS.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["12"]).Replace("MLS®:", "");

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["52"])))
                        {
                            liPropertyType.Visible = true;
                            lblPropertyType.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["52"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["62"])))
                        {
                            liCategory.Visible = true;
                            lblCategory.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["62"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["72"])))
                        {
                            liSubcategory.Visible = true;
                            lblSubCategory.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["72"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["82"])))
                        {
                            liHouseStyle.Visible = true;
                            lblHouseStyle.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["82"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["92"])))
                        {
                            liAge.Visible = true;
                            lblAge.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["92"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["102"])))
                        {
                            liBedrooms.Visible = true;
                            lblBedrooms.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["102"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["112"])))
                        {
                            liBathrooms.Visible = true;
                            lblBathrooms.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["112"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["122"])))
                        {
                            liFireplace.Visible = true;
                            lblFireplace.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["122"]);
                        }

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["142"])))
                        {
                            liPool.Visible = true;
                            lblPool.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["142"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["152"])))
                        {
                            liWaterfront.Visible = true;
                            lblWaterfront.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["152"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["162"])))
                        {
                            liWorkshop.Visible = true;
                            lblWorkshop.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["162"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["172"])))
                        {
                            liHouseSize.Visible = true;
                            lblHousesize.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["172"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["182"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["182"]);

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["192"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["192"]);

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["202"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["202"]);

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["212"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["212"]);

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["222"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["222"]);

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["232"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["232"]);

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["242"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["242"]);

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["252"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["252"]);

                        if (string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["262"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["262"]);

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["272"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["272"]);

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["282"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["282"]);

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["292"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["292"]);

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["302"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["302"]);

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["312"])))
                            Convert.ToString(dsTrebItem.Tables[0].Rows[0]["312"]);
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["202"])))
                        {
                            dvFeatures.Visible = true;
                            lblFeatures.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["202"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["212"])))
                        {
                            dvOtherDescription.Visible = true;
                            lblOtherDescription.Text = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["212"]);
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image1tn"])))
                        {
                            strImg = UrlExists(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image1tn"])).ToString();
                            if (strImg == "True")
                            {
                                ulImages.Visible = true;
                                liimg1.Visible = true;
                                img1.Visible = true;
                                img1.Src = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image1tn"]);
                            }
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image2tn"])))
                        {
                            strImg = UrlExists(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image2tn"])).ToString();
                            if (strImg == "True")
                            {
                                liimg2.Visible = true;
                                img2.Visible = true;
                                img2.Src = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image2tn"]);
                            }
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image3tn"])))
                        {
                            strImg = UrlExists(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image3tn"])).ToString();
                            if (strImg == "True")
                            {
                                liimg3.Visible = true;
                                img3.Visible = true;
                                img3.Src = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image3tn"]);
                            }
                        }

                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image4tn"])))
                        {
                            strImg = UrlExists(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image4tn"])).ToString();
                            if (strImg == "True")
                            {
                                liimg4.Visible = true;
                                img4.Visible = true;
                                img4.Src = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image4tn"]);
                            }
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image5tn"])))
                        {
                            strImg = UrlExists(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image5tn"])).ToString();
                            if (strImg == "True")
                            {
                                liimg5.Visible = true;
                                img5.Visible = true;
                                img5.Src = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image5tn"]);
                            }
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image6tn"])))
                        {
                            strImg = UrlExists(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image6tn"])).ToString();
                            if (strImg == "True")
                            {
                                liimg6.Visible = true;
                                img6.Visible = true;
                                img6.Src = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image6tn"]);
                            }
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image7tn"])))
                        {
                            strImg = UrlExists(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image7tn"])).ToString();
                            if (strImg == "True")
                            {
                                liimg7.Visible = true;
                                img7.Visible = true;
                                img7.Src = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image7tn"]);
                            }
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image8tn"])))
                        {
                            strImg = UrlExists(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image8tn"])).ToString();
                            if (strImg == "True")
                            {
                                liimg8.Visible = true;
                                img8.Visible = true;
                                img8.Src = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image8tn"]);
                            }
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image9tn"])))
                        {
                            strImg = UrlExists(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image9tn"])).ToString();
                            if (strImg == "True")
                            {
                                liimg9.Visible = true;
                                img9.Visible = true;
                                img9.Src = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image9tn"]);
                            }
                        }
                        if (!string.IsNullOrEmpty(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image10tn"])))
                        {
                            strImg = UrlExists(Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image10tn"])).ToString();
                            if (strImg == "True")
                            {
                                liimg10.Visible = true;
                                img10.Visible = true;
                                img10.Src = Convert.ToString(dsTrebItem.Tables[0].Rows[0]["image10tn"]);
                            }
                        }
                    }
                }
                catch
                {

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
