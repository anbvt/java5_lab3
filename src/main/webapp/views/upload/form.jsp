<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload Form</title>
</head>
<body>
	<form action="save" method="POST" enctype="multipart/form-data">
		<input name="attach" type="file">
		<button>Send</button>
	</form>
</body>
</html>