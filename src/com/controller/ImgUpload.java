package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class ImgUpload
 */
@WebServlet("/ImgUpload")
public class ImgUpload extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
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
            System.out.println("���ϸ���? : " + files);
            
            
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
	
	}

}
