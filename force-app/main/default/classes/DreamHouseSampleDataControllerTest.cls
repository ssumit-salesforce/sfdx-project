@isTest
private class DreamHouseSampleDataControllerTest {
    /*tst23*/
    @isTest
    static void test_deleteAll() {

        Property__c property = new Property__c();
        Broker__c broker = new Broker__c();

        insert property;
        insert broker;

        System.assertEquals( 1, [ SELECT count() FROM Property__c ] );
        System.assertEquals( 1, [ SELECT count() FROM Broker__c ] );

        Test.startTest();

        DreamHouseSampleDataController.deleteAll();
        /*tst*/
        Test.stopTest();
    
        System.assertEquals( 0, [ SELECT count() FROM Property__c ] );
        System.assertEquals( 0, [ SELECT count() FROM Broker__c ] );

    }

}
