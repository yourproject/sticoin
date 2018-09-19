<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeBehind="article.aspx.cs" Inherits="myCom.Web.article" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/css/article.css" rel="stylesheet" />
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script>

        $(function () {
            var tmbx = "<%=tmbx%>";
            $(".modtit,.mbxpn").html(tmbx);
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMiddle" runat="server">
    <div class="tit">
        <span class="txt modtit">关于我们</span>
        <div class="mbx">首页 &gt; <span class="mbxpn">关于我们</span></div>
        <div class="clear"></div>
    </div>
    <div class="cnt">


        <asp:Panel ID="p_page" runat="server" Visible="false">
            <div class="pcnt">
                <%=pageStr%>
            </div>
            <div id="yema"></div>
        </asp:Panel>


        <asp:Panel ID="p_news" runat="server" Visible="false">
            <%--<div class="topd pdemo pdemo2">
                <div class="lleft ppic">
                    <img src="<%=ttpic %>" /></div>
                <div class="lleft pname">
                    <div style="font-weight: bold; font-size: 18px;"><%=tmbx %></div>
                    <%=tcnt %>
                </div>
                <div class="clear"></div>
            </div>--%>
            <div class="clear"></div>
            <asp:Repeater ID="rptNews" runat="server">
                <ItemTemplate>
                    <%--<div class="newc">
                        <div class="tit"><a href='<%#myCom.Web.UrlHelper.GetLinks("article_d",Eval("Id").ToString()) %>'><%#Eval("title") %></a></div>
                        <div class="det"><a href='<%#myCom.Web.UrlHelper.GetLinks("article_d",Eval("Id").ToString()) %>'><%#myCom.Common.ChangeType.getDate(Eval("addDate")).ToString("yyyy-MM-dd") %>　点击查看详情<span class="iconfont">&#xe608;</span></a></div>
                        <div class="clear"></div>
                    </div>--%>
                    
                    <div class="wzlist">
                        <%#string.IsNullOrWhiteSpace(Eval("pic").ToString())?"":"<div class=\"pics\"><a href=\""+myCom.Web.UrlHelper.GetLinks("article_d",Eval("Id").ToString())+"\"><img src=\""+Eval("pic")+"\"></a></div>" %>
                        <div class="tit"><a href='<%#myCom.Web.UrlHelper.GetLinks("article_d",Eval("Id").ToString()) %>'><%#Eval("title") %></a></div>
                        <div class="cnt"><%#new myCom.Common.myTools().noHtml(Eval("cnt").ToString(),150)%></div>
                        <div class="clear"></div>
                        <div class="date">发布时间：<%#myCom.Common.ChangeType.getDate(Eval("addDate")).ToString("yyyy-MM-dd") %></div>
                        <div class="clear"></div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>


            <%--        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="xx">
            <tbody><tr>
                <td width="32" height="30" align="center"><img src="/images/a_003.jpg" alt=""></td>
                <td align="left"><a href='<%#"/html_l.aspx?pid=0&&id="+Eval("Id") %>' title='<%#Eval("title") %>'><%#Eval("title")%></a> </td>
                
            </tr>
            </tbody></table>--%>
        </asp:Panel>

        <asp:Panel ID="p_product" runat="server" Visible="false">
            <div class="plist4">
                <asp:Repeater ID="rptPro" runat="server">
                    <ItemTemplate>
                        <div class="pdemo">
                            <div class="ppic">
                                <table>
                                    <tr>
                                        <td valign="middle">
                                            <a href='<%#myCom.Web.UrlHelper.GetLinks("article_p",Eval("Id").ToString()) %>' title='<%#Eval("title") %>'>
                                                <img src='<%#Eval("pic") %>' alt='<%#Eval("title") %>'></a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="pname txtout"><%#Eval("title") %></div>
                            <div class="clear"></div>
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
                <div class="clear"></div>
            </div>
        </asp:Panel>



        <asp:Panel ID="p_pic" runat="server" Visible="false">
            <div class="plist4">

                <asp:Repeater ID="rptPic" runat="server">
                    <ItemTemplate>
                        <div class="pdemo">
                            <div class="ppic">
                                <table height="100%" width="100%;">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <a href='<%#"/html_p.aspx?id="+Eval("Id") %>'>
                                                <img src='<%#Eval("pic") %>' alt='<%#Eval("title") %>'></a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="clear"></div>
                            <div class="pname"><a href='<%#"/html_p.aspx?id="+Eval("Id") %>'><%#Eval("title")%></a></div>
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
                <div class="clear"></div>
            </div>

        </asp:Panel>


        <asp:Panel ID="p_team" runat="server" Visible="false">


            <div class="plist4">

                <asp:Repeater ID="rptTeam" runat="server">
                    <ItemTemplate>
                        <div class="pdemo">
                            <div class="ppic">
                                <table height="100%" width="100%;">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <a href='<%#"/html_sjs.aspx?id="+Eval("Id") %>'>
                                                <img src='<%#Eval("pic") %>' alt='<%#Eval("title") %>'></a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="clear"></div>
                            <div class="pname"><a href='<%#"/html_sjs.aspx?id="+Eval("Id") %>'><%#Eval("title")%></a></div>
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
                <div class="clear"></div>
            </div>



        </asp:Panel>


        <asp:Panel ID="p_down" runat="server" Visible="false">
            <table class="xx">
                <tr>
                    <td class="cnh">标题
                    </td>
                    <td width="50" class="cnh">下载
                    </td>
                </tr>
                <asp:Repeater ID="rptDown" runat="server">
                    <ItemTemplate>

                        <tr>
                            <td class="cnr">
                                <a href='<%#Eval("pic") %>' target="_blank"><%#Eval("title") %></a>
                            </td>
                            <td class="cnr">
                                <a href='<%#Eval("pic") %>' target="_blank">下载</a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>

        </asp:Panel>


        <asp:Panel ID="p_leave" runat="server" Visible="false" EnableViewState="true">
            <table class="p100">
                <tr>
                    <td class="td1">标题：</td>
                    <td>
                        <asp:TextBox ID="t1" CssClass="inbox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="td1">姓名：</td>
                    <td>
                        <asp:TextBox ID="t3" CssClass="inbox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="td1">联系方式：</td>
                    <td>
                        <asp:TextBox ID="t4" CssClass="inbox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="td1" valign="top">留言内容：</td>
                    <td>
                        <asp:TextBox ID="t2" TextMode="MultiLine" CssClass="inbox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="td1">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnLeave" CssClass="sbtn" runat="server" Text="提交" OnClick="btnLeave_Click" />
                        <input type="reset" class="sbtn" value="重置" />
                    </td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="p_pages" runat="server" Visible="false">
            <div class="clear" style="height:30px;"></div>
            <div class="pages">
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" CssClass="k"
                    CustomInfoHTML="%CurrentPageIndex%/%PageCount%" CustomInfoTextAlign="Left" ShowFirstLast="false"
                    FirstPageText="首页" LastPageText="末页" NextPageText="下一页" PrevPageText="上一页"
                    UrlPaging="True" PageSize="12" ShowPageIndexBox="Never">
                </webdiyer:AspNetPager>
                 <%--EnableUrlRewriting="True" UrlRewritePattern="article/%Id%/%sdate%/%edate%/{0}.html"--%>
                <div style="clear: both;"></div>
            </div>

        </asp:Panel>

    </div>
</asp:Content>
