package com.nf147.controller;

import com.nf147.dao.PetUserMapper;
import com.nf147.entity.PetPet;
import com.nf147.entity.PetUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private PetUserMapper petUserMapper;


    @RequestMapping(method = RequestMethod.GET)
    public String selectAll(Model model) {
        List<PetUser> Users = petUserMapper.selectAll();
        model.addAttribute("Users", Users);
        return "user";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/add")
    public String addUser(PetUser user){
        petUserMapper.insert(user);
        return "redirect:/user";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/up")
    public String updatePet(PetUser user) {
        petUserMapper.updateByPrimaryKey(user);
        return "redirect:/user";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/del/{username}")
    public String delUser(@PathVariable("username") String username){
        petUserMapper.deleteByPrimaryKey(username);
        return "redirect:/user";
    }

//    @RequestMapping(method = RequestMethod.GET, value = "/user/login")
//    public String login(PetUser petUser){
//        petUserMapper.updateStatus(petUser);
//        return "";
//    }
//
//    @RequestMapping(method = RequestMethod.GET, value = "/user/logout")
//    public String loginSession(@SessionAttribute PetUser petUser){
//        petUserMapper.updateStatus(petUser);
//        return "";
//    }
//
//    @RequestMapping(method = RequestMethod.GET, value = "/user/{username}")
//    public String gteUser(@PathVariable String username){
//        petUserMapper.selectByName(username);
//        return "";
//    }
//    @RequestMapping(method = RequestMethod.POST, value = "/user/createWithArray")
//    public String addUser(ArrayList<PetUser> list) {
//        for (PetUser user : list) {
//            petUserMapper.insert(user);
//        }
//        return "";
//    }
//
//    @RequestMapping(method = RequestMethod.POST, value = "/user/createWithList")
//    public String addUser(List<PetUser> list) {
//        for (PetUser user : list) {
//            petUserMapper.insert(user);
//        }
//        return "";
//    }
}
