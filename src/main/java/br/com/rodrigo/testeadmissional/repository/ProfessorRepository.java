package br.com.rodrigo.testeadmissional.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.rodrigo.testeadmissional.model.Professor;

public interface ProfessorRepository extends JpaRepository<Professor, Long>{


}
