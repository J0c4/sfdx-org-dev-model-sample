@isTest
private class Test_CoursesListController {
	@isTest
    static void getCoursesTest() {
        CoursesListController myClass = new CoursesListController();
        
        myClass.sortByName();
        
        List<Course__c> result = myClass.getCourses();
        System.assert(!result.isEmpty());
    }
}