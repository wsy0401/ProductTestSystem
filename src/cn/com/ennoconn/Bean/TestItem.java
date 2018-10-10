package cn.com.ennoconn.Bean;

public class TestItem  {
    //TestItem.ItemNo decimal(5.2)
    private float ItemNo;
    //TestItem.ItemDescription varchar(255)
    private String ItemDescription;
    //TestItem.DefaultEngineer int(20) foreign key
    private User DefaultEngineer;
}
