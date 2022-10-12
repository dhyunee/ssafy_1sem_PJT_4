package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.mysql.cj.util.StringUtils;

import dto.AptDto;
import dto.AptInfoDto;
import service.AptService;
import service.AptServiceImpl;

@WebServlet("/board/*")
public class AptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	AptService service = AptServiceImpl.getInstance();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String contextPath = request.getContextPath();
		String path = request.getRequestURI().substring(contextPath.length());
		
		switch(path) {
		case "/board/main" : boardMain(request, response); break;
		case "/board/boardList" : boardList(request, response); break;
		case "/board/boardListTotalCnt" : boardListTotalCnt(request, response); break;
		case "/board/proper" : properShow(request, response); break;
		
		
		}
	}

	private void properShow(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String tmp = request.getParameter("aptNo");
		for(int i=0; i<tmp.length(); i++) {
			if(tmp.charAt(i) > '9' && tmp.charAt(i) < '0') {
				tmp = null;
				break;
			}
		}
		if(tmp == null) tmp = "1";
		
		int aptNo = Integer.parseInt(request.getParameter("aptNo"));
		AptInfoDto aptInfoDto = new AptInfoDto();
		
		aptInfoDto = service.aptinfo(aptNo);
		
		Gson gson = new Gson();
		String jsonStr = gson.toJson(aptInfoDto);
		System.out.println(jsonStr);
        response.getWriter().write(jsonStr);
		
		
	}

	private void boardMain(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/main.jsp");
		dispatcher.forward(request, response);
	}
	
	private void boardList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String strLimit = request.getParameter("limit");
		String strOffset = request.getParameter("offset");
		String searchWord = request.getParameter("searchWord");
		
		int limit = Integer.parseInt(strLimit);
		int offset = Integer.parseInt(strOffset);
		List<AptDto> boardList;
		
		
		if ("".equals(searchWord)) {
			boardList = service.aptList(limit, offset);
		} else {
			boardList = service.aptListSearchWord(limit, offset, searchWord);
		}

		Gson gson = new Gson();
		String jsonStr = gson.toJson(boardList);
		System.out.println(jsonStr);
        response.getWriter().write(jsonStr);
	}
	
	private void boardListTotalCnt(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String searchWord = request.getParameter("searchWord");
		
		int totalCnt;
		
		if ("".equals(searchWord)) {
			totalCnt = service.aptListTotalCnt();
		} else {
			totalCnt = service.aptListSearchWordTotalCnt(searchWord);
		}

		Gson gson = new Gson();
		JsonObject jsonObject = new JsonObject();
		jsonObject.addProperty("totalCnt", totalCnt);
		
		String jsonStr = gson.toJson(jsonObject);
		response.getWriter().write(jsonStr);
	}
	
}
