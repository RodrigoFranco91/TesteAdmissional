package br.com.rodrigo.testeadmissional.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping("sobre")
	public String sobre() {
		return "sobre.jsp";
	}
}
