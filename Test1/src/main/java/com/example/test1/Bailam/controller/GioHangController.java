package com.example.test1.Bailam.controller;

import com.example.test1.Bailam.entity.GioHang;
import com.example.test1.Bailam.entity.KhachHang;
import com.example.test1.Bailam.repository.GioHangRepository;
import com.example.test1.Bailam.repository.KhachHangRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
  @GetMapping("/showupdate")
  public String showup(Model model,Integer id){
    model.addAttribute("listKH",khachHangRepository.findAll());
    model.addAttribute("list",gioHangRepository.findById(id).get());
    return "giohang/update";
  }
  @PostMapping("/update")
  public String update(GioHang gioHang){
    gioHangRepository.save(gioHang);
    return "redirect:/giohang/list";
  }

  @GetMapping("/delete")
  public String delete(Integer id){
    gioHangRepository.deleteById(id);
    return "redirect:/giohang/list";
  }
  @PostMapping("/add")
  public String add(GioHang gioHang){
    gioHangRepository.save(gioHang);
    return "redirect:/giohang/list";
  }
}
