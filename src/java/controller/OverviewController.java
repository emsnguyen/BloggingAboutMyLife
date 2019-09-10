/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.BaseDAO;
import dal.EntryDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Entry;
import sun.reflect.generics.tree.Tree;
import utils.HtmlHelper;

/**
 *
 * @author lenovo
 */
class DescOrder implements Comparator<Date> {
    @Override
    public int compare(Date o1, Date o2) {
        return o2.compareTo(o2);
    }
}

public class OverviewController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //get a list of records and then sort them according to month, year
        EntryDAO entryDB = new EntryDAO();
        try {
            int pageIndex = 0;
            String sIndex = request.getParameter("page");
            if (sIndex == null) {
                pageIndex = 1;
            } else {
                try {
                    pageIndex = Integer.parseInt(sIndex);
                } catch (Exception ex) {
                    Logger.getLogger(OverviewController.class.getName()).log(Level.SEVERE, null, ex);
                    getServletContext().getRequestDispatcher("/BlankPage.jsp").forward(request, response);
                    return;
                }
            }
            int pageGap = Integer.parseInt(BaseDAO.pageGap);
            int pageSize = Integer.parseInt(BaseDAO.pageSize);
            int start = (pageIndex - 1) * pageSize + 1;
            int end = start + pageSize - 1;
            int totalRecords = entryDB.getTotal();
            int totalPage = totalRecords / pageSize + ((totalRecords % pageSize > 0) ? 1 : 0);
            if (pageIndex <= 0 || totalRecords <= 0 || pageIndex > totalPage) {
                getServletContext().getRequestDispatcher("/BlankPage.jsp").forward(request, response);
                return;
            }
            String paging = HtmlHelper.paging(totalPage, pageGap, pageIndex);
            LinkedHashMap<String, ArrayList<Entry>> entryMap = entryDB.GetAllEntries(start, end);
            request.setAttribute("map", entryMap);
            request.setAttribute("paging", paging);
            getServletContext().getRequestDispatcher("/WEB-INF/Overview.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(OverviewController.class.getName()).log(Level.SEVERE, null, ex);
            getServletContext().getRequestDispatcher("/ErrorPage.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
        processRequest(request, response);
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
