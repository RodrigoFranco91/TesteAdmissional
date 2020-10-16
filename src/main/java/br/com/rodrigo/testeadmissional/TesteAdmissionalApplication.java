package br.com.rodrigo.testeadmissional;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.format.datetime.DateFormatterRegistrar;
import org.springframework.format.support.DefaultFormattingConversionService;
import org.springframework.format.support.FormattingConversionService;

@SpringBootApplication
public class TesteAdmissionalApplication {

	public static void main(String[] args) {
		SpringApplication.run(TesteAdmissionalApplication.class, args);
	}

}
