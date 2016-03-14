<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图片轮播</title>
<link href="../lib/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="../lib/css/test1.css" rel="stylesheet"
	type="text/css">
<link href="../lib/css/test2.css" rel="stylesheet"
	type="text/css">
<link href="../lib/css/test3.css" rel="stylesheet"
	type="text/css">
<script src="../lib/js/jquery-2.1.4.min.js"></script>
<script src="../lib/js/test.js"></script>
</head>
<body>
	<div id="demo">

        <div id="owl-demo" class="owl-carousel">
          
          <div class="item"><h1>1</h1></div>
          <div class="item"><h1>2</h1></div>
          <div class="item"><h1>3</h1></div>
          <div class="item"><h1>4</h1></div>
          <div class="item"><h1>5</h1></div>
          <div class="item"><h1>6</h1></div>
          <div class="item"><h1>7</h1></div>
          <div class="item"><h1>8</h1></div>
          <div class="item"><h1>9</h1></div>
          <div class="item"><h1>10</h1></div>
          <div class="item"><h1>11</h1></div>
          <div class="item"><h1>12</h1></div>

        </div>

    </div>



    <script src="../democode/204/assets/js/jquery-1.9.1.min.js"></script> 
    <script src="../democode/204/owl-carousel/owl.carousel.js"></script>

    <!-- Demo -->

    <style>
    #owl-demo .item{
        background: #42bdc2;
        padding: 30px 0px;
        margin: 5px;
        color: #FFF;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
        text-align: center;
    }
    </style>

    <script>
    $(document).ready(function() {
      $("#owl-demo").owlCarousel({
        navigation : true
      });
    });

    </script>
	

</body>
</html>