package controller.Receipt;

import bean.User;
import model.*;
import service.ReceiptService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminEditOrder", value = "/AdminEditOrder")
public class AdminEditOrder extends HttpServlet {
//   4.2.2 next page ->  4.2.3. check data -> 4.2.4. valid -> 4.2.5. success -> 4.2.6. display OI -> 4.2.7. Display Edit Order OI
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String madh = request.getParameter("id");
        request.setAttribute("listStatus", ReceiptService.getAllStatusNameOrder());

        String tenKH = request.getParameter("tenkh");
        Receipt receipt = ReceiptService.getReceiptByMahd(madh);
        List<Bill_Detail> listcthdOfKH = ReceiptService.getcthdUser(madh);
        request.setAttribute("listcthdOfKH", listcthdOfKH);
        request.setAttribute("receipt", receipt);
        request.setAttribute("tenkh", tenKH);


        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("auth");



        request.getRequestDispatcher("edit-order.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
