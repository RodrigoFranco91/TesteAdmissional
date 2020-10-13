package br.com.rodrigo.testeadmissional.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.rodrigo.testeadmissional.model.Professor;
import br.com.rodrigo.testeadmissional.repository.ProfessorRepository;

@Controller
public class ProfessorController {

	@Autowired
	private ProfessorRepository professorRepository;

	@RequestMapping("professor")
	public String formulario() {
		return "professor/form-professor.jsp";
	}

	@RequestMapping("cadastroProfessor")
	public String cadastroProfessor(Professor professor) {
		professorRepository.save(professor);
		return "redirect:listaProfessores";
	}

	@RequestMapping("listaProfessores")
	public ModelAndView listagemProfessores() {
		ModelAndView mv = new ModelAndView("professor/list-professor.jsp");
		mv.addObject("professores", professorRepository.findAll());
		return mv;
	}

	@RequestMapping("removeProfessor")
	public String removeProfessor(Professor professor) {
		professorRepository.delete(professor);
		return "redirect:listaProfessores";
	}

	@RequestMapping("atualizaProfessor")
	public ModelAndView formularioUpdate(Professor professor) {
		ModelAndView mv = new ModelAndView("professor/form-update.jsp");
		mv.addObject("professor", professorRepository.getOne(professor.getId()));
		return mv;
	}

	@RequestMapping("alteraProfessor")
	public String alteraProfessor(Professor professor) {
		Professor oldProfessor = professorRepository.getOne(professor.getId());
		oldProfessor.setNome(professor.getNome());
		oldProfessor.setTitulacao(professor.getTitulacao());
		professorRepository.save(oldProfessor);
		return "redirect:listaProfessores";
	}

}
