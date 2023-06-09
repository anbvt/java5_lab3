package com.fpoly.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fpoly.model.Student;

@Controller
public class StudentController {
	@GetMapping("/student/form")
	public String form(@ModelAttribute("sv") Student sv) {
		return "student/form";
	}

	@RequestMapping("/student/save")
	public String save(Model model, @Validated @ModelAttribute("sv") Student sv, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau: ");
		} else {
			model.addAttribute("message", "Chúc mừng, bạn đã nhập đúng");
		}
		return "student/form";
	}

	@ModelAttribute("gender")
	public Map<Boolean, String> getGenders() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Male");
		map.put(false, "Female");
		return map;
	}

	@ModelAttribute("faculties")
	public List<String> getFaculties() {
		return Arrays.asList("CNTT", "DLNHKS", "QTDN");
	}

	@ModelAttribute("hobbies")
	public Map<String, String> getHobbies() {
		Map<String, String> map = new HashMap<>();
		map.put("T", "Traveling");
		map.put("M", "Music");
		map.put("F", "Food");
		map.put("O", "Other");
		return map;
	}
}
