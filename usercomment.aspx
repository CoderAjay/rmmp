<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usercomment.aspx.cs" Inherits="usercomment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Rate my MP</title>
</head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="css/jquery-te-1.4.0.css">
<link rel="stylesheet" type="text/css" href="css/style.css" />


<script type="text/javascript" src="js/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery-te-1.4.0.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>

<body>
<div id="main"> 
	<div id="main_container">
    	<div id="main_left">
        	<div class="logo">
            	<a href="index.aspx"><img src="img/LOG.png" /></a>
            </div>
         <div class="mp_info">
          <div class="heading">
               		<h5>15th Lok Sabha <br />Member of Parliament profile</h5>
               </div>
          	 <div class="mp_info_inner">
              	<div class="mp_img">
                  <div class="mp_pic"> <img src="img/2.jpg"/>
                  </div>
               </div>
              
           <div class="up_labels">
                   <div class="name1">
                  <h5>Name:</h5><label>abc</label>
                  </div>
                  <div class="name1">
                  <h5>Constituency:</h5><label>xyz</label>
                  </div>
                  <div class="name1">
                  <h5>Party:</h5><label>asd</label>
                  </div>
               </div>
             </div>
          <div class="down_labels">
               <div class="name1">
               <h5>Contact:</h5><label>987654321</label>
               </div>
               <div class="name1">
                 <h5>E-mail:</h5><label>abc@gmail.com</label>
                 </div>
                 <div class="name1">
                   <h5>Educational Qualification:</h5><label>Graduation</label>
                   </div>
                   <div class="name1">
                 <h5>Profession:</h5><label>Agriculture</label>
                 </div>
                 <div class="name1">
               <h5>Permanent Address:</h5><label>Delhi</label>
               </div>
               <div class="name1">
             <h5>Present Address:</h5><label>Mumbai</label>
             </div>
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
                <div class="text_editor_outr">
                	<textarea name="textarea" class="jqte-test"><b>My contents are from <u><span style="color:rgb(0, 148, 133);">TEXTAREA</span></u></b></textarea>
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
  
  
<script>
    $('.jqte-test').jqte();

    // settings of status
    var jqteStatus = true;
    $(".status").click(function () {
        jqteStatus = jqteStatus ? false : true;
        $('.jqte-test').jqte({ "status": jqteStatus })
    });
</script>
</body>

</html>
