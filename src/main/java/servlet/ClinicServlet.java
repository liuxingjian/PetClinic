package servlet;

import Bean.Clinic;
import Dao.ClinicDAO;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import util.FBK;

import javax.imageio.IIOException;
import java.awt.*;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class ClinicServlet extends HttpServlet {
    ClinicDAO cl;
    Method method=null;
    FBK fbk=new FBK();
    ArrayList<Clinic> arrayList=new ArrayList<>();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        doPost(req,resp);
    }
    protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("UTF-8");
        String purpose = req.getParameter("purpose");
        System.out.println(purpose);
        Class c = this.getClass();          //获取当前类的CLass对象

        try {
            method = c.getMethod(purpose, HttpServletRequest.class, HttpServletResponse.class);
            method.invoke(this,req,resp);       //反射调用方法
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public void selectclinic(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        String ClinicName=req.getParameter("clinicName");
        cl=new ClinicDAO();
        arrayList=cl.search(ClinicName);
        req.setAttribute("list",arrayList);
        req.getRequestDispatcher("clinic/clinicsearch_name.jsp").forward(req,resp);
    }
    public void allclinic(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        ClinicDAO clinicDAO=new ClinicDAO();
        arrayList=clinicDAO.allclinic();
        req.setAttribute("list",arrayList);
        req.getRequestDispatcher("clinic/clinicsearch_name.jsp").forward(req,resp);
    }
    public void addclinic(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        ClinicDAO clinicDAO=new ClinicDAO();
        Clinic clinic=new Clinic();
        clinic.setName(req.getParameter("name"));
        clinic.setPhone(req.getParameter("phone"));
        clinic.setAddress(req.getParameter("address"));
        clinic.setDotime(req.getParameter("dotime"));
        clinic.setIntro(req.getParameter("intro"));
        clinicDAO.addclinic(clinic);
        arrayList=clinicDAO.allclinic();
        req.setAttribute("list",arrayList);
        req.getRequestDispatcher("clinic/clinicsearch_name.jsp").forward(req,resp);
    }
    public void deleteclinic(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        ClinicDAO clinicDAO=new ClinicDAO();
        clinicDAO.delclinic(req.getParameter("name"));
        arrayList=clinicDAO.allclinic();
        req.setAttribute("list",arrayList);
        req.getRequestDispatcher("clinic/clinicsearch_name.jsp").forward(req,resp);
    }
    public void clinicupdate(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        ClinicDAO clinicDAO=new ClinicDAO();
        Clinic clinic=new Clinic();
        clinic.setName(req.getParameter("name"));
        clinic.setPhone(req.getParameter("phone"));
        clinic.setAddress(req.getParameter("address"));
        clinic.setDotime(req.getParameter("dotime"));
        clinic.setIntro(req.getParameter("intro"));
        clinicDAO.updateClinic(clinic);
        arrayList=clinicDAO.allclinic();
        req.setAttribute("list",arrayList);
        req.getRequestDispatcher("clinic/clinicsearch_name.jsp").forward(req,resp);
    }

    public void show(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        Clinic clinic=new Clinic();
        clinic.setName(req.getParameter("name"));
        clinic.setPhone(req.getParameter("phone"));
        clinic.setAddress(req.getParameter("address"));
        clinic.setDotime(req.getParameter("dotime"));
        clinic.setIntro(req.getParameter("intro"));
        req.setAttribute("clinic",clinic);
        req.getRequestDispatcher("clinic/clinicUpdate.jsp").forward(req,resp);
    }
}
