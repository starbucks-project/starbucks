<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Store 등록</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
<br>
  <h2>Store 정보를 입력하세요</h2>
  <form action="/manager/store_regi" method="POST">
  <label for="category">Category:</label>
  <select name="category" id="category">
    <option value="general">general</option>
    <option value="drive">drive</option>
    <option value="reserve">reserve</option>
  </select>
  <br>
  <!--
    <div class="form-group">
      <label for="category">Category:</label>
      <input type="text" class="form-control" id="category" placeholder="Enter category" name="category">
    </div>
    -->
    <div class="form-group">
      <label for="title">Title:</label>
      <input type="text" class="form-control" id="title" placeholder="Enter title" name="title">
    </div>
    <div class="form-group">
      <label for="latitude">Latitude(위도):</label>
      <input type="text" class="form-control" id="latitude" placeholder="Enter 위도 ex)35.189565" name="latitude">
    </div>
    <div class="form-group">
      <label for="longtitude">Longtitude(경도):</label>
      <input type="text" class="form-control" id="longtitude" placeholder="Enter 경도 ex)129.121754" name="longtitude">
    </div>
    <div class="form-group">
      <label for="content">Content:</label>
      <input type="text" class="form-control" id="content" placeholder="Enter content(주소)" name="content">
    </div>
    <div class="form-group">
      <label for="tel">Tel:</label>
      <input type="text" class="form-control" id="tel" placeholder="Enter tel" name="tel">
    </div>
    
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>
