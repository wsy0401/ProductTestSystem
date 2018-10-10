package cn.com.ennoconn.Bean;

public class Project {
    //Project.RequestID varchar(20)
    private String RequestID;
    //Project.Applicant int(20) foreign key
    private User Applicant;
    //Project.ProductType varchar(10)
    private String ProductType;
    //Project.ProductName varchar(50)
    private String ProductName;
    //Project.SampleQuantity int(3)
    private int SampleQuantity;
    //Project.WorkDept varchar(20) foreign key
    private Dept WorkDept;
    //Project.CostDept varchar(20) foreign key
    private Dept CostDept;
    //Project.MB/BP Name varchar(50)
    private String MBBPName;
    //Project.NPIStage varchar(10)
    private String NPIStage;
    //Project.TaskDescription varchar(255)
    private String TaskDescription;
    //Project.Attachment mediumblob
    private byte[] Attachment;
    //Project.ApplyDate varchar(10)
    private String ApplyDate;
    //Project.PlanStartDate varchar(10)
    private String PlanStartDate;
    //Project.PlanEndDate varchar(10)
    private String PlanEndDate;
    //Project.SampleArrivalDate varchar(10)
    private String SampleArrivalDate;
    //Project.ActualStartDate varchar(10)
    private String ActualStartDate;
    //Project.ApplicantLeaderComment varchar(255)
    private String ApplicantLeaderComment;
    //Project.TestReport longblob
    private byte[] TestReport;

}
