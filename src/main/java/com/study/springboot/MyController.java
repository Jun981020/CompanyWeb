package com.study.springboot;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.springboot.dto.FaqDto;
import com.study.springboot.dto.JobDto;
import com.study.springboot.dto.NewsDto;
import com.study.springboot.dto.NoticeDto;
import com.study.springboot.dto.QnaDto;
import com.study.springboot.service.FaqService;
import com.study.springboot.service.JobService;
import com.study.springboot.service.MemberService;
import com.study.springboot.service.NewsService;
import com.study.springboot.service.NoticeService;
import com.study.springboot.service.One2OneService;
import com.study.springboot.service.QnaService;

@Controller
public class MyController {
	
	@Autowired
	MemberService memberService;
	@Autowired
	One2OneService one2oneService;
	@Autowired
	QnaService qnaService;
	@Autowired
	NoticeService noticeService;
	@Autowired
	FaqService faqService;
	@Autowired
	NewsService newsService;
	@Autowired 
	JobService jobService;
	
	@RequestMapping("/")
	public String root() {
		return "redirect:main";
	}
	
	@RequestMapping("/main")
	public String main( Model model) {
		
		model.addAttribute("mainPage", "main.jsp");
		
		return "index"; //"index.jsp" 디스패치함.
	}
	@RequestMapping("/member/login")
	public String login(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "member/login.jsp");
		
		return "index"; //index.jsp 디스패치 
	}
	@RequestMapping("/member/loginAction")
	@ResponseBody
	public String loginAction(@RequestParam("member_id") String member_id,
			                  @RequestParam("member_pw") String member_pw,
			                  HttpServletRequest request) {
		System.out.println("member_id:" + member_id);
		System.out.println("member_pw:" + member_pw);
		
		int result = memberService.login(member_id, member_pw);
		if( result == 1 ) { //로그인 성공
			
			//로그인 세션 등록
			request.getSession().setAttribute("member_id", member_id);
			
			return "<script>alert('로그인 성공!'); location.href='/';</script>";
		}else { //로그인 성공	
			return "<script>alert('로그인 실패!'); history.back(-1);</script>";
		}
	}
	@RequestMapping("/member/logoutAction")
	@ResponseBody
	public String loginAction(HttpServletRequest request) {
		
		//세션객체 초기화
		request.getSession().invalidate();
		return "<script>alert('로그아웃 되었습니다.'); location.href='/';</script>";
		
	}
	@RequestMapping("/member/idFind")
	public String idFind(@RequestParam(value="find_member_id", required=false) String find_member_id,
			             Model model) {
		model.addAttribute("find_member_id", find_member_id);
		return "/member/idFind"; //"idFind.jsp" 디스패치
	}

	@RequestMapping("/member/idFindAction") 
	@ResponseBody
	public String idFindAction(@RequestParam("member_name") String member_name,
								@RequestParam("member_email") String member_email,
								HttpServletRequest request) {
		
		System.out.println("member_name:" + member_name);
		System.out.println("member_email:" + member_email);
		
		String member_id = memberService.idFind(member_name, member_email);
		System.out.println("member_id:" + member_id);
		
		//hasText함수 : null체크? 문자열공백없이 의미있는 문자열있는지?
		if( StringUtils.hasText(member_id) ) {			
			return "<script>alert('아이디를 찾았습니다.'); location.href='/member/idFind?find_member_id=" + member_id + "';</script>";
		}else {
			return "<script>alert('아이디를 찾을 수 없습니다.'); history.back(-1);</script>";
		}
		
	}
	
	@RequestMapping("/member/passwordFind")
	public String passwordFind(@RequestParam(value="find_member_pw", required=false) String find_member_pw,
			             Model model) {
		model.addAttribute("find_member_pw", find_member_pw);
		return "/member/passwordFind"; //"passwordFind.jsp" 디스패치
	}
	@RequestMapping("/member/passwordFindAction") 
	@ResponseBody
	public String passwordFindAction(@RequestParam("member_name") String member_name,
									 @RequestParam("member_id") String member_id,
									 @RequestParam("member_email") String member_email,
									 HttpServletRequest request) {
		
		System.out.println("member_name:" + member_name);
		System.out.println("member_id:" + member_id);
		System.out.println("member_email:" + member_email);
		
		String member_pw = memberService.passwordFind(member_name, member_id, member_email);
		System.out.println("member_pw:" + member_pw);
		
		//hasText함수 : null체크? 문자열공백없이 의미있는 문자열있는지?
		if( StringUtils.hasText(member_pw) ) {			
			return "<script>alert('암호를 찾았습니다.'); location.href='/member/passwordFind?find_member_pw=" + member_pw + "';</script>";
		}else {
			return "<script>alert('암호를 찾을 수 없습니다.'); history.back(-1);</script>";
		}
		
	}
	
	@RequestMapping("/member/join")
	public String join(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "member/join.jsp");
		
		return "index"; //index.jsp 디스패치 
	}

	@RequestMapping("/member/join2")
	public String join2(HttpServletRequest request, Model model) {
		
		model.addAttribute("mainPage", "member/join2.jsp");
		
		return "index"; //index.jsp 디스패치 
	}
	@RequestMapping("/member/idCheckAjax")
	@ResponseBody
	public String idCheckAjax(@RequestParam("member_id") String member_id) {
		
		int result = memberService.idCheckAjax( member_id );
		System.out.println("result:" + result);
		
		if( result >= 1 ) {
			return "1"; //아이디 중복됨.
		}else {
			return "0"; //아이디 중복안됨.
		}
		
	}
	@RequestMapping("/member/join2Action")
	@ResponseBody
	public String join2Action(
			@RequestParam("member_id") String member_id,
			@RequestParam("member_pw") String member_pw,
			@RequestParam("member_name") String member_name,
			@RequestParam("member_email") String member_email,
			@RequestParam("member_email_receive") String member_email_receive,
			@RequestParam("member_pw_question") String member_pw_question,
			@RequestParam("member_pw_answer") String member_pw_answer,
			@RequestParam("member_gender") String member_gender,
			@RequestParam("member_birth_date") String member_birth_date ) {
		
		System.out.println("member_id:"+member_id);
		System.out.println("member_pw:"+member_pw);
		System.out.println("member_name:"+member_name);
		System.out.println("member_email:"+member_email);
		System.out.println("member_email_receive:"+member_email_receive);
		System.out.println("member_pw_question:"+member_pw_question);
		System.out.println("member_pw_answer:"+member_pw_answer);
		System.out.println("member_gender:"+member_gender);
		System.out.println("member_birth_date:"+member_birth_date);
		
		int result = memberService.join(
				member_id,
				member_pw,
				member_name,
				member_email,
				member_email_receive,
				member_pw_question,
				member_pw_answer,
				member_gender,
				member_birth_date
				);
		if( result == 1 ) {
			return "<script>alert('회원가입되었습니다.'); location.href='/member/login';</script>";
		}
		else {
			return "<script>alert('회원가입 실패'); history.back(-1);</script>";
		}
		
	}
	
	@RequestMapping("/company/company01")
	public String company01(Model model) {
		
		model.addAttribute("mainPage","company/company01.jsp");
		
		return "index";
	}
	@RequestMapping("/company/company03")
	public String company03(Model model) {
		
		model.addAttribute("mainPage", "company/company03.jsp");
	
		return "index";
	}
	
	@RequestMapping("/business/business01")
	public String business01(Model model) {
		
		model.addAttribute("mainPage", "business/business01.jsp");
	
		return "index";
	}
	
	@RequestMapping("/product/product01")
	public String product01(Model model) {
		
		
		model.addAttribute("mainPage", "product/product01.jsp");
	
		return "index";
	}
	
	@RequestMapping("/community/community01")
	public String community01(Model model) {
		
		List<NoticeDto> list = noticeService.list();
		
		model.addAttribute("list", list);
		model.addAttribute("mainPage", "community/community01.jsp");
	
		return "index";
		
		
	}
	@RequestMapping("/community/community01_1")
	public String community01_1(@RequestParam(value= "notice_idx")String notice_idx,
								Model model) {
		
		List<NoticeDto> dto = noticeService.notice_info_once(notice_idx);
		model.addAttribute("dto", dto);
		System.out.println("notice_idx:"+notice_idx);
		model.addAttribute("mainPage", "community/community01_1.jsp");
		
		return "index";
	}
	
	@RequestMapping("/community/community02")
	public String community02(Model model) {
		
		List<NewsDto> list = newsService.list();
		
		model.addAttribute("list", list);
		model.addAttribute("mainPage", "community/community02.jsp");
	
		return "index";
	}
	@RequestMapping("/community/community02_1")
	public String community02_1(@RequestParam("news_idx")String news_idx,
								Model model) {
		
		List<NewsDto> dto = newsService.news_info_once(news_idx);
		
		model.addAttribute("dto", dto);
		model.addAttribute("mainPage", "community/community02_1.jsp");
	
		return "index";
	}
	@RequestMapping("/community/community03")
	public String community03(Model model) {
		
		List<JobDto> list = jobService.list();
		
		model.addAttribute("list", list);
		model.addAttribute("mainPage", "community/community03.jsp");
	
		return "index";
	}
	
	@RequestMapping("/community/community03_1")
	public String community03_1(@RequestParam("job_idx")String job_idx,
								Model model) {
		
		List<JobDto> dto = jobService.job_info_once(job_idx);
		
		model.addAttribute("dto", dto);
		model.addAttribute("mainPage", "community/community03_1.jsp");
	
		return "index";
	}
	
	
	
	
	
	@RequestMapping("/customer/customer01")
	public String customer01(Model model) {
		
		model.addAttribute("mainPage", "customer/customer01.jsp");
		
	
		return "index";
	}
	
	@RequestMapping("/customer/customer02")
	public String customer02(Model model,HttpServletRequest request) {
		
		List<QnaDto> list;
		list = qnaService.list();
		
		model.addAttribute("list", list);
		model.addAttribute("mainPage", "customer/customer02.jsp");
	
		return "index";
	}
	
	
	//qna ui화면
	@RequestMapping("/customer/customer02_2")
	public String customer02_2(Model model) {
			
		model.addAttribute("mainPage", "customer/customer02_2.jsp");
		
		return "index";
	}
	
	
	//qna 비밀번호 확인 팝업
	@RequestMapping("/customer/customer02_3")
	public String customer02_3(HttpServletRequest request,
								@RequestParam("qna_idx")String qna_idx,
								Model model) {
		
		model.addAttribute("qna_idx", qna_idx);
		//System.out.println("qna_idx:"+qna_idx);
		return "/customer/customer02_3";
	}
	
	//qna 비밀번호 확인 액션
	@RequestMapping("/customer/qna_pw_check_Action")
	@ResponseBody
	public String check_qna_pw_Action(HttpServletRequest request,
								      @RequestParam("qna_idx")String qna_idx,
									  @RequestParam("qna_pw_check")String qna_pw_check,
									  Model model) {
		
		
		
		model.addAttribute("qna_idx",qna_idx);
		int result = qnaService.qna_pw_check(qna_idx , qna_pw_check);
		System.out.println(result);
		
		if(result == 1) {
			//성공시 customer02_1로 디스패치
			return "<script>alert('비밀번호가 일치합니다.'); opener.window.location.href='/customer/customer02_1?qna_idx="+qna_idx+"';window.close()</script>";
		}else {
			return "<script>alert('비밀번호가 다릅니다.'); opener.window.location.href='/customer/customer02';window.close();</script>";
		}
	}
	@RequestMapping("/customer/customer02_1")
	public String customer02_1(HttpServletRequest request,
								@RequestParam("qna_idx")String qna_idx,
								Model model) {
		
		List<QnaDto> list = qnaService.qna_info_once(qna_idx);
		
		model.addAttribute("list", list);
		model.addAttribute("mainPage", "customer/customer02_1.jsp");
	
		return "index";
	}
	
	//qna 질문등록
	@RequestMapping("/customer/qnaAction")
	@ResponseBody
	public String qnaAction(@RequestParam("qna_name")String qna_name,
							@RequestParam("qna_pw")String qna_pw,
							@RequestParam("qna_title")String qna_title,
							@RequestParam("qna_content")String qna_content) {
		
		System.out.println("qna_name:"+qna_name);
		System.out.println("qna_pw:"+qna_pw);
		System.out.println("qna_title:"+qna_title);
		System.out.println("qna_content:"+qna_content);
		
		
		int result = qnaService.write(qna_name,qna_pw,qna_title,qna_content);
		
		if(result == 1) {
			return "<script>alert('질문등록이 완료되었습니다.'); location.href='/customer/customer02';</script>";
		}else {
			return "<script>alert('질문등록에 실패했습니다.'); history.back(-1);</script>";
		}
			
	}
	
	
	@RequestMapping("/customer/one2oneAction")
	@ResponseBody
	public String one2one(@RequestParam("one2one_name")String one2one_name,
						  @RequestParam("one2one_phone")String one2one_phone,
						  @RequestParam("one2one_email")String one2one_email,
						  @RequestParam("one2one_address")String one2one_address,
						  @RequestParam("one2one_title")String one2one_title,
						  @RequestParam("one2one_content")String one2one_content,
						  Model model) {
		int result = one2oneService.write(one2one_name,one2one_phone,one2one_email,one2one_address,
										  one2one_title,one2one_content);
		System.out.println("one2one_name:"+one2one_name);
		System.out.println("one2one_phone:"+one2one_phone);
		System.out.println("one2one_email:"+one2one_email);		
		System.out.println("one2one_address:"+one2one_address);
		System.out.println("one2one_title:"+one2one_title);
		System.out.println("one2one_content:"+one2one_content);
		
		if(result == 1) {
			return"<script>alert('글등록이 완료되었습니다.'); location.href='/customer/customer02';</script>";
		}else {
			return "<script>alert('글등록 실패'); history.back(-1);</script>";
		}
	}
	
	@RequestMapping("/customer/customer03")
	public String customer03(Model model) {
		
		List<FaqDto> list = faqService.list();
		
		model.addAttribute("list", list);
		model.addAttribute("mainPage", "customer/customer03.jsp");
	
		return "index";
	}
	
	
	@RequestMapping("/customer/customer03_1")
	public String customer03_1(@RequestParam("faq_idx")int faq_idx,
							   Model model) {
		
		FaqDto dto = faqService.view(faq_idx);
		model.addAttribute("dto", dto);
		
		model.addAttribute("mainPage", "customer/customer03_1.jsp");
		return "index";
	}
	
	
	
}



