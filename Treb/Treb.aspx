<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Treb.aspx.cs" Inherits="Contents_Treb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Listings</title>
    <meta http-equiv="Page-Enter" content="blendTrans(Duration=0)" />
    <meta http-equiv="Page-Exit" content="blendTrans(Duration=0)" />
    <link href="../Styles/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="width: 475px" onload="SetFocus()">
    <form id="form1" runat="server">
    <div id="fb-root">
    </div>

    <script type="text/javascript">
        window.fbAsyncInit = function() {
            FB.init({ appId: '<%=AppID %>', status: true, cookie: true, xfbml: true });
            FB.Canvas.setSize({ height: 6500 });
        };
        (function() {
            var e = document.createElement('script');
            e.type = 'text/javascript';
            e.src = document.location.protocol +
                    '//connect.facebook.net/en_US/all.js';
            e.async = true;
            document.getElementById('fb-root').appendChild(e);
        } ());
    </script>

    <asp:ScriptManager ID="scTreb" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="upTreb" runat="server">
        <ContentTemplate>
            <div style="width: 470px">
                <asp:Button ID="btnFind" runat="server" Width="0px" Height="0px" />
                <div>
                    This page provides you with information about my favourite listings. If there is
                    a property that appeals to you, please arrange an appointment with me at your convenience.
                    You can contact me through phone, e-mail, or in person. If you are interested in
                    selling your property, I can list it on our website.
                    <br />
                </div>
                <div class="like" id="dvLike" runat="server">
                    First → <i>Like</i> this page! ↑</div>
               
                <div id="dvSearch" class="menu" runat="server" style="display: none">
                    <asp:Panel ID="pnlRegistration" runat="server" DefaultButton="btnSearch">
                        <div class="r1">
                            <span class="longtext">Select Area</span><span class="Colon">:</span>
                            <asp:DropDownList ID="ddlArea" runat="server" Width="150px">
                            </asp:DropDownList>
                        </div>
                        <div class="r1">
                            <span class="longtext">Select Municipality</span><span class="Colon">:</span>
                            <asp:DropDownList ID="ddlMunicipality" runat="server" Width="150px">
                            </asp:DropDownList>
                        </div>
                        <div class="r1">
                            <span class="longtext">Select Community</span><span class="Colon">:</span>
                            <asp:DropDownList ID="ddlCommunity" runat="server" Width="150px">
                            </asp:DropDownList>
                        </div>
                        <div class="r1">
                            <span class="longtext">Select Price</span><span class="Colon">:</span>
                            <asp:DropDownList ID="ddlFrom" runat="server" Width="75px">
                                <asp:ListItem Text="All" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="$0" Value="0"></asp:ListItem>
                                <asp:ListItem Text="$1,000" Value="1000"></asp:ListItem>
                                <asp:ListItem Text="$1,100" Value="1100"></asp:ListItem>
                                <asp:ListItem Text="$1,200" Value="1200"></asp:ListItem>
                                <asp:ListItem Text="$1,300" Value="1300"></asp:ListItem>
                                <asp:ListItem Text="$1,400" Value="1400"></asp:ListItem>
                                <asp:ListItem Value="1500" Text="$1,500"></asp:ListItem>
                                <asp:ListItem Value="1600" Text="$1,600"></asp:ListItem>
                                <asp:ListItem Value="1700" Text="$1,700"></asp:ListItem>
                                <asp:ListItem Value="1800" Text="$1,800"></asp:ListItem>
                                <asp:ListItem Value="1900" Text="$1,900"></asp:ListItem>
                                <asp:ListItem Value="2000" Text="$2,000"></asp:ListItem>
                                <asp:ListItem Value="2100" Text="$2,100"></asp:ListItem>
                                <asp:ListItem Value="2200" Text="$2,200"></asp:ListItem>
                                <asp:ListItem Value="2300" Text="$2,300"></asp:ListItem>
                                <asp:ListItem Value="2400" Text="$2,400"></asp:ListItem>
                                <asp:ListItem Value="2500" Text="$2,500"></asp:ListItem>
                                <asp:ListItem Value="2600" Text="$2,600"></asp:ListItem>
                                <asp:ListItem Value="2700" Text="$2,700"></asp:ListItem>
                                <asp:ListItem Value="2800" Text="$2,800"></asp:ListItem>
                                <asp:ListItem Value="2900" Text="$2,900"></asp:ListItem>
                                <asp:ListItem Value="3000" Text="$3,000"></asp:ListItem>
                                <asp:ListItem Value="3500" Text="$3,500"></asp:ListItem>
                                <asp:ListItem Value="4000" Text="$4,000"></asp:ListItem>
                                <asp:ListItem Value="4500" Text="$4,500"></asp:ListItem>
                                <asp:ListItem Value="5000" Text="$5,000"></asp:ListItem>
                                <asp:ListItem Value="10000" Text="$10,000"></asp:ListItem>
                                <asp:ListItem Value="20000" Text="$20,000"></asp:ListItem>
                                <asp:ListItem Value="30000" Text="$30,000"></asp:ListItem>
                                <asp:ListItem Value="40000" Text="$40,000"></asp:ListItem>
                                <asp:ListItem Value="50000" Text="$50,000"></asp:ListItem>
                                <asp:ListItem Value="60000" Text="$60,000"></asp:ListItem>
                                <asp:ListItem Value="70000" Text="$70,000"></asp:ListItem>
                                <asp:ListItem Value="80000" Text="$80,000"></asp:ListItem>
                                <asp:ListItem Value="90000" Text="$90,000"></asp:ListItem>
                                <asp:ListItem Value="100000" Text="$100,000"></asp:ListItem>
                                <asp:ListItem Value="150000" Text="$150,000"></asp:ListItem>
                                <asp:ListItem Value="200000" Text="$200,000"></asp:ListItem>
                                <asp:ListItem Value="250000" Text="$250,000"></asp:ListItem>
                                <asp:ListItem Value="300000" Text="$300,000"></asp:ListItem>
                                <asp:ListItem Value="350000" Text="$350,000"></asp:ListItem>
                                <asp:ListItem Value="400000" Text="$400,000"></asp:ListItem>
                                <asp:ListItem Value="450000" Text="$450,000"></asp:ListItem>
                                <asp:ListItem Value="500000" Text="$500,000"></asp:ListItem>
                                <asp:ListItem Value="550000" Text="$550,000"></asp:ListItem>
                                <asp:ListItem Value="600000" Text="$600,000"></asp:ListItem>
                                <asp:ListItem Value="650000" Text="$650,000"></asp:ListItem>
                                <asp:ListItem Value="700000" Text="$700,000"></asp:ListItem>
                                <asp:ListItem Value="750000" Text="$750,000"></asp:ListItem>
                                <asp:ListItem Value="800000" Text="$800,000"></asp:ListItem>
                                <asp:ListItem Value="850000" Text="$850,000"></asp:ListItem>
                                <asp:ListItem Value="900000" Text="$900,000"></asp:ListItem>
                                <asp:ListItem Value="950000" Text="$950,000"></asp:ListItem>
                                <asp:ListItem Value="1000000" Text="$1,000,000"></asp:ListItem>
                                <asp:ListItem Value="2000000" Text="$2,000,000"></asp:ListItem>
                                <asp:ListItem Value="3000000" Text="$3,000,000"></asp:ListItem>
                                <asp:ListItem Value="4000000" Text="$4,000,000"></asp:ListItem>
                                <asp:ListItem Value="5000000" Text="$5,000,000"></asp:ListItem>
                                <asp:ListItem Value="6000000" Text="$6,000,000"></asp:ListItem>
                                <asp:ListItem Value="7000000" Text="$7,000,000"></asp:ListItem>
                                <asp:ListItem Value="8000000" Text="$8,000,000"></asp:ListItem>
                                <asp:ListItem Value="9000000" Text="$9,000,000"></asp:ListItem>
                                <asp:ListItem Value="10000000" Text="$10,000,000"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlTo" runat="server" Width="75px">
                                <asp:ListItem Text="All" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="$0" Value="0"></asp:ListItem>
                                <asp:ListItem Text="$1,000" Value="1000"></asp:ListItem>
                                <asp:ListItem Text="$1,100" Value="1100"></asp:ListItem>
                                <asp:ListItem Text="$1,200" Value="1200"></asp:ListItem>
                                <asp:ListItem Text="$1,300" Value="1300"></asp:ListItem>
                                <asp:ListItem Text="$1,400" Value="1400"></asp:ListItem>
                                <asp:ListItem Value="1500" Text="$1,500"></asp:ListItem>
                                <asp:ListItem Value="1600" Text="$1,600"></asp:ListItem>
                                <asp:ListItem Value="1700" Text="$1,700"></asp:ListItem>
                                <asp:ListItem Value="1800" Text="$1,800"></asp:ListItem>
                                <asp:ListItem Value="1900" Text="$1,900"></asp:ListItem>
                                <asp:ListItem Value="2000" Text="$2,000"></asp:ListItem>
                                <asp:ListItem Value="2100" Text="$2,100"></asp:ListItem>
                                <asp:ListItem Value="2200" Text="$2,200"></asp:ListItem>
                                <asp:ListItem Value="2300" Text="$2,300"></asp:ListItem>
                                <asp:ListItem Value="2400" Text="$2,400"></asp:ListItem>
                                <asp:ListItem Value="2500" Text="$2,500"></asp:ListItem>
                                <asp:ListItem Value="2600" Text="$2,600"></asp:ListItem>
                                <asp:ListItem Value="2700" Text="$2,700"></asp:ListItem>
                                <asp:ListItem Value="2800" Text="$2,800"></asp:ListItem>
                                <asp:ListItem Value="2900" Text="$2,900"></asp:ListItem>
                                <asp:ListItem Value="3000" Text="$3,000"></asp:ListItem>
                                <asp:ListItem Value="3500" Text="$3,500"></asp:ListItem>
                                <asp:ListItem Value="4000" Text="$4,000"></asp:ListItem>
                                <asp:ListItem Value="4500" Text="$4,500"></asp:ListItem>
                                <asp:ListItem Value="5000" Text="$5,000"></asp:ListItem>
                                <asp:ListItem Value="10000" Text="$10,000"></asp:ListItem>
                                <asp:ListItem Value="20000" Text="$20,000"></asp:ListItem>
                                <asp:ListItem Value="30000" Text="$30,000"></asp:ListItem>
                                <asp:ListItem Value="40000" Text="$40,000"></asp:ListItem>
                                <asp:ListItem Value="50000" Text="$50,000"></asp:ListItem>
                                <asp:ListItem Value="60000" Text="$60,000"></asp:ListItem>
                                <asp:ListItem Value="70000" Text="$70,000"></asp:ListItem>
                                <asp:ListItem Value="80000" Text="$80,000"></asp:ListItem>
                                <asp:ListItem Value="90000" Text="$90,000"></asp:ListItem>
                                <asp:ListItem Value="100000" Text="$100,000"></asp:ListItem>
                                <asp:ListItem Value="150000" Text="$150,000"></asp:ListItem>
                                <asp:ListItem Value="200000" Text="$200,000"></asp:ListItem>
                                <asp:ListItem Value="250000" Text="$250,000"></asp:ListItem>
                                <asp:ListItem Value="300000" Text="$300,000"></asp:ListItem>
                                <asp:ListItem Value="350000" Text="$350,000"></asp:ListItem>
                                <asp:ListItem Value="400000" Text="$400,000"></asp:ListItem>
                                <asp:ListItem Value="450000" Text="$450,000"></asp:ListItem>
                                <asp:ListItem Value="500000" Text="$500,000"></asp:ListItem>
                                <asp:ListItem Value="550000" Text="$550,000"></asp:ListItem>
                                <asp:ListItem Value="600000" Text="$600,000"></asp:ListItem>
                                <asp:ListItem Value="650000" Text="$650,000"></asp:ListItem>
                                <asp:ListItem Value="700000" Text="$700,000"></asp:ListItem>
                                <asp:ListItem Value="750000" Text="$750,000"></asp:ListItem>
                                <asp:ListItem Value="800000" Text="$800,000"></asp:ListItem>
                                <asp:ListItem Value="850000" Text="$850,000"></asp:ListItem>
                                <asp:ListItem Value="900000" Text="$900,000"></asp:ListItem>
                                <asp:ListItem Value="950000" Text="$950,000"></asp:ListItem>
                                <asp:ListItem Value="1000000" Text="$1,000,000"></asp:ListItem>
                                <asp:ListItem Value="2000000" Text="$2,000,000"></asp:ListItem>
                                <asp:ListItem Value="3000000" Text="$3,000,000"></asp:ListItem>
                                <asp:ListItem Value="4000000" Text="$4,000,000"></asp:ListItem>
                                <asp:ListItem Value="5000000" Text="$5,000,000"></asp:ListItem>
                                <asp:ListItem Value="6000000" Text="$6,000,000"></asp:ListItem>
                                <asp:ListItem Value="7000000" Text="$7,000,000"></asp:ListItem>
                                <asp:ListItem Value="8000000" Text="$8,000,000"></asp:ListItem>
                                <asp:ListItem Value="9000000" Text="$9,000,000"></asp:ListItem>
                                <asp:ListItem Value="10000000" Text="$10,000,000"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="r1">
                            <span class="longtext">Select Class</span><span class="Colon">:</span><asp:DropDownList
                                ID="ddlClass" runat="server" Width="75px">
                                <asp:ListItem Text="All" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Residential" Value="Free"></asp:ListItem>
                                <asp:ListItem Text="Condo" Value="Condo"></asp:ListItem>
                                <asp:ListItem Text="Commercial" Value="Com"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </asp:Panel>
                    <div>
                        <asp:Button ID="btnSearch" Text="Search" runat="server" OnClick="btnSearch_Click"
                            OnClientClick="return ValidData()" />
                    </div>
                </div>
                <div style="float: left;">
                    <table width="475px" cellspacing="0" cellpadding="5" border="0" bgcolor="#FFFFFF">
                        <tbody>
                            <tr id="trCnt" runat="server">
                                <td>
                                    <b>
                                        <%=TrebCnt%>
                                        <%=resData%></b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table cellspacing="0" border="0" cellpadding="3">
                                        <tbody>
                                            <tr id="trSearch" runat="server" visible="false">
                                                <td width="20%" bgcolor="#e3e3e3" align="left" colspan="2">
                                                    <asp:ImageButton ID="imgFree" runat="server" CommandArgument="Free" ImageUrl="~/Images/Residential.gif"
                                                        OnClick="imgFree_Click" />
                                                </td>
                                                <td width="60%" bgcolor="#e3e3e3" align="center" colspan="2">
                                                    <asp:ImageButton ID="imgCondo" runat="server" CommandArgument="Condo" ImageUrl="~/Images/condo.gif"
                                                        OnClick="imgFree_Click" />
                                                </td>
                                                <td width="20%" bgcolor="#e3e3e3" align="right">
                                                    <asp:ImageButton ID="imgCom" runat="server" CommandArgument="Com" ImageUrl="~/Images/Com.gif"
                                                        OnClick="imgFree_Click" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="20%" align="left" colspan="2">
                                                    <b>&nbsp;</b>
                                                </td>
                                                <td width="60%" align="center" colspan="2">
                                                    <b>&nbsp;</b>
                                                </td>
                                                <td width="20%" align="right">
                                                    <b>&nbsp;</b>
                                                </td>
                                            </tr>
                                            <asp:Repeater ID="rptTreb" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td width="20%" bgcolor="#e3e3e3" align="left" colspan="2">
                                                            <b>$<%#Eval("22")%></b>
                                                        </td>
                                                        <td width="60%" bgcolor="#e3e3e3" align="center" colspan="2">
                                                            <b>
                                                                <%#Eval("42")%></b>&nbsp;
                                                        </td>
                                                        <td width="20%" bgcolor="#e3e3e3" align="right" colspan="2">
                                                            <b>
                                                                <%#Eval("32")%></b>&nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="top" align="center" rowspan="1">
                                                            <a href="trebitem.aspx?itemid=<%#Eval("id")%>">
                                                                <img width="130" id='<%#Eval("id")%>' height="95" border="1" src='<%#Eval("mainimage")%>'
                                                                    onerror="ImageLoadFailed(this)" alt='' /></a>
                                                        </td>
                                                        <td valign="top" align="left" colspan="2" rowspan="1">
                                                        </td>
                                                        <td width="400" valign="top" align="left" colspan="3">
                                                            <font size="2" face="Arial" color="#003366"><strong></strong></font><font size="2"
                                                                face="Arial"><u><b><a href="trebitem.aspx?itemid=<%#Eval("id")%>"><font color="#000000">
                                                                    <%#Eval("12")%></font></a></b></u></font> <font size="2" face="Arial" color="#003366">
                                                                        <strong>&nbsp;</strong></font><br>
                                                            <font size="2" face="Arial">
                                                                <%#Eval("212")%></font><br>
                                                            <a href="http://maps.google.com/maps?f=q&amp;hl=en&amp;q=<%#Eval("42")%>" target="_blank">
                                                                <img border="0" align="right" src="http://www.easywebonline.com/ewr/images/GoogleMaps.gif"
                                                                    alt='' /></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="bottom" align="left" colspan="2">
                                                            <font size="2" face="Arial" color="#003366"></font>
                                                        </td>
                                                        <td valign="bottom" align="right">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6">
                                                            <hr size="1">
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <tr>
                                                <td colspan="5">
                                                    <asp:Repeater ID="rptPages" runat="server">
                                                        <HeaderTemplate>
                                                            <table cellpadding="0" cellspacing="0" border="0">
                                                                <tr>
                                                                    <td>
                                                                        <b>Page:</b>&nbsp;
                                                                    </td>
                                                                    <td>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <asp:Button ID="btnPage" CommandName="Page" CommandArgument="<%#
                         Container.DataItem %>" runat="server" Text="<%# Container.DataItem %>" />
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            </td> </tr> </table>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="rptPages" />
            <asp:PostBackTrigger ControlID="btnSearch" />
            <asp:PostBackTrigger ControlID="imgFree" />
            <asp:PostBackTrigger ControlID="imgCondo" />
            <asp:PostBackTrigger ControlID="imgCom" />
        </Triggers>
    </asp:UpdatePanel>
    <span style="float: right"><a href="http://www.ListOnSocial.com" target="_blank">
        <img src="../Images/Powered-By.jpg" alt="" /></a></span>

    <script type="text/javascript" language="javascript">
        function SetFocus() {
            document.getElementById('btnFind').focus();
            document.getElementById('btnFind').setAttribute("style", "display:none");
        }

        function ValidData() {
            var ddlFrom = document.getElementById('<%=ddlFrom.ClientID %>');
            var ddlTo = document.getElementById('<%=ddlTo.ClientID %>');
            if (ddlFrom.options[ddlFrom.selectedIndex].value != "-1" && ddlTo.options[ddlTo.selectedIndex].value != "-1") {
                if (parseInt(ddlFrom.options[ddlFrom.selectedIndex].value) > parseInt(ddlTo.options[ddlTo.selectedIndex].value)) {
                    alert('From amount should be lower than the To amount');
                    ddlFrom.focus();
                    return false;
                }
            }
            else if (ddlFrom.options[ddlFrom.selectedIndex].value == "-1" && ddlTo.options[ddlTo.selectedIndex].value != "-1") {
                alert('Please select From Amount');
                ddlFrom.focus();
                return false;
            }
            else if (ddlFrom.options[ddlFrom.selectedIndex].value != "-1" && ddlTo.options[ddlTo.selectedIndex].value == "-1") {
                alert('Please select To Amount');
                ddlTo.focus();
                return false;
            }
        }

        function ImageLoadFailed(me) {
            me.style.display = 'none';
        }
    </script>

    </form>
</body>
</html>
