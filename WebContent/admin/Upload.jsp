<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="UploadError.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.net.URLEncoder"%>
<%@ page import="myutil.MultiPart" %>

<%
	MultiPart multiPart = new MultiPart(request);
	String title = multiPart.getParameter("TITLE");
	String description = multiPart.getParameter("DESCRIPTION");
	
	String fileName = multiPart.getFileName("UPLOAD_FILE");
	
	// JDBC 테이블 입력
	
	String newPath = application.getRealPath("/product/img/" + fileName);
	multiPart.saverFile("UPLOAD_FILE", newPath);
	
	String url = String.format("UploadResult.jsp?TITLE=%s&DESCRIPTION=%s&UPLOAD_FILE=%s",
			URLEncoder.encode(title, "utf8"), URLEncoder.encode(description, "utf8"), URLEncoder.encode(fileName, "utf8"));
	
	response.sendRedirect(url);
%>