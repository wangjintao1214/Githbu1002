package com.kgc.springssm.controller;

import com.kgc.springssm.pojo.Meetingroom;
import com.kgc.springssm.service.MeetingroomService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-02 8:22
 */
@Controller
public class MeetingroomController {
    @Resource
    MeetingroomService meetingroomService;

    @RequestMapping("/")
    public String toindex(Model model){
        List<Meetingroom> list = meetingroomService.selectAll();
        model.addAttribute("list",list);
        return "index";
    }
    @RequestMapping("/toadd")
    public String toadd(){
        return "add";
    }

    @RequestMapping("add")
    public String add(Meetingroom meetingroom,Model model){
        int i = meetingroomService.add(meetingroom);
        if(i>0){
            model.addAttribute("msg","添加成功");
            return "redirect:/";
        }else {
            model.addAttribute("msg","添加失败");
            return "redirect:/toadd";
        }

    }

}
