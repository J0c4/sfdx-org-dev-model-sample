public class StudentListController {
    public List<Student__c> studentList {get;set;}
    
    public StudentListController(){
        this.studentList = new List<Student__c> ();
        ReadStudents();
        
    }
    
    public void ReadStudents(){
        this.studentList = [SELECT Name, Age__c FROM Student__c];
    }

}