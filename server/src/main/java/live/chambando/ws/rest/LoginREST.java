package live.chambando.ws.rest;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import live.chambando.ws.model.Cliente;
import live.chambando.ws.model.dto.ClienteDTO;
import live.chambando.ws.repository.ClienteRepository;

@CrossOrigin
@RestController
public class LoginREST {
	@Autowired
	private ClienteRepository repo;
	@Autowired
	private ModelMapper mapper;
	public static List<ClienteDTO> lista = new ArrayList<>();

	@PostMapping("/login")
	public ResponseEntity<ClienteDTO> realizarLogin(@RequestBody ClienteDTO loginRequest) {
		try {
			List<Cliente> lista = repo.findAll();
			ClienteDTO cliente = lista.stream().filter(user -> user.getLogin().equals(loginRequest.getLogin()))
					.map(user -> {
						String storedSalt = user.getSalt();
						String storedHashedPassword = user.getSenha();
						System.out.println("Stored Salt: " + storedSalt);
						System.out.println("Stored Hashed Password: " + storedHashedPassword);
						try {
							if (storedSalt != null && storedHashedPassword != null
									&& checkPassword(loginRequest.getSenha(), storedHashedPassword, storedSalt)) {
								return mapper.map(user, ClienteDTO.class);
							} else {
								return null;
							}
						} catch (Exception e) {
							e.printStackTrace();
							return null;
						}
					}).findAny().orElse(null);

			if (cliente != null) {
				return new ResponseEntity<>(cliente, HttpStatus.OK);
			} else {
				System.out.println("Authentication failed.");
				return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	private boolean checkPassword(String inputPassword, String storedHashedPassword, String storedSalt) {
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(hexToBytes(storedSalt));
			byte[] hashedInputPassword = md.digest(inputPassword.getBytes());
			String hashedInputPasswordHex = bytesToHex(hashedInputPassword);
			return hashedInputPasswordHex.equals(storedHashedPassword);
		} catch (NoSuchAlgorithmException e) {
			throw new RuntimeException("Error hashing password.", e);
		}
	}

	private byte[] hexToBytes(String hex) {
		int len = hex.length();
		byte[] data = new byte[len / 2];
		for (int i = 0; i < len; i += 2) {
			data[i / 2] = (byte) ((Character.digit(hex.charAt(i), 16) << 4) + Character.digit(hex.charAt(i + 1), 16));
		}
		return data;
	}

	private String bytesToHex(byte[] bytes) {
		StringBuilder result = new StringBuilder();
		for (byte b : bytes) {
			result.append(String.format("%02x", b));
		}
		return result.toString();
	}

}