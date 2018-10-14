package cn.com.ennoconn.Utils;

import org.junit.Test;

import java.sql.SQLException;

import static org.junit.Assert.*;

public class ProductTestSystemDBUtilTest {

    @Test
    public void getConnection() {
        try {
            assertNotNull(ProductTestSystemDBUtil.getConnection());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}