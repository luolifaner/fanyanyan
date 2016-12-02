package org.mzd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.chainsaw.Main;
import org.lanqiao.domain.Post;
import org.lanqiao.domain.Reply;
import org.mzd.dao.impl.PostDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	PostDao pd = new PostDao();

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Model model, String rauther, String password, HttpSession session) {
		Reply reply = new Reply();
		reply.setRauther(rauther);
		reply.setPassword(password);
		List<Reply> list = pd.login(reply);
		int i = list.size();
		if (i == 0) {
			return "redirect:/view/Login";
		} else {
			session.setAttribute("reply_auther", rauther);
			session.setAttribute("reply_password", password);
			return "redirect:/select";
		}
	}
	@RequestMapping("/select")
	public String select(Model model){
		List<Post> list;
		list=pd.select();
		model.addAttribute("post",list);
		
		return "insert";
	}
	@RequestMapping("/select1")
	public String select1(Model model,int id,HttpSession session){
		List list;
		session.setAttribute("reply_id",id);
		list = pd.selectReply(id);
		model.addAttribute("post",list);
		list = pd.selectMore(id);
		model.addAttribute("more",list);
		return "second";
	}

}
