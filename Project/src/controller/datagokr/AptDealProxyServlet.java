package controller.datagokr;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import com.google.gson.Gson;

@WebServlet("/aptdeal")
public class AptDealProxyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final String SERVICE_URL = "http://openapi.molit.go.kr/OpenAPI_ToolInstallPackage/service/rest/RTMSOBJSvc/getRTMSDataSvcAptTradeDev";
	private final String SERVICE_KEY = "I8nwQy%2FYlkWuRbHn2A9aTFV2PBsSjpwZZC426JbgI9UKLdutOdBBDnKm6YXw5Eepa1Lxd1wAkPeNrdCt6pfIgA%3D%3D";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청 파라미터 처리
		// api 요청 + 파라미터
		// 결과 xml 수신
		// xml 요청 client => xml 전송
		// json 요청 client => xml -> json 후 전송( xml parsing 작업 <- SAX )
		
		String pageNo = request.getParameter("pageNo");
		if (pageNo == null) pageNo = "1";
		
		String numOfRows = request.getParameter("numOfRows");
		if (numOfRows == null) numOfRows = "20";
		
		String LAWD_CD = request.getParameter("LAWD_CD");
		if (LAWD_CD == null) LAWD_CD = "11110";
		
		String DEAL_YMD = request.getParameter("DEAL_YMD");
		if (DEAL_YMD == null) DEAL_YMD = "202201";
		
		// clsf xml, json 구분 후 client에게 가공할 것인지 여부
		String clsf = request.getParameter("clsf");
		if (clsf == null) clsf = "json";
		
		StringBuilder sb = new StringBuilder();
		sb.append(SERVICE_URL).append("?serviceKey=").append(SERVICE_KEY)
		  .append("&pageNo=").append(pageNo)
		  .append("&numOfRows=").append(numOfRows)
		  .append("&LAWD_CD=").append(LAWD_CD)
		  .append("&DEAL_YMD=").append(DEAL_YMD);
		
		System.out.println(sb.toString());
		
		URL url = new URL(sb.toString());
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setRequestMethod("GET");
		
		BufferedReader br = null;
		if (con.getResponseCode() == 200) {
			br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		} else { // 200이 아닐 경우
			br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		}
		
		// api response => StringBuilder result에 넣는다.
		StringBuilder result = new StringBuilder();
		String line;
		while((line = br.readLine()) != null) {
			result.append(line);
		}
		br.close();
		con.disconnect();
		
		// xml or json
		if ("raw".equals(clsf)) {
			sendRaw(response, result.toString());
		} else if ("json".equals(clsf)) {
			sendJson(response, result.toString());
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void sendJson(HttpServletResponse response, String result) throws IOException {
		
		// SAX Parser
		// xml => java ArrayList 객체로 필요한 항목만 추출
		try {
			SAXParserFactory factory = SAXParserFactory.newInstance();
			SAXParser parser = factory.newSAXParser();
			HouseSAXHandler handler = new HouseSAXHandler();
			
			// 한글 처리에 대한 부분
			InputStream is = new ByteArrayInputStream (result.getBytes(StandardCharsets.UTF_8));
			
			parser.parse(is, handler);
			
			List<HouseDeal> houseDealList = handler.getHouseDealList();
			for (HouseDeal houseDeal : houseDealList) {
				System.out.println(houseDeal);
				
			}
			
			// java List => json
			Gson gson = new Gson();
			String jsonStr = gson.toJson(houseDealList); // json
			
			// xml => json
			response.setContentType("application/json; charset=utf-8");
			response.getWriter().append(jsonStr);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void sendRaw(HttpServletResponse response, String result) throws IOException {
		response.setContentType("application/xml; charset=utf-8");
		response.getWriter().append(result);
	}

}
