public with sharing class TeachersListWithController {

    private String sortOrder = 'Name';

    public TeachersListWithController() {}

    public List<Teacher__c> getTeachers() {
        List<Teacher__c> results = Database.query(
            'SELECT Id, Name, Age__c ' +
            'FROM Teacher__c ' +
            'ORDER BY ' + sortOrder + ' ASC ' +
            'LIMIT 10'
        );
        return results;
    }

    public void sortByName() {
        this.sortOrder = 'Name';
    }

    public void sortByAge() {
        this.sortOrder = 'Age__c';
    }
}