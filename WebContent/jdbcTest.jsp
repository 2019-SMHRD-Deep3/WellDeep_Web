<%@page import="java.util.Enumeration"%>
<%@page import="java.io.IOException"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 
    <%
        //�̹����� ������ ��� �Է�.
        String folderTypePath = "C:/Users/SM007/git/WellDeep_Web/WebContent/img";
 
        String name = new String();
        String fileName = new String();
        int sizeLimit = 5 * 1024 * 1024; // 5�ް����� ���� �Ѿ�� ���ܹ߻�
        System.out.println("������?!?");
        try {
           MultipartRequest multi = new MultipartRequest(request, folderTypePath, sizeLimit,
        		   new DefaultFileRenamePolicy());
            Enumeration files = multi.getFileNames();
            System.out.println("���ϸ���? : " + multi.getFilesystemName("filename"));
            
            
            //���� ������ �ִٸ�
            if (files.hasMoreElements()) {
                name = (String) files.nextElement();
                fileName = multi.getFilesystemName(name);
            }
            System.out.println("�̹����� �����Ͽ����ϴ�. : " + fileName);
        } catch (IOException e) {
        	e.printStackTrace();
            out.println("�ȵ���̵� ���� �̹����� �޾ƿɴϴ�.");
        }
    %>
 
</body>



</html>