<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    Protected Sub Btnsearch_Click(sender As Object, e As EventArgs)

    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Rate My MP</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />


<script type="text/javascript" src="js/bootstrap.js"></script>
</head>

<body>
    <form id="frmhomepage" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnablePartialRendering="true"/>
<div id="main"> 
	<div id="main_container">
    	<div id="main_left">
        	<div class="logo">
            	<a href="index.aspx"><img src="img/LOG.png" /></a>
            </div>
            <div class="search_bar">
            	<h3>Select a Member</h3>
             <asp:UpdatePanel runat="server" ><ContentTemplate>
                <div class="select_outr">
                    <asp:DropDownList ID="DDListSate" runat="server" CssClass="member_select">
                        <items><asp:ListItem>State</asp:ListItem></items>
                    </asp:DropDownList>
                </div>
                <div class="select_outr">
                <asp:DropDownList ID="DDListConstituency" runat="server" CssClass="member_select">
                        <items><asp:ListItem>Constituency</asp:ListItem></items>
                    </asp:DropDownList>
                </div>
               </ContentTemplate></asp:UpdatePanel>
                <div class="search_button">
                    <asp:Button ID="Btnsearch" CssClass="btn" runat="server" Text="Search" OnClick="Btnsearch_Click" />
                </div>
               
               
            </div>
            <div class="main_left_links">
            	<ul class="nav nav_inner">
                	<li><a href="javascript:void(0);">About Us</a></li>
                    <li><a href="javascript:void(0);">Our Mission</a></li>
                    <li><a href="javascript:void(0);">Contact Us</a></li>
                </ul>
            </div>
        </div>
        <div id="main_right">
            <div id="home_container">
            	<div class="home_right">
                	<label class="user_outr">Hi User,</label>
                	<input type="button" class="btn btn_home" value="Home" />
                    <input type="button" class="btn btn_home" value="Logout" />
                   
                </div>
                
                	<div class="issue_links">
                    	<ul class="nav nav-pills">
                            <li><a href="javascript:void(0);">Trending Issues</a></li>
                            <li><a href="javascript:void(0);">Recent Issues</a></li>
                            <li><a href="javascript:void(0);">Most Popular Tags</a></li>
                        </ul>
                	</div>
                    <div class="search_box">
                    	<a href="javascipt:void(0);" class="icon-search search_icon"></a>
                        <input type="text" class="search-query seach_box_inner" value="Search for a Member,Constituency or a State" />
                    </div>
            </div>
            <div class="random_issue">
            	<div class="home_issue_outr">
                	<div class="home_left_pic"><img src="img/1.jpg" /></div>
                    <div class="home_right_detail">
                    	<div class="home_right_top">
                    		<label>Poorvi Mehta,</label>
                        	<label>Andheri East(Mumbai)</label>
                        	<label class="date_time">01/10/2013</label>
                        </div>
                        <div class="home_right_top">
                        	<p>Votes By</p>
                            <label>Poorvi Mehta</label>
                            <p>,</p>
                            <label>Poorvi Mehta</label>
                            <p>and</p>
                            <a href="javascript:void(0);">more...</a>
                        </div>
                    </div>
                    <div class="issue_outr">
                    	<p>
                        	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
                        </p>
                    </div>
                    <div class="likebutton">
                        <div class="bound1">
                        <i class="icon-thumbs-up"></i><label>20</label><a href="#"> Support</a>
                        <i class="icon-thumbs-down"></i><label>40</label><a href="#"> Deny</a>
                        <i class="icon-comment"></i><label>60</label>
                        </div>
                           
                            <div class="bound2">
                            <a href="#">comment</a>
                            </div>
                        </div>
                       <div class="comment_cont">
     		<div class="user_outer">
            	<div class="img_outer">
                              <img src="img/1.jpg" />
                                 </div>	
                                      <div class="comm_section">
                                    <div class="name_label">
                                       <label>Ajay Singh</label>
                                     </div>
                             <div class="date_label">
                                  <label> Dated: 9/29/2013 3:18:54 PM </label>
                               </div>
                       <div class="comment_label">
                           <label>This is for commenting </label>
                         </div>
                      </div>
                        <div class="sub_icons"> 
                               <i class="icon icon-thumbs-up"></i> <a href="#" > Like </a> 
                               <i class="icon icon-thumbs-down"></i>  <a href="#" > Dislike</a>
                          </div>
                        
                        <div class="text_comment">
                            <input name="TextBox1" type="text" id="TextBox1"/>
                            </div>
                       <div class="post_button">
                        <input type="button" value="Post" id="button" style="    padding:  3px 15px 3px 15px;" />
                       		
                       </div>
          </div>                  
     </div>

                      </div>
                    </div>
                </div>
             </div>
        </div>


        </form>
</body>
</html>
