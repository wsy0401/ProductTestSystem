package cn.com.ennoconn.Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ProductTestSystemDBUtil {
    private static String IP = "192.168.109.168";
    private static int PORT = 3306;
    private static String DBNAME = "ProductTestSystem";
    private static String LOGINNAME = "root";
    private static String PASSWORD = "123456";
    private static String ENCODING = "UTF-8";

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        String url = String.format("jdbc:mysql://%s:%s/%s?characterEncoding=%s", IP, PORT, DBNAME, ENCODING);
        url+="&serverTimezone=GMT%2B8";
        System.out.println(url);
        return DriverManager.getConnection(url, LOGINNAME, PASSWORD);

    }
}
