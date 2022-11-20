package servlet;

import Bean.FeedBack;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

/**
 * @author cc
 * @data 2020/6/9 - 11:46
 * 登出
 */
public class QuitServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession ss = req.getSession();
        ss.invalidate();

        //设置反馈信息
        ArrayList<FeedBack> arrayListFb = new ArrayList<>();
        FeedBack fb = new FeedBack();
        fb.setMess("退出成功");
        arrayListFb.add(fb);
        req.setAttribute("listFb",arrayListFb);

        try {
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        }
    }
}
