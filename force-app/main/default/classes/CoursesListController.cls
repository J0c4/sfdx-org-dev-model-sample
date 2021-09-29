public with sharing class CoursesListController {
    public List<Course__c> coursesList {get; set;}

    public CoursesListController() {
        this.coursesList = Database.query('SELECT Name FROM Course__c');
    }
}
