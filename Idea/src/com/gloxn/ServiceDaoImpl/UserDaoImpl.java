package com.gloxn.ServiceDaoImpl;

import com.gloxn.ServiceDao.UserDao;
import com.gloxn.bean.*;
import com.gloxn.mapper.Usermapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserDaoImpl  implements UserDao{
    @Autowired
    private Usermapper usermapper;
    @Override
    public List<login> find() {
        return usermapper.find();
    }
    @Override
    public boolean userlogin(String name, String password) {
        List<login> list = usermapper.findAll(name,password);
        if(list.isEmpty()){
            return false;
        }else {
            return true;
        }


    }

    @Override
    public List<Menv> All() {
       List<Menv>  list = usermapper.All();
        for (Menv menv: list) {
          List<Menv>  chid = usermapper.chid(menv.getId());
            for (Menv chi: chid) {
                Attributes attributes = new Attributes();
                String filename =   chi.getFilename();
                attributes.setFilename(filename);
                chi.setAttributes(attributes);
            }
              menv.setChildren(chid);
        }
        return list ;
    }

    @Override
    // pagesize 每页记录数 pagenumber 当前页数
    public EasyUIDataid showRole(int pageSize, int pageNumber) {
        EasyUIDataid data = new EasyUIDataid();
        List<Role> lsit = usermapper.selByPage((pageNumber-1)*pageSize,pageSize);
        data.setRows(lsit);
        data.setTotal(usermapper.selCount());
        return data;
    }


}
