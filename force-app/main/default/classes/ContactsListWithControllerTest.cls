@isTest
public class ContactsListWithControllerTest {

    @isTest 
    static void testGetContacts() {
        insert new Contact(LastName='Test');
        ContactsListWithController controller = new ContactsListWithController();
        List<Contact> result = controller.getContacts();
        System.assert(!result.isEmpty());
    }
}
