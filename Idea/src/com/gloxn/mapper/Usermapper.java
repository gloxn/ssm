package com.gloxn.mapper;

import com.gloxn.bean.Menv;
import com.gloxn.bean.Role;
import com.gloxn.bean.User;
import com.gloxn.bean.login;

import java.util.List;
import java.util.ListResourceBundle;

public interface Usermapper {
         public List<login> find();
         public List<login> findAll(String name,String password);
         public List<Menv> All();
         public List<Menv> chid(int id);
         List<Role> selByPage(int pageStart,int pageSize);
         int selCount();
}
