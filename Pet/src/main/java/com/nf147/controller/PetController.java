package com.nf147.controller;

import com.nf147.dao.PetPetMapper;
import com.nf147.entity.PetPet;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/")
public class PetController {

    @Autowired
    private PetPetMapper petPetMapper;

    @RequestMapping(method = RequestMethod.GET)
    public String selectAll(Model model) {
        List<PetPet> Pets = petPetMapper.selectAll();
        model.addAttribute("Pets", Pets);
        return "index";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/pet/{petId}")
    public String delPet(@PathVariable("petId") int petId) {
        petPetMapper.deleteByPrimaryKey(petId);
        return "redirect:/";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/pet")
    public String addPet(PetPet pet) {
        petPetMapper.insert(pet);
        return "redirect:/";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/up")
    public String updatePet(PetPet pet) {
        System.out.println("22");
        petPetMapper.updateByPrimaryKey(pet);
        return "redirect:/";
    }

//    @RequestMapping(method = RequestMethod.GET, value = "/pet/findByStatus")
//    public String findByStatus(String pet_status) {
//        petPetMapper.findByStatus(pet_status);
//        return "";
//    }
//
//    @RequestMapping(method = RequestMethod.GET, value = "/pet/{petId}")
//    public String selectPetByID(@PathVariable("petId") int petId) {
//        petPetMapper.selectByPrimaryKey(petId);
//        return "";
//    }
//
//    @RequestMapping(method = RequestMethod.POST, value = "/pet/{petId}")
//    public String updatePetByForm(@PathVariable("petId") int petId, String pet_name, String pet_status) {
//        PetPet pet = new PetPet();
//        pet.setPet_id(petId);
//        pet.setPet_name(pet_name);
//        pet.setPet_status(pet_status);
//        petPetMapper.updatePetByForm(pet);
//        return "";
//    }
//
//    @RequestMapping(method = RequestMethod.POST, value = "/pet/{petId}/uploadImage")
//    public String uploadImage(@PathVariable("petId") int petId, String photo_urls) {
//        PetPet pet = new PetPet();
//        pet.setPet_id(petId);
//        pet.setPhoto_urls(photo_urls);
//        petPetMapper.uploadImage(pet);
//        return "";
//    }

}
