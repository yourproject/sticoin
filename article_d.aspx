<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeBehind="article_d.aspx.cs" Inherits="myCom.Web.article_d" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="/css/detial.css" rel="stylesheet" />
    <script>

        $(function () {
            var mbx = "<%=tmbx%>";
            $(".modtit,.mbxpn").html(mbx);
        })
        
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMiddle" runat="server">
    
    <div class="tit">
        <span class="txt modtit">关于我们</span>
        <div class="mbx">首页 &gt; <span class="mbxpn">关于我们</span></div>
        <div class="clear"></div>
    </div>
    <div class="cnt">
<div class="d_main">
    <div class="d_title"><%=n_tit %></div>
    <div class="d_tools">
        更新时间：<%=addDate %>　
        点击量：<%=clicks %>　
	    <%--<a href="javascript:self.close()" style="color:#919191;" >Close</a>
        <a href="javascript:window.print()" style="color:#919191;" >Print</a>--%>
    </div>
    <%--<div class="d_img">
        <%=n_img%>
    </div>--%>
    <section id="content" class="d_cnt"><%=n_cnt %></section>
    <div id="yema"></div>
    <div class="pre_next"><%=pre_next %></div>
</div>

</div>

</asp:Content>
