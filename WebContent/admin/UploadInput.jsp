<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="UploadError.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 - 파일 업로드</title>
</head>
<body>

	<h4>관리자 - 파일 업로드</h4>
	
	<form action="Upload.jsp" method="post" enctype="multipart/form-data">
		제목 : <input type="text" name="TITLE"/><br/>
		설명 : <input type="text" name="DESCRIPTION"/><br/>
		파일 : <input type="file" name="UPLOAD_FILE"/><br/>
		<input type="submit" value="전송">
	</form>

</body>
</html>