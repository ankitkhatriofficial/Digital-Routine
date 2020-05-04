package com.DigitalRoutine.login;

public class LoginUserValidationService {

	public boolean isUserValid(String username, String password) {

		if (username.equals("KHATRI") && password.equals("123456")) {
			return true;
		}

		return false;
	}
}
