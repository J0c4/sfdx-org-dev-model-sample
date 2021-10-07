@isTest
private class StudentListControllerTest {

    @isTest static void getStudentsTest(){
        StudentListController controller = new StudentListController();
        Student__c stu1 = new Student__c (Name='Sergio',Age__c=20);
        insert stu1;
        List<Student__c> studentList = controller.getStudents();
        System.assert( studentList  != null);
    }
    @isTest static void sortByNameTest(){
        StudentListController controller = new StudentListController();
        
        controller.sortByName();
        
    }
}