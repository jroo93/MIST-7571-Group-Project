package model;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

/**
 * This class converts plaintext password to a SHA256 hash.
 * 
 */
public final class PasswordUtil {

	/**Encrypt string password to a hashed SHA256 encrypted version
	 */

	
	public String encrypt(String password) {
		MessageDigest md = null;

		try {
			md = MessageDigest.getInstance("SHA-256");
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		try {
			md.update(password.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		byte raw[] = md.digest();
		String hash = Base64.getEncoder().encodeToString(raw); 
		return hash;
	}
}
