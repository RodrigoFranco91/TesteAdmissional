package br.com.rodrigo.testeadmissional.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.rodrigo.testeadmissional.model.Aluno;
import br.com.rodrigo.testeadmissional.model.Professor;
import br.com.rodrigo.testeadmissional.repository.AlunoRepository;
import br.com.rodrigo.testeadmissional.repository.ProfessorRepository;

@Controller
public class AlunoController {

	@Autowired
	private AlunoRepository alunoRepository;

	@RequestMapping("aluno")
	public String formulario() {
		return "aluno/form-aluno.jsp";
	}

	@RequestMapping("cadastroAluno")
	public String cadastroAluno(Aluno aluno) {
		Aluno alunoSalvo = alunoRepository.save(aluno);
		aluno.setMatricula(alunoSalvo.getId());
		alunoRepository.save(aluno);
		return "redirect:/listaAlunos";
	}

	@RequestMapping("listaAlunos")
	public ModelAndView listagemAlunos() {
		ModelAndView mv = new ModelAndView("aluno/list-aluno.jsp");
		mv.addObject("alunos", alunoRepository.findAll());
		return mv;
	}

	@RequestMapping("removeAluno")
	public String removeAluno(Aluno aluno) {
		alunoRepository.delete(aluno);
		return "redirect:listaAlunos";
	}

	@RequestMapping("atualizaAluno")
	public ModelAndView formularioUpdate(Aluno aluno) {
		ModelAndView mv = new ModelAndView("aluno/form-update.jsp");
		mv.addObject("aluno", alunoRepository.getOne(aluno.getId()));
		return mv;
	}

	@RequestMapping("alteraAluno")
	public String alteraAluno(Aluno aluno) {
		Aluno oldAluno = alunoRepository.getOne(aluno.getId());
		oldAluno.setNome(aluno.getNome());
		oldAluno.setMatricula(aluno.getId());
		alunoRepository.save(oldAluno);
		return "redirect:listaAlunos";
	}
}
