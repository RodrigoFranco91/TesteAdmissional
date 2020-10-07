package br.com.rodrigo.testeadmissional.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/")
	public String formulario() {
		return "index.jsp";
	}
}
