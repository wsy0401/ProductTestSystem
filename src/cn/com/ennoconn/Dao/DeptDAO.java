package cn.com.ennoconn.Dao;

import cn.com.ennoconn.Bean.Dept;
import cn.com.ennoconn.Utils.ProductTestSystemDBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DeptDAO {
    private static final String TABLE = "Dept";
    private static final String COL_DEPTCODE = "DeptCode";
    private static final String COL_DEPTDESCRIPTION = "DeptDescription";
    private Dept dept = null;

    public Dept getDept(String deptCode) {
        String getDeptSQL = "select * from " + TABLE + " where " + COL_DEPTCODE + " = ?";
        PreparedStatement preparedStatement = null;
        ResultSet rs=null;
        try {
            Connection connection = ProductTestSystemDBUtil.getConnection();
            preparedStatement = connection.prepareStatement(getDeptSQL);
            preparedStatement.setString(1, deptCode);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                dept = new Dept();
                dept.setDeptCode(rs.getString(COL_DEPTCODE));
                dept.setDeptDescription(rs.getString(COL_DEPTDESCRIPTION));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                if(preparedStatement!=null){
                    preparedStatement.close();
                }
                if (rs!=null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return dept;
    }
}
