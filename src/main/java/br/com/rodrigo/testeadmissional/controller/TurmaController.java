package br.com.rodrigo.testeadmissional.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.rodrigo.testeadmissional.model.Aluno;
import br.com.rodrigo.testeadmissional.model.Professor;
import br.com.rodrigo.testeadmissional.model.Turma;
import br.com.rodrigo.testeadmissional.repository.AlunoRepository;
import br.com.rodrigo.testeadmissional.repository.ProfessorRepository;
import br.com.rodrigo.testeadmissional.repository.TurmaRepository;
import javassist.expr.NewArray;

@Controller
public class TurmaController {

	@Autowired
	private TurmaRepository turmaRepository;

	@Autowired
	private ProfessorRepository professorRepository;

	@Autowired
	private AlunoRepository alunoRepository;

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
		try {
			turmaRepository.delete(turma);
			return "redirect:listaTurma";
		} catch (Exception e) {
			return "turma/erro.jsp";
		}

	}
	
	@RequestMapping("atualizaTurma")
	public ModelAndView formularioUpdate(Turma turma) {
		ModelAndView mv = new ModelAndView("turma/form-update.jsp");
		mv.addObject("turma", turmaRepository.getOne(turma.getId()));
		mv.addObject("professores", professorRepository.findAll());
		return mv;
	}
	
	@RequestMapping("alteraTurma")
	public String alteraTurma(Turma turma) {
		
		turmaRepository.save(turma);
		return "redirect:listaTurma";
	}
	
	@RequestMapping("listagemTurma")
	public ModelAndView listagemDeTurmas() {
		ModelAndView mv = new ModelAndView("turma/listagem-turma-add.jsp");
		List<Turma> turmas = turmaRepository.findAll();
		mv.addObject("turmas", turmas);
		return mv;
	}
	
	@RequestMapping("formAddAluno")
	public ModelAndView formAddAluno(Long id) {
		List<Aluno> alunosFree = new ArrayList<Aluno>();
		ModelAndView mv = new ModelAndView("turma/formAddAluno.jsp");
		mv.addObject("turma", turmaRepository.getOne(id));
		List<Aluno> alunos = alunoRepository.findAll();
		for (Aluno aux : alunos) {
			if(aux.getTurma() == null) {
				alunosFree.add(aux);
			}
		}
		mv.addObject("alunos", alunosFree);
		return mv;
	}
	
	@RequestMapping("adicionaAluno")
	public String adicionaAluno(Turma turmaComAlunos) {
		Turma oldTurma = turmaRepository.getOne(turmaComAlunos.getId());
		turmaComAlunos.setId(oldTurma.getId());
		turmaComAlunos.setDataAbertura(oldTurma.getDataAbertura());
		turmaComAlunos.setDataEncerramento(oldTurma.getDataEncerramento());
		turmaComAlunos.setSala(oldTurma.getSala());
		turmaComAlunos.setProfessor(oldTurma.getProfessor());
		List<Aluno> alunos = turmaComAlunos.getAlunos();
		for (Aluno aux : alunos) {
			aux.setTurma(turmaComAlunos);
			alunoRepository.save(aux);
		}
		
		turmaRepository.save(turmaComAlunos);
		return "redirect:listagemTurma";
	}
	
	@RequestMapping("verAlunos")
	public ModelAndView verAlunos(Turma turma) {
		ModelAndView mv = new ModelAndView("turma/alunos-da-turma.jsp");
		mv.addObject("turma", turmaRepository.getOne(turma.getId()));
		return mv;
	}
	
	@RequestMapping("formRemoveAluno")
	public ModelAndView formRemoveAluno(Long id) {
		ModelAndView mv = new ModelAndView("turma/formRemoveAluno.jsp");
		mv.addObject("turma", turmaRepository.getOne(id));
		return mv;
	}
	
	@RequestMapping("removeAlunoDaTurma")
	public String removeAluno(Turma turmaComAlunos) {
		List<Aluno> alunosAtualizados = new ArrayList<Aluno>();
		List<Aluno> alunosRemovidos = new ArrayList<Aluno>();
		Turma oldTurma = turmaRepository.getOne(turmaComAlunos.getId());
		turmaComAlunos.setId(oldTurma.getId());
		turmaComAlunos.setDataAbertura(oldTurma.getDataAbertura());
		turmaComAlunos.setDataEncerramento(oldTurma.getDataEncerramento());
		turmaComAlunos.setSala(oldTurma.getSala());
		turmaComAlunos.setProfessor(oldTurma.getProfessor());
		List<Aluno> alunosAntigos = oldTurma.getAlunos();
		for (Aluno auxAntigos : alunosAntigos) {
			for (Aluno auxParaRemover : turmaComAlunos.getAlunos()) {
				if(auxAntigos.getId() != auxParaRemover.getId()) {
					alunosAtualizados.add(auxAntigos);
				}else {
					alunosRemovidos.add(auxAntigos);
				}
			}
		}
		turmaComAlunos.setAlunos(alunosAtualizados);
		for (Aluno aux : alunosRemovidos) {
			aux.setTurma(null);
			alunoRepository.save(aux);
		}
		turmaRepository.save(turmaComAlunos);
		return "redirect:listagemTurma";
	}
}
