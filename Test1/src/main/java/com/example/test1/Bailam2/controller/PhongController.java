package com.example.test1.Bailam2.controller;

import com.example.test1.Bailam2.entity.Phong;
import com.example.test1.Bailam2.repository.LoaiPhongRepository;
import com.example.test1.Bailam2.repository.PhongRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/phong")
public class PhongController {
    @Autowired
    PhongRepository phongRepository;
    @Autowired
    LoaiPhongRepository loaiPhongRepository;

    @GetMapping("/list")
    public String showtable(Model model){
        model.addAttribute("listLP",loaiPhongRepository.findAll());
        model.addAttribute("listP",phongRepository.findAll());
        return "phong/index";
    }
    @PostMapping("/add")
    public String add(Phong phong){
        phongRepository.save(phong);
        return "redirect:/phong/list";
    }

    @GetMapping("/detail")
    public String detail(Model model,Integer id){
        model.addAttribute("listLP",loaiPhongRepository.findAll());
        model.addAttribute("listP",phongRepository.findAll());
        model.addAttribute("list",phongRepository.findById(id).get());
        return "phong/index";
    }
}
