public with sharing class TeachersListWithController {

    public TeachersListWithController() {}

    public List<Teacher__c> getTeachers() {
        List<Teacher__c> results = Database.query(
            'SELECT Id, Name, Age__c ' +
            'FROM Teacher__c ' +
            'ORDER BY Name ASC ' +
            'LIMIT 10'
        );
        return results;
    }
}