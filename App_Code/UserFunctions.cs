using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;

/// <summary>
/// Summary description for UserFunctions
/// </summary>
public class UserFunctions
{
	public UserFunctions()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    /// <summary>
    /// To fill the dropdown values
    /// </summary>
    /// <param name="ddlToFill"></param>
    /// <param name="dtData"></param>
    /// <param name="TextField"></param>
    public static void FillDropdown(DropDownList ddlToFill, DataTable dtData, string TextField)
    {
        ddlToFill.AppendDataBoundItems = true;
        ddlToFill.Items.Clear();
        ddlToFill.Items.Insert(0, new ListItem("All", "-1"));
        ddlToFill.DataSource = dtData;
        ddlToFill.DataTextField = TextField;
        ddlToFill.DataValueField = TextField;
        ddlToFill.DataBind();
    }
}
