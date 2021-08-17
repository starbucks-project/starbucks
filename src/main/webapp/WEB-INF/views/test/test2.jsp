<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

  <script>
    $(document).ready(function(){
      $('.slider').bxSlider();
      $('.bxslider').bxSlider({
        slideMargin: 10,
        slideWidth: 510
      });
    });
  </script>
  <style>
      .bx-wrapper {
  position: relative;
  margin: 60px;
  padding-left: 10px;
  text-align: center;
  *zoom: 1;
}
.bx-wrapper img {
  max-width: 100%;
  display: block;
}
  </style>

</head>
<body>

    <ul class="bxslider"> 
        <li><img src="/images/cardImg.png" /></li> 
        <li><img src="/images/cardImg.png" /></li> 
        <li><img src="/images/cardImg.png" /></li> 
        <li><img src="/images/cardImg.png" /></li> 
    </ul>



</body>
</html>