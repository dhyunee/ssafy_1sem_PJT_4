package config;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.UserDto;

@WebFilter("/*")
public class LoginFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// Http瑜� �쐞�븳 type casting
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		HttpServletResponse httpServletResponse = (HttpServletResponse) response;
		
		String contextPath = httpServletRequest.getContextPath();
		String path = httpServletRequest.getRequestURI().substring(contextPath.length());
		System.out.println(path);
		
		HttpSession session = httpServletRequest.getSession();
		// exclude
		// <img src="/../img/ssafy.jpg">�� 媛숈� �슂泥��뿉 ���빐 �젣�쇅
		if (!path.contains("/images/") && !path.contains("/css/") && !path.contains("/js/")
				&& !path.contains("/register") && !path.contains("/login") && !path.contains("/index") && !path.contains("/searchPage.jsp"))  {
			// 濡쒓렇�씤�씠 �븘�슂�븳 �꽌踰� �슂泥�
			UserDto userDto = (UserDto) session.getAttribute("userDto"); // �궗�슜�옄 �솗�씤
			if (userDto == null) { // 議댁옱�븯吏� �븡�뒗 怨꾩젙�씪 寃쎌슦
				httpServletResponse.sendRedirect("login.jsp"); // redirect
				return;
			}
		}
		
		// request, response瑜� 洹몃�濡� �꽆寃⑥쨲
		chain.doFilter(request, response);
	}

}
