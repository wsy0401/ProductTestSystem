package cn.com.ennoconn.Bean;

public class TestResult {
    //TestResult.RequestID varchar(20) foreign key
    private Project RequestID;
    //TestResult.ItemNo decimal(5,2) foreign key
    private TestItem ItemNo;
    //TestResult.ItemInfo varchar(255)
    private String ItemInfo;
    //TestResult.TestQTY int(5)
    private int TestQTY;
    //TestResult.Engineer int(20) foreign key
    private User Engineer;
    //TestResult.Equipment int(10) foreign key
    private Equipment Equipment;
    //TestResult.StartTime varchar(20)
    private String StartTime;
    //TestResult.WorkState varchar(20)
    private String WorkState;
    //TestResult.result varchar(20)
    private String result;
    //TestResult.comment varchar(255)
    private String comment;
}
