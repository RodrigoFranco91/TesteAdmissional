package br.com.rodrigo.testeadmissional.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.rodrigo.testeadmissional.model.Aluno;

public interface AlunoRepository extends JpaRepository<Aluno, Long>{

}
