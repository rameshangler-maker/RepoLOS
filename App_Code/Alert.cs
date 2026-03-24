using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for Alert
/// </summary>
public class Alert
{
	public Alert()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    /// <summary>
    /// Shows the Alert
    /// </summary>
    /// <param name="pageName"></param>
    /// <param name="Msg"></param>
    public static void ShowAlert(Page pageName, string Msg)
    {
        ScriptManager.RegisterStartupScript(pageName, pageName.GetType(), new Random().Next().ToString(), "alert(\" " + Msg.Replace("'", "") + "\" );", true);
    }

    /// <summary>
    /// Shows the Alert with redirect
    /// </summary>
    /// <param name="pageName"></param>
    /// <param name="Msg"></param>
    /// <param name="reDirect"></param>
    public static void ShowAlert(Page pageName, string Msg, string reDirect)
    {
        ScriptManager.RegisterStartupScript(pageName, pageName.GetType(), "AlertIndex", "alert(\" " + Msg.Replace("'", "") + "\" );window.location=\" " + reDirect + "\";", true);
    }
}
