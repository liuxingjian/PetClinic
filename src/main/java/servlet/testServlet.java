package servlet;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.lang.reflect.Method;

/**
 * @author cc
 * @data 2020/6/19 - 10:50
 */
public class testServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setCharacterEncoding("UTF-8");
        String methodName = req.getParameter("method");

        try {
            Class c = this.getClass();
            Method method = c.getMethod(methodName,HttpServletRequest.class, HttpServletResponse.class);
            method.invoke(this,req,resp);
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    public void selectOwner(HttpServletRequest req, HttpServletResponse resp){

        try {
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
