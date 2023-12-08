package live.chambando.ws.model;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_usuarios")
public class Cliente implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name = "funcionario_seq", sequenceName = "tb_usuarios_id_usuario_seq", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "usuario_seq")
	@Column(name = "id_usuario")
	private long id;

	@Column(name = "nome_usuario")
	private String nome;

	@Column(name = "login_usuario")
	private String login;

	@Column(name = "senha_usuario")
	private String senha;

	@Column(name = "salt_usuario", length = 64)
	private String salt;

	public Cliente(String nome, String login, String senha, String salt) {
		this.setNome(nome);
		this.setLogin(login);
		this.setSenha(senha);
		this.setSalt(salt);
	}

	public Cliente() {
		// TODO Auto-generated constructor stub
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.salt = generateSalt();
        this.senha = hashPassword(senha, this.salt);
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	private String generateSalt() {
		SecureRandom random = new SecureRandom();
		byte[] saltBytes = new byte[32];
		random.nextBytes(saltBytes);
		return bytesToHex(saltBytes);
	}

	private String hashPassword(String password, String salt) {
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(hexToBytes(salt));
			byte[] hashedPassword = md.digest(password.getBytes());
			return bytesToHex(hashedPassword);
		} catch (NoSuchAlgorithmException e) {
			throw new RuntimeException("Error hashing password.", e);
		}
	}

	private String bytesToHex(byte[] bytes) {
		StringBuilder result = new StringBuilder();
		for (byte b : bytes) {
			result.append(String.format("%02x", b));
		}
		return result.toString();
	}

	private byte[] hexToBytes(String hex) {
		int len = hex.length();
		byte[] data = new byte[len / 2];
		for (int i = 0; i < len; i += 2) {
			data[i / 2] = (byte) ((Character.digit(hex.charAt(i), 16) << 4) + Character.digit(hex.charAt(i + 1), 16));
		}
		return data;
	}

}
