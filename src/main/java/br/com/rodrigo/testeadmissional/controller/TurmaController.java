package br.com.rodrigo.testeadmissional.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.rodrigo.testeadmissional.model.Professor;
import br.com.rodrigo.testeadmissional.model.Turma;
import br.com.rodrigo.testeadmissional.repository.ProfessorRepository;
import br.com.rodrigo.testeadmissional.repository.TurmaRepository;

@Controller
public class TurmaController {

	@Autowired
	private TurmaRepository turmaRepository;

	@Autowired
	private ProfessorRepository professorRepository;

	@RequestMapping("turma")
	public ModelAndView formulario() {
		List<Professor> professores = professorRepository.findAll();
		ModelAndView mv = new ModelAndView("turma/form-turma.jsp");
		mv.addObject("professores", professores);
		return mv;
	}

	@RequestMapping("cadastroTurma")
	public String cadastroTurma(Turma turma) {
		turmaRepository.save(turma);
		return "redirect:listaTurma";
	}

	@RequestMapping("listaTurma")
	public ModelAndView listaTurma() {
		ModelAndView mv = new ModelAndView("turma/list-turma.jsp");
		List<Turma> turmas = turmaRepository.findAll();
		mv.addObject("turmas", turmas);
		return mv;
	}
	
	@RequestMapping("removeTurma")
	public String listaTurma(Turma turma) {
		turmaRepository.delete(turma);
		return "redirect:listaTurma";
	}
	
	@RequestMapping("atualizaTurma")
	public ModelAndView formularioUpdate(Turma turma) {
		ModelAndView mv = new ModelAndView("turma/form-update.jsp");
		mv.addObject("turma", turmaRepository.getOne(turma.getId()));
		mv.addObject("professores", professorRepository.findAll());
		return mv;
	}
}
