public class CoursesListController {

    private String sortOrder = 'Name';

    public CoursesListController() {}

    public List<Course__c> getCourses() {
        List<Course__c> results = Database.query(
            'SELECT Id, Name ' +
            'FROM Course__c ' +
            'ORDER BY ' + sortOrder + ' ASC ' +
            'LIMIT 10'
        );
        return results;
    }

    public void sortByName() {
        this.sortOrder = 'Name';
    }
}