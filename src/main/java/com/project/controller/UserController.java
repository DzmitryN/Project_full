package com.project.controller;


import com.project.dao.UserDao;
import com.project.entity.User;
import com.project.service.UserService;
import com.project.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    public final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String view(){
      return "index";
    }

    @GetMapping("/hello")
    public String viewHello(){
        return "hello";
    }

    @GetMapping("/users")
    public String getAllUsers(Model model){
        model.addAttribute("users", userService.findAll());
        return "usersList";
    }

    @GetMapping("/user/{id}")
    public String getById(@PathVariable("id") int id, Model model){
        model.addAttribute("user", userService.getById(id));
        return "showUser";
    }

    @GetMapping("/addUser")
    public String createUserPage(){
        return "createUser";
    }

    @PostMapping("/addUser")
    public String addUser(@ModelAttribute("user") User user){
        userService.save(user);
        return "redirect:/users";
    }

    @PostMapping("/updateUser")
    public String updateUser(@ModelAttribute("user") User user){
        userService.update(user);
        return "redirect:/user/" + user.getId();
    }

    @GetMapping("/update/{id}")
    public String update(@PathVariable("id") int id, Model model){
        model.addAttribute("user", userService.getById(id));
        return "editUser";
    }

    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable("id") int id){
        userService.delete(id);
        return "redirect:/users";
    }
}
