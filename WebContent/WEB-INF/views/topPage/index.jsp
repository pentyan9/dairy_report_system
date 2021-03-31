protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    if(request.getSession().getAttribute("flush") != null) {
        request.setAttribute("flush", request.getSession().getAttribute("flush"));
        request.getSession().removeAttribute("flush");
    }

    RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/topPage/index.jsp");
    rd.forward(request, response);
}