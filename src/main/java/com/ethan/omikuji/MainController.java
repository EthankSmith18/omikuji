package com.ethan.omikuji;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

  // @RequestMapping("/")
  // public String index(){
  //   return "redirect:/omikuji";
  // }

  @RequestMapping(value ={"/omikuji", "/"})
  public String omikuji(HttpSession session){

    return "omikuji.jsp";
  }

  @RequestMapping(value ="/display")
  public String display(){
    


    return "display.jsp";
  }

  @RequestMapping(value ="/data", method = RequestMethod.POST)
  public String data(    @RequestParam(value = "number") String number,
  @RequestParam(value = "city") String city,
  @RequestParam(value = "person") String person,
  @RequestParam(value = "hobby") String hobby,
  @RequestParam(value = "living") String living,
  @RequestParam(value = "nice") String nice,
  HttpSession session)
  {
    session.setAttribute("number", number);
    session.setAttribute("city", city);
    session.setAttribute("person", person);
    session.setAttribute("hobby", hobby);
    session.setAttribute("living", living);
    session.setAttribute("nice", nice);{


    return "redirect:/display";
    }
  }
}
