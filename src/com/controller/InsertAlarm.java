package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.AlarmDAO;
import com.model.AlarmDTO;
import com.model.ImgDAO;
import com.model.ImgDTO;


@WebServlet("/InsertAlarm")
public class InsertAlarm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// API에서 값 받아오기 
		String alarm_number = request.getParameter("alarm_number");
		String alarm_time = request.getParameter("alarm_time");
		String parents_id = request.getParameter("parents_id");
		String children_number = request.getParameter("children_number");
		String img_file = request.getParameter("img_file");
		String voice_file = request.getParameter("voice_file");
		
		System.out.println(alarm_number);
		System.out.println(alarm_time);
		System.out.println(parents_id);
		System.out.println(children_number);
		System.out.println(img_file);
		System.out.println(voice_file);
		
		// img테이블에 insert
		ImgDTO imgdto = new ImgDTO(parents_id, children_number, img_file);
		ImgDAO imgdao = new ImgDAO();
		int cnt = imgdao.insertImg(imgdto);
		if(cnt==1) {
			System.out.println("이미지 정보 DB저장 성공!");
		}
	
		// alarm테이블에 insert
		AlarmDTO aladto = new AlarmDTO(parents_id,children_number,img_file,voice_file);
		AlarmDAO aladao = new AlarmDAO();
		int cnt2 = aladao.insert_one(aladto);
		if(cnt2==1) {
			System.out.println("알람 DB저장 성공!");
		}
		
		if(cnt==1 & cnt2==1) {
			System.out.println("성공");
		}
//		response.getWriter().print(result);
	}

}
