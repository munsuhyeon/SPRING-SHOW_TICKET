package com.suhyeon.profile_web.Controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.suhyeon.profile_web.dao.IDao;
import com.suhyeon.profile_web.dto.BoardDto;
import com.suhyeon.profile_web.dto.ConcertDto;
import com.suhyeon.profile_web.dto.MemberDto;
import com.suhyeon.profile_web.dto.ReserveDto;


@Controller
public class WebController {
		
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("index",dao.indexDao());
		return "index";
	}
	@RequestMapping(value = "/index")
	public String index(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("index",dao.indexDao());
		//ArrayList<ConcertDto> dtos = dao.indexDao();
		//ConcertDto dto = dtos.get(0);
		//System.out.println(dto.getcenddate());
		return "index";
	}
	@RequestMapping(value="/login")
	public String login() {
		return "login";
	}
	@RequestMapping(value="/join")
	public String join() {
		return "join";
	}
	@RequestMapping(value="/joinOk", method = RequestMethod.POST)
	public String joinOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkIdFlag = dao.checkIdDao(request.getParameter("id"));
		//입력받은 아이디가 DB에 존재하면 1, 아니면 0 반환
		
		model.addAttribute("checkIdFlag", checkIdFlag);
		//checkIdFlag=1이면 아이디 사용중, 0이면 신규 가입가능
		
		if(checkIdFlag != 1) {
			dao.joinDao(request.getParameter("id"), request.getParameter("pw"), request.getParameter("name"),
					request.getParameter("email"), request.getParameter("phone"));
			HttpSession session = request.getSession();
			
			session.setAttribute("id", request.getParameter("id"));
			//세션에 가입성공된 아이디를 저장하여 로그인까지 하게 함
			
			model.addAttribute("mname", request.getParameter("name"));
			model.addAttribute("mid", request.getParameter("id"));
		}
		return "joinOk";
	}
	@RequestMapping(value="/loginOk", method = RequestMethod.POST)
	public String loginOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkIdFlag = dao.checkIdDao(request.getParameter("id"));
		//입력받은 아이디가 DB에 존재하면 1, 아니면 0 반환
		int checkPwFlag = dao.checkPwDao(request.getParameter("id"), request.getParameter("pw"));
		//입력받은 아이디와 그 아이디의 비밀번호가 일치하면 1, 아니면 0이 반환
		
		model.addAttribute("checkIdFlag",checkIdFlag);
		//checkIdFlag=1이면 아이디 사용중, 0이면 신규 가입가능
		model.addAttribute("checkPwFlag",checkPwFlag);
		//checkPwFlag=1이면 아이디와 그 아이디의 비밀번호가 일치하므로 로그인 가능
		
		if(checkIdFlag == 1) {
			
			MemberDto memberdto = dao.loginOkDao(request.getParameter("id"));
			
			HttpSession session = request.getSession();
			
			session.setAttribute("id", memberdto.getMid());
			session.setAttribute("name", memberdto.getMname());
			//로그인 성공시 세션에 아이디와 이름 저장
			
			model.addAttribute("mname",memberdto.getMname());
			model.addAttribute("mid",memberdto.getMid());
		}
		return "loginOk";
	}
	@RequestMapping(value="/logout")
	public String logout() {
		
		return "logout";
	}
	@RequestMapping(value="/infoModify")
	public String infoModify(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		String sessionId = (String)session.getAttribute("id");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		MemberDto memberDto = dao.loginOkDao(sessionId);
		
		model.addAttribute("memberDto",memberDto);
		//System.out.println(sessionId);
		return "infoModify";
	}
	@RequestMapping(value="/infoModifyOk")
	public String infoModifyOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.memberInfoModifyOkDao(request.getParameter("pw"), request.getParameter("name"), 
			request.getParameter("email"),request.getParameter("phone"), request.getParameter("id"));
				
		MemberDto memberDto = dao.loginOkDao(request.getParameter("id"));
		
		model.addAttribute("memberDto", memberDto);
		
		return "infoModifyOk";
	}
	@RequestMapping(value="/list")
	public String list(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		model.addAttribute("list", dao.listDao()) ;
		
		return "list";
	}
	
	@RequestMapping(value="/question")
	public String question() {
		return "question";
	}
	@RequestMapping(value="/write")
	public String write(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeDao(request.getParameter("bid"),request.getParameter("btitle"),request.getParameter("bcontent"));
		return "redirect:list";
	}
	@RequestMapping(value="/qview")
		public String qview(HttpServletRequest request, Model model) {
			
			HttpSession session = request.getSession();
			IDao dao = sqlSession.getMapper(IDao.class);
			dao.boardhit(request.getParameter("bnum"));
			model.addAttribute("qview", dao.viewDao(request.getParameter("bnum")));
			String sessionId = (String)session.getAttribute("id");
			MemberDto memberDto = dao.loginOkDao(sessionId);
			
			model.addAttribute("memberDto",memberDto);
			return "qview";
		}
	@RequestMapping(value="/delete")
	public String delete(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deleteDao(request.getParameter("bnum"));
		
		return "redirect:list";
	}
	@RequestMapping(value="/modify")
	public String modify(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.modifyDao(request.getParameter("bid"), request.getParameter("btitle"), 
				request.getParameter("bcontent"), request.getParameter("bnum"));
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/seatpage")
	public String seatpage(HttpServletRequest request, Model model) {

		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("seatpage", dao.detailDao(request.getParameter("cnum")));
		return "seatpage";
	}
	@RequestMapping(value = "/moveindex.do")
	public String moveindex() {
		
		return "login";
	}
	@RequestMapping(value="/reserveOk")
	public String reserveOk(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		HttpSession session = request.getSession();
		String ticket = request.getParameter("ticket");
		String date = request.getParameter("date");
		String price = request.getParameter("price");
		session.setAttribute("ticket", ticket);
		session.setAttribute("date", date);
		session.setAttribute("price", price);
		//System.out.println(session.getAttribute("price"));
		return "reserveOk";
	}
	@RequestMapping(value="/pay")
	public String pay(HttpServletRequest request, Model model) {

		IDao dao = sqlSession.getMapper(IDao.class);
		dao.reserveDao(request.getParameter("bid"),request.getParameter("btitle"), request.getParameter("bplace"),request.getParameter("btime"),
				 Integer.parseInt(request.getParameter("bprice")),Integer.parseInt(request.getParameter("bcount")),request.getParameter("bpic"));
		
		return "pay";
	}
	@RequestMapping(value="/reservelist")
	public String reservelistert(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		String sessionId = (String)session.getAttribute("id");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<ReserveDto> reservedto = dao.reservelistDao(sessionId);
		model.addAttribute("reservedto",reservedto);
		
		return "reservelist";
	}
	@RequestMapping(value="/mypage")
	public String mypage() {

		return "mypage";
	}
	@RequestMapping(value="/searchid")
	public String searchid() {

		return "searchid";
	}
	@RequestMapping(value="/searchpw")
	public String searchpw() {

		return "searchpw";
	}
	@RequestMapping(value="/resultid", method = RequestMethod.POST)
	public String resultid(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		int findIdFlag = dao.findIdDao(request.getParameter("name"), request.getParameter("email"));
		//입력받은 이름과 그 이름의 이메일이 일치하면 1, 아니면 0이 반환
		
		model.addAttribute("findIdFlag",findIdFlag);
		
		if(findIdFlag == 1) {
			MemberDto memberDto = dao.findIdOkDao(request.getParameter("name"), request.getParameter("email"));
			model.addAttribute("memberDto",memberDto);
		}
		
		return "resultid";
	}
	@RequestMapping(value="/resultpw", method = RequestMethod.POST)
	public String resultpw(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		int findPwFlag = dao.findPwDao(request.getParameter("id"),request.getParameter("name"), request.getParameter("email"));
		
		model.addAttribute("findPwFlag",findPwFlag);
		
		if(findPwFlag == 1) {
			MemberDto memberDto = dao.findPwOkDao(request.getParameter("id"),request.getParameter("name"), request.getParameter("email"));
			model.addAttribute("memberDto",memberDto);
		}
		
		return "resultpw";
	}
	@RequestMapping(value="/refund")
	public String refund(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.refundDao(request.getParameter("bstate"),request.getParameter("bnum"));

		return "redirect:reservelist";
	}
	@RequestMapping(value="/search_result")
	public String search_result(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);

		List<ConcertDto> concertDto = dao.searchresultDao(request.getParameter("title"));
		model.addAttribute("concertDto",concertDto);
		
		return "search_result";
	}
	
	}

