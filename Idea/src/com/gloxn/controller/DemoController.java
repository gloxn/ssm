package com.gloxn.controller;

import com.gloxn.ServiceDao.UserDao;
import com.gloxn.ServiceDaoImpl.UserDaoImpl;
import com.gloxn.bean.EasyUIDataid;
import com.gloxn.bean.Menv;
import com.gloxn.bean.User;
import com.gloxn.bean.login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class DemoController {
    @Autowired
    private UserDaoImpl userdao;
    @RequestMapping("/login.action")
    @ResponseBody
    public String hello(String name, String password, HttpSession session){
    boolean  fa = userdao.userlogin(name,password);

    if(fa){

//          session.setAttribute("name",name);
       // return "redirect:index.jsp";
        return "1";
    }else {
        //return "redirect:jsp/login.jsp";
        return "0";
    }


    }
    @RequestMapping("/show.action")
    @ResponseBody
    public List<Menv> showMenv(){

        return  userdao.All();
    }
   @RequestMapping("/showRole.action")
   @ResponseBody
   //page 当前页 rows 一页的页数
     public EasyUIDataid showRole(@RequestParam int page,@RequestParam int rows){
                  System.out.println(page);
                  System.out.println(rows);
      EasyUIDataid easyUIDataid =  userdao.showRole(rows,page);
            System.out.println(easyUIDataid.getRows());
        return easyUIDataid;
   }

}
