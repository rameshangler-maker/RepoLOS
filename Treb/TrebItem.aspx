<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TrebItem.aspx.cs" Inherits="Contents_TrebItem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Page-Enter" content="blendTrans(Duration=0)" />
    <meta http-equiv="Page-Exit" content="blendTrans(Duration=0)" />
    <link href="../Styles/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body onload="SetFocus()">
    <form id="form1" runat="server">
    <div id="fb-root">
    </div>

    <script language="javascript" type="text/javascript">
        function ImageLoadFailed(me) {
            me.style.display = 'none';
        }
        function SetFocus() {
            document.getElementById('anBack').focus();
            document.getElementById('btnFind').focus();
            document.getElementById('btnFind').setAttribute("style", "display:none");
        }
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

    <script language="javascript" type="text/javascript">
<!--
        function MM_preloadImages() { //v3.0
            var d = document; if (d.images) {
                if (!d.MM_p) d.MM_p = new Array();
                var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
                    if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; }
            }
        }
        function MM_swapImgRestore() { //v3.0
            var i, x, a = document.MM_sr; for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
        }
        function MM_findObj(n, d) { //v4.01
            var p, i, x; if (!d) d = document; if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
                d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p);
            }
            if (!(x = d[n]) && d.all) x = d.all[n]; for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
            for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
            if (!x && d.getElementById) x = d.getElementById(n); return x;
        }
        function MM_swapImage() { //v3.0
            var i, j = 0, x, a = MM_swapImage.arguments; document.MM_sr = new Array; for (i = 0; i < (a.length - 2); i += 3)
                if ((x = MM_findObj(a[i])) != null) { document.MM_sr[j++] = x; if (!x.oSrc) x.oSrc = x.src; x.src = a[i + 2]; }
        }
        //-->
        //-->

        function OpenWindow(Url) {
            newWin = windowHandle = window.open(Url, "ListOnSocial", "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=0,width=600,height=300,left = 0,top = 0");
            newWin.focus();
            return false;
        }
        
    </script>

    <asp:ScriptManager ID="scTreb" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="upTrebItem" runat="server">
        <ContentTemplate>
            <asp:Button ID="btnFind" runat="server" Width="0px" Height="0px" />
            <div style="width: 500px">
                <a id="anBack" onclick="(history.back())">
                    <img width='56' height='24' border='0' src='../Images/back.gif' alt='' /></a>
                <div id="like" style="width: 375px; word-wrap: break-word; float: right">
                    <fb:like send="true" href="http://apps.facebook.com/listonsocial/" class=" fb_edge_widget_with_comment fb_iframe_widget">
                    </fb:like>
                </div>
            </div>
            <asp:Repeater ID="rptTrebItem" runat="server">
                <ItemTemplate>
                    <div style="width: 500px">
                    </div>
                    <div style="background-color: #e3e3e3; width: 500px">
                        <div style="width: 300px; float: left;">
                            <b>
                                <%# Eval("12")%>
                            </b>
                        </div>
                        <div style="width: 30px; float: left;">
                            <b>$<%# Eval("22")%>
                            </b>
                        </div>
                        <div align="right">
                            <b>
                                <%# Eval("32")%>
                            </b>
                        </div>
                    </div>
                    <div style="height: 780px;">
                        <div style="width: 270px; float: left">
                            <div>
                                <img alt='' id="_ctl0_imgHouse" width="256px" height="200px" src='<%#Convert.ToString(Eval("mainimage"))==null ? "/upload/noimage.jpg": Convert.ToString(Eval("mainimage"))%>' />
                            </div>
                            <div>
                                <p align="center" style="width: 275px">
                                    <b>
                                        <%# Eval("42")%></b></p>
                            </div>
                            <div>
                                <b>Area :</b>
                                <%# Eval("area")%>
                            </div>
                            <div>
                                <b>Municipality :</b>
                                <%# Eval("municipality")%>
                            </div>
                            <div>
                                <b>Community :</b>
                                <%# Eval("community")%>
                            </div>
                            <div>
                                <p align="left" style="width: 275px">
                                    <br>
                                    <%# Eval("212")%></p>
                            </div>
                            <div>
                                <%# Eval("VideoTour")%>
                            </div>
                            <div>
                                <iframe width="256px" height="256px" frameborder="1" scrolling="no" marginheight="0"
                                    marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=<%# Eval("42")%>&amp;ie=UTF8&amp;hq=<%# Eval("42")%>&amp;t=m&amp;z=16&amp;iwloc=&amp;output=embed">
                                </iframe>
                            </div>
                        </div>
                        <div style="width: 40px; padding: 0 10px 0 0; float: left;">
                            <div style="margin-bottom: 5px;">
                                <img alt="" border="1" width="38" height="30" src='<%# Eval("image1tn")%>' onerror="ImageLoadFailed(this)"
                                    id="image1tn" onmouseover="MM_swapImage('_ctl0_imgHouse','','<%# Eval("image1tn")%>',1)"
                                    style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("image1tn"))) ? "display:none;": "display:block;" %>' /></div>
                            <div style="margin-bottom: 5px;">
                                <img alt="" border="1" width="38" height="30" src='<%# Eval("image2tn")%>' onerror="ImageLoadFailed(this)"
                                    id="image2tn" onmouseover="MM_swapImage('_ctl0_imgHouse','','<%# Eval("image2tn")%>',1)"
                                    style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("image2tn"))) ? "display:none;": "display:block;" %>' />
                            </div>
                            <div style="margin-bottom: 5px;">
                                <img alt="" border="1" width="38" height="30" src='<%# Eval("image3tn")%>' onerror="ImageLoadFailed(this)"
                                    id="image3tn" onmouseover="MM_swapImage('_ctl0_imgHouse','','<%# Eval("image3tn")%>',1)"
                                    style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("image3tn"))) ? "display:none;": "display:block;" %>' />
                            </div>
                            <div style="margin-bottom: 5px;">
                                <img alt="" border="1" width="38" height="30" src='<%# Eval("image4tn")%>' onerror="ImageLoadFailed(this)"
                                    id="image4tn" onmouseover="MM_swapImage('_ctl0_imgHouse','','<%# Eval("image4tn")%>',1)"
                                    style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("image4tn"))) ? "display:none;": "display:block;" %>' />
                            </div>
                            <div style="margin-bottom: 5px;">
                                <img alt="" border="1" width="38" height="30" src='<%# Eval("image5tn")%>' onerror="ImageLoadFailed(this)"
                                    id="image5tn" onmouseover="MM_swapImage('_ctl0_imgHouse','','<%# Eval("image5tn")%>',1)"
                                    style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("image5tn"))) ? "display:none;": "display:block;" %>' />
                            </div>
                            <div style="margin-bottom: 5px;">
                                <img alt="" border="1" width="38" height="30" src='<%# Eval("image6tn")%>' onerror="ImageLoadFailed(this)"
                                    id="image6tn" onmouseover="MM_swapImage('_ctl0_imgHouse','','<%# Eval("image6tn")%>',1)"
                                    style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("image6tn"))) ? "display:none;": "display:block;" %>' />
                            </div>
                            <div style="margin-bottom: 5px;">
                                <img alt="" border="1" width="38" height="30" src='<%# Eval("image7tn")%>' onerror="ImageLoadFailed(this)"
                                    id="image7tn" onmouseover="MM_swapImage('_ctl0_imgHouse','','<%# Eval("image7tn")%>',1)"
                                    style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("image7tn"))) ? "display:none;": "display:block;" %>' />
                            </div>
                            <div style="margin-bottom: 5px;">
                                <img alt="" border="1" width="38" height="30" src='<%# Eval("image8tn")%>' onerror="ImageLoadFailed(this)"
                                    id="image8tn" onmouseover="MM_swapImage('_ctl0_imgHouse','','<%# Eval("image8tn")%>',1)"
                                    style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("image8tn")))? "display:none;": "display:block;" %>' />
                            </div>
                            <div style="margin-bottom: 5px;">
                                <img alt="" border="1" width="38" height="30" src='<%# Eval("image9tn")%>' onerror="ImageLoadFailed(this)"
                                    id="image9tn" onmouseover="MM_swapImage('_ctl0_imgHouse','','<%# Eval("image9tn")%>',1)"
                                    style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("image9tn")))? "display:none;": "display:block;" %>' />
                            </div>
                            <div style="margin-bottom: 5px;">
                                <img alt="" border="1" width="38" height="30" src='<%# Eval("image10tn")%>' onerror="ImageLoadFailed(this)"
                                    id="image10tn" onmouseover="MM_swapImage('_ctl0_imgHouse','','<%# Eval("image10tn")%>',1)"
                                    style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("image10tn")))? "display:none;": "display:block;" %>' />
                            </div>
                        </div>
                        <div style="width: 150px; float: left;">
                            <div>
                                <a class="anLink" target="_blank" href='http://twitter.com/share?text=<%#Eval("42")%>&url=http://apps.facebook.com/listonsocial/205727159486274/details/&via=listonsocial'>
                                    Share on Twitter</a>
                            </div>
                            <div>
                                <a class="anLink" onclick="OpenWindow('https://www.facebook.com/dialog/feed?app_id=<%=AppID %>&link=http://www.appbuilderonline.com/los/treb/treb.aspx?ItemId=<%#Eval("id")%>&display=popup&picture=<%#Eval("mainimage")%>&name=<%#Eval("42")%>&redirect_uri=http://www.appbuilderonline.com/los/treb/treb.aspx?ItemId=<%#Eval("id")%>')">
                                    Share on Facebook</a></div>
                            <div>
                                <b>
                                    <%# Eval("51")%></b><%# Eval("52")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("61")%></b><%# Eval("62")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("71")%></b><%# Eval("72")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("81")%></b><%# Eval("82")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("91")%></b><%# Eval("92")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("101")%></b><%# Eval("102")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("111")%></b><%# Eval("112")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("121")%></b><%# Eval("122")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("131")%></b><%# Eval("132")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("141")%></b><%# Eval("142")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("151")%></b><%# Eval("152")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("161")%></b><%# Eval("162")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("171")%></b><%# Eval("172")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("181")%></b><%# Eval("182")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("191")%></b><%# Eval("192")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("201")%></b><%# Eval("202")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("221")%></b><%# Eval("222")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("231")%></b><%# Eval("232")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("241")%></b><%# Eval("242")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("251")%></b><%# Eval("252")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("261")%></b><%# Eval("262")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("271")%></b><%# Eval("272")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("281")%></b><%# Eval("282")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("291")%></b><%# Eval("292")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("301")%></b><%# Eval("302")%>
                            </div>
                            <div>
                                <b>
                                    <%# Eval("311")%></b><%# Eval("312")%>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </ContentTemplate>
    </asp:UpdatePanel>
    <span style="float: right"><a href="http://www.ListOnSocial.com" target="_blank">
        <img src="../Images/Powered-By.jpg" alt="" /></a></span>
    </form>
</body>
</html>
