package live.chambando.ws.main;

import org.modelmapper.ModelMapper;
import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories("live.chambando.ws.*")
@ComponentScan(basePackages = "live.chambando.ws.*")
@EntityScan("live.chambando.ws.*")
@SpringBootApplication(scanBasePackages="live.chambando.ws")
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}
	
	@Bean
	public ModelMapper modelMapper() {
		return new ModelMapper();
	}

}
