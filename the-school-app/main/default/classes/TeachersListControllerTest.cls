@isTest
class TeachersListControllerTest {

    @isTest
    static void testList() {
        List<Teacher__c> teachers = new List<Teacher__c>();

        for (Integer i = 0; i < 10; i++) {
            teachers.add(new Teacher__c(Name = 'Teacher ' + i, Age__c = i));
        }

        insert teachers;

        TeachersListWithController controller = new TeachersListWithController();

        controller.sortByAge();
        controller.sortByName();
        
        Integer expected = 10;
        Integer actual = controller.getTeachers().size();

        System.assert(expected == actual);        
    }
}
