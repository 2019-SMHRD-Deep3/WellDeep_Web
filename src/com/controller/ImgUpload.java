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
		//이미지를 저장할 경로 입력.
        String folderTypePath = "C:/Users/SM007/git/WellDeep_Web/WebContent/img";
 
        String name = new String();
        String fileName = new String();
        int sizeLimit = 5 * 1024 * 1024; // 5메가까지 제한 넘어서면 예외발생
        System.out.println("들어오니?!?");
        try {
           MultipartRequest multi = new MultipartRequest(request, folderTypePath, sizeLimit,
        		   new DefaultFileRenamePolicy());
            Enumeration files = multi.getFileNames();
            System.out.println("파일명은? : " + files);
            
            
            //파일 정보가 있다면
            if (files.hasMoreElements()) {
                name = (String) files.nextElement();
                fileName = multi.getFilesystemName(name);
            }
            System.out.println("이미지를 저장하였습니다. : " + fileName);
        } catch (IOException e) {
        	e.printStackTrace();
            out.println("안드로이드 부터 이미지를 받아옵니다.");
        }
	
	}

}
