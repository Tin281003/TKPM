package controller.Receipt;

import model.Bill_Detail;
import model.Receipt;
import service.ReceiptService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Bill_detail_Admin", value = "/Bill_detail_Admin")
public class Bill_detail_Admin extends HttpServlet {

//    4.1.2. next page -> 4.1.3. check -> 4.1.4.  Valid
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tenKH = request.getParameter("tenkh");
        Receipt receipt = ReceiptService.getReceiptByMahd(request.getParameter("mahd"));
        List<Bill_Detail> listcthdOfKH = ReceiptService.getcthdUser(request.getParameter("mahd"));

//        4.1.5. Success -> 4.1.6. Load data -> 4.1.7. Display Order details
        request.setAttribute("listcthdOfKH", listcthdOfKH);
        request.setAttribute("receipt", receipt);
        request.setAttribute("tenkh", tenKH);
        request.getRequestDispatcher("receipt-details.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
