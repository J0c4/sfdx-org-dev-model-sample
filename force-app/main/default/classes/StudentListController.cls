public class StudentListController {

    private String sortOrder = 'Name';

    public StudentListController() {}

    public List<Student__c> getStudents() {
        List<Student__c> results = Database.query(
            'SELECT Id, Name, Age__c ' +
            'FROM Student__c ' +
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