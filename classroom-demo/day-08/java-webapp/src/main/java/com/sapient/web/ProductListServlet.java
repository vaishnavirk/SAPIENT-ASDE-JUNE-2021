package com.sapient.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sapient.dao.ProductDao;
import com.sapient.dao.ProductDaoJpaImpl;
import com.sapient.entity.Product;

@WebServlet(urlPatterns = { "/product-list", "/products" })
public class ProductListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");
        PrintWriter out = resp.getWriter();

        ProductDao dao = new ProductDaoJpaImpl(); // ideally, get this from a factory
        try {
            List<Product> list = dao.getAllProducts();
            // generally we pass this "list" to a JSP (view) for presenting.
            out.println(list);
        } catch (Exception e) {
            throw new ServletException(e); // exception funnelling
        }
        out.close();
    }

}
