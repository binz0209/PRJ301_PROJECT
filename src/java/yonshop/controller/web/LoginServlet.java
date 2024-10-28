/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package yonshop.controller.web;

import yonshop.model.Constants;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import yonshop.dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import yonshop.model.UserDTO;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;
import org.apache.http.client.fluent.Form;


@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    private final String WELCOME = "DispatchServlet";
    private final String LOGIN = "view/jsp/home/login.jsp";
    private final String ADMIN_DASHBOARD = "AdminServlet";
    private final String REGISTER_CONTROLLER = "RegisterServlet";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    public static String getToken(String code) throws ClientProtocolException, IOException {
        // call api to get token
        String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
                        .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();

        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the +
    // sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = WELCOME;
        try {
            if (request.getParameter("btnAction") != null) {
                Cookie arr[] = request.getCookies();
                if (arr != null) {
                    for (int i = 0; i < arr.length; i++) {
                        if (arr[i].getName().equals("cUName")) {
                            request.setAttribute("uName", arr[i].getValue());
                        }
                        if (arr[i].getName().equals("cUPass")) {
                            request.setAttribute("uPass", arr[i].getValue());
                        }
                        if (arr[i].getName().equals("reMem")) {
                            request.setAttribute("reMem", arr[i].getValue());
                        }
                    }
                }
                url = LOGIN;
            } 
        } catch (Exception ex) {
            log("LoginServlet error:" + ex.getMessage());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String url = WELCOME;
        ResultSet rs = null;
        try {
            String btnValue = request.getParameter("btnAction");
            String username = request.getParameter("txtUsername");
            String password = request.getParameter("txtPassword");
            String remember = request.getParameter("remember");
            UserDAO udao = new UserDAO();
            UserDTO user = udao.checkLogin(username, password);
            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("account", user);
                Cookie u = new Cookie("cUName", username);
                Cookie p = new Cookie("cUPass", password);
                Cookie r = new Cookie("reMem", remember);

                u.setMaxAge(60 * 60 * 24 * 30 * 3); //3months
                if (remember != null) {
                    p.setMaxAge(60 * 60 * 24 * 30 * 3);
                    r.setMaxAge(60 * 60 * 24 * 30 * 3);
                } else {
                    p.setMaxAge(0);
                    r.setMaxAge(0);
                }

                response.addCookie(u);
                response.addCookie(p);
                response.addCookie(r);
                if (user.getRoleID() == 1) {
                    response.sendRedirect(ADMIN_DASHBOARD);
                } else {
                    response.sendRedirect(WELCOME);
                }
            } else {
                String error = "Invalid username or password!";
                request.setAttribute("msg", error);
                RequestDispatcher rd = request.getRequestDispatcher(LOGIN);
                rd.forward(request, response);
            }
        } catch (Exception ex) {
            log("LoginServlet error:" + ex.getMessage());
        } finally {
            out.close();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
