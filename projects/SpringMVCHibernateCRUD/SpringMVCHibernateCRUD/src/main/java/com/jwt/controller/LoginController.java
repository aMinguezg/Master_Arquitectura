package com.jwt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jwt.model.Usuario;
import com.jwt.service.UsuarioManager;

 
 
@Controller
@RequestMapping("login")
 public class LoginController {


	
	@RequestMapping(value = "/")
	public String getForm()
	{
		System.out.println("Preparing the model for Login");
		//We could prepare the model here instead of using  @ModelAttribute
		return "login";
	}
	
	
	
}
