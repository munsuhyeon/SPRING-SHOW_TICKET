package com.suhyeon.profile_web.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suhyeon.profile_web.dao.ADao;
import com.suhyeon.profile_web.dao.IDao;
import com.suhyeon.profile_web.dto.MemberDto;

@Controller
public class AdminController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/admin_customer")
	public String customer(Model model) {
		ADao dao = sqlSession.getMapper(ADao.class);
		model.addAttribute("list",dao.customerlistDao());
		return "./admin/admin_customer";
	}
	@RequestMapping(value="/customerinfo")
	public String customerinfo(HttpServletRequest request, Model model) {
		
		ADao dao = sqlSession.getMapper(ADao.class);
		model.addAttribute("customerinfo",dao.customerinfoDao(request.getParameter("mid")));
		
		return "./admin/customerinfo";
	}
	@RequestMapping(value="/reply")
	public String reply(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.boardhit(request.getParameter("bnum"));
		model.addAttribute("qview", dao.viewDao(request.getParameter("bnum")));
		String sessionId = (String)session.getAttribute("id");
		MemberDto memberDto = dao.loginOkDao(sessionId);
		
		model.addAttribute("memberDto",memberDto);
		return "./admin/reply";
	}
	@RequestMapping(value="/write_reply")
	public String write_reply(HttpServletRequest request, Model model) {
		
		ADao dao = sqlSession.getMapper(ADao.class);
		
		dao.write_replyDao(request.getParameter("btitle"),request.getParameter("bcontent"),request.getParameter("breply"),request.getParameter("bnum"));
				 
								
		return "redirect:/admin_cicboard";
	}
	
	@RequestMapping(value="/admin_reservelist")
	public String admin_refund(Model model) {
		
		ADao dao = sqlSession.getMapper(ADao.class);
		
		model.addAttribute("reserve", dao.reservelistDao());
								
		return "./admin/admin_reservelist";
	}
	@RequestMapping(value="/admindelete")
	public String admindelete(HttpServletRequest request) {
		
		ADao dao = sqlSession.getMapper(ADao.class);
		
		dao.admindeleteDao(request.getParameter("bnum"));
								
		return "redirect:/admin_reservelist";
	}
	@RequestMapping(value="/admin_cicboard")
	public String admin_cicboard(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		model.addAttribute("list", dao.listDao()) ;
								
		return "./admin/admin_cicboard";
	}
	@RequestMapping(value="/admin_register")
	public String admin_register() {
								
		return "./admin/admin_register";
	}
	@RequestMapping(value="/registerOk")
	public String registerOk(HttpServletRequest request, Model model) {
		
		ADao dao = sqlSession.getMapper(ADao.class);
		int checkTitleFlag = dao.checkRegister(request.getParameter("title"));
		model.addAttribute("checkTitleFlag", checkTitleFlag);
		if(checkTitleFlag != 1) {
			dao.registerDao(request.getParameter("title"), request.getParameter("place"), request.getParameter("sdate"),
					request.getParameter("edate"),request.getParameter("time"), request.getParameter("pic"), request.getParameter("price"));
		}
		
		return "./admin/admin_register";
	}
	@RequestMapping(value="/admin_concertlist")
	public String admin_concertlist(Model model) {
			
		ADao dao = sqlSession.getMapper(ADao.class);
		model.addAttribute("list",dao.concertlistDao());
		return "./admin/admin_concertlist";
	}
	
	@RequestMapping(value="/concertdelete")
	public String concertdelete(HttpServletRequest request) {
		
		ADao dao = sqlSession.getMapper(ADao.class);
		
		dao.reservedeleteDao(request.getParameter("title"));
		dao.concertdeleteDao(request.getParameter("num"));
								
		return "redirect:/admin_concertlist";
	}
	
}
