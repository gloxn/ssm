package com.gloxn.ServiceDao;

import com.gloxn.bean.EasyUIDataid;
import com.gloxn.bean.Menv;
import com.gloxn.bean.login;

import java.util.List;

public interface UserDao {
    public List<login> find();
    public  boolean userlogin(String name,String password);
    public List<Menv> All();
    EasyUIDataid showRole(int pageSize,int pageNumber);
}
