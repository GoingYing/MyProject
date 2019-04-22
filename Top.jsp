<%@ page import = "java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中国英语语料库</title>
</head>
<body>

<table > 
 <tr>
  <th>
  <img src = "标题.PNG" alt = "标题.PNG" width = "1157"/> 
  </th>
  <th>
  <div id="box"></div>

  <script type="text/javascript">
  <!--
   function SetTimeOut(){
     var today = new Date();
     var year = today.getFullYear(); //年
     var month = today.getMonth() + 1; //月
     var day = today.getDate(); //日
     var hour = today.getHours(); //时
     var minute = today.getMinutes(); //分
     var second = today.getSeconds(); //秒
     var weeks=["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];
     var week = weeks[today.getDay()]; //星期
     
     if(month < 10){
         month = "0" + month;
     }
     if(day < 10){
         day = "0" + day;
     }
     if(hour < 10){
         hour = "0" + hour;
     }
     if(minute < 10){
         minute = "0" + minute;
     }
     if(second < 10){
         second = "0" + second;
     }
     
     var time = hour + ':' + minute + ':' + second + "<br/>" + week + "<br/>" + year + '/' + month + '/' + day;

     document.getElementById("box").innerHTML = time;

    }  
  
  SetTimeOut();
  window.setInterval(SetTimeOut, 1000);
   -->
   </script>
  </th>
 </tr>
</table>

 <table align = "right">
 <tr>
  <th>
  <form method = "post" action="Return.jsp" target = "_top">
   <input type = "submit" name = "清空按钮" value = "首页">
  </form>
  </th>
 <th>
  <form method = "post" action="Introduct.jsp" target = "answer">
   <input type = "submit" name = "关于平台按钮" value = "关于平台">
  </form>
  </th>
  <th>
  <form method = "post" action="Help.jsp" target = "answer">
   <input type = "submit" name = "帮助按钮" value = "帮助">
  </form>
  </th>
  <th>
  <form method = "post" action="Landing.jsp" target = "_blank">
   <input type = "submit" name = "登陆按钮" value = "登陆">
  </form> 
  </th>
 </tr>
 </table> 
</body>
</html>