package Dao;

import Bean.Clinic;
import util.Conn;

import java.sql.SQLException;
import java.util.ArrayList;

public class ClinicDAO {
    Conn cn=null;
    String strName[];
    ArrayList<Clinic> arrayList=new ArrayList<>();

    public ArrayList<Clinic> search(String clinicName){
        String sql;
        Clinic clinic;
        if(!clinicName.isEmpty()){
            cn=new Conn();
            try {
                sql="select * from clinic where name ='"+clinicName+"'";
                cn.pr=cn.cn.prepareStatement(sql);
                cn.rs=cn.pr.executeQuery();
                while (cn.rs.next()){
                    Clinic c=new Clinic();
                    c.setName(cn.rs.getString("name"));
                    c.setAddress(cn.rs.getString("address"));
                    c.setDotime(cn.rs.getString("dotime"));
                    c.setIntro(cn.rs.getString("intro"));
                    c.setPhone(cn.rs.getString("phone"));
                    arrayList.add(c);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return arrayList;
    }

    public ArrayList<Clinic> allclinic(){
            String sql;
            cn=new Conn();
            try {
                sql="select * from clinic";
                cn.pr=cn.cn.prepareStatement(sql);
                cn.rs=cn.pr.executeQuery();
                while (cn.rs.next()){
                    Clinic c=new Clinic();
                    c.setName(cn.rs.getString("name"));
                    c.setAddress(cn.rs.getString("address"));
                    c.setDotime(cn.rs.getString("dotime"));
                    c.setIntro(cn.rs.getString("intro"));
                    c.setPhone(cn.rs.getString("phone"));
                    arrayList.add(c);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        return arrayList;
    }

    public void delclinic(String clinicName){
        cn=new Conn();
        try{
            String sql="delete from clinic where name='"+clinicName+"'";
            cn.pr=cn.cn.prepareStatement(sql);
            cn.pr.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        cn.close();
    }

    public void addclinic(Clinic cl){
        cn=new Conn();
        String sql="insert into clinic values (?,?,?,?,?)";
        System.out.println(cl.getName()+"--");
        try{
            cn.pr=cn.cn.prepareStatement(sql);
            cn.pr.setObject(1,cl.getName());
            cn.pr.setObject(2,cl.getPhone());
            cn.pr.setObject(3,cl.getAddress());
            cn.pr.setObject(4,cl.getDotime());
            cn.pr.setObject(5,cl.getIntro());
            cn.pr.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        cn.close();
    }

    public void updateClinic(Clinic cl){
        cn=new Conn();
        String sql="update clinic set name=?,phone=?,address=?,dotime=?,intro=? where name='"+cl.getName()+"'";
        try{
            cn.pr=cn.cn.prepareStatement(sql);
            cn.pr.setObject(1,cl.getName());
            cn.pr.setObject(2,cl.getPhone());
            cn.pr.setObject(3,cl.getAddress());
            cn.pr.setObject(4,cl.getDotime());
            cn.pr.setObject(5,cl.getIntro());
            cn.pr.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
        cn.close();
    }

}