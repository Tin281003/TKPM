package controller.Receipt;

import bean.User;
import service.ReceiptService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "adminRemoveOrder", value = "/adminRemoveOrder")
public class adminRemoveOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 7. Load data
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(true);
        // 8. valid
        String mahd = request.getParameter("mahd");
        //9. update
        ReceiptService.updateTonKhoWhenCancelOrder(mahd);
        ReceiptService.cancelOrder(mahd);


        User user = (User) session.getAttribute("auth");
//        11. Display -> 12. Display cancelled status
        response.sendRedirect("./ListReceipt_full_Admin");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
