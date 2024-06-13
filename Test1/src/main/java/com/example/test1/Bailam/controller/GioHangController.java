package com.example.test1.Bailam.controller;

import com.example.test1.Bailam.repository.GioHangRepository;
import com.example.test1.Bailam.repository.KhachHangRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/giohang")
public class GioHangController {
  @Autowired
    GioHangRepository gioHangRepository;
  @Autowired
    KhachHangRepository khachHangRepository;

  @GetMapping("/list")
    public String showtable(Model model){
      model.addAttribute("listKH",khachHangRepository.findAll());
      model.addAttribute("listGH",gioHangRepository.findAll());
      return "giohang/index";

  }
}
