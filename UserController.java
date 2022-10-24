
package com.mycom.rest.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import dto.UserDto;

@RestController
public class UserController {
	// 로그인
	@PostMapping(value="/login")
	public UserDto login(@PathVariable String userEmail, @PathVariable String userPassword) {
		return new UserDto("김싸피", "1234", "ssafy@ssafy.com", "", now(), "001");
	}
	// 로그아웃
	@GetMapping(value="/logout")
	public void logout(@PathVariable String userEmail, @PathVariable String userPassword) {
		return;
	}
	// 회원등록
	@PostMapping(value="/register")
	public int register (UserDto dto) {
		return 1;
	}
	// 회원정보 수정
	@PutMapping(value="/modify/{userEmail}")
	public int modify(@PathVariable String userEmail, @RequestBody UserDto dto) {
		return 1;
	}
	// 회원계정 삭제
	@DeleteMapping(value="/withdraw/{userEmail}")
	public int withdraw(String userEmail) {
		return 1;
	}
	// 리뷰 등록
	@PostMapping(value="/review")
	public int review (@PathVariable String userEmail) {
		return 1;
	}
}
