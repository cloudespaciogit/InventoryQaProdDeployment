@IsTest
private class trialClassTest {

    @IsTest
    static void testCreateAccount_Success() {

        Test.startTest();

        Id accountId = trialClass.createAccount('Test Account');

        Test.stopTest();

        Account acc = [
            SELECT Id, Name
            FROM Account
            WHERE Id = :accountId
        ];

        System.assertEquals('Test Account', acc.Name);
    }

    @IsTest
    static void testCreateAccount_BlankName() {

        Test.startTest();

        try {
            trialClass.createAccount('');
            System.assert(false, 'Expected AuraHandledException');
        } catch (AuraHandledException e) {
            System.assertEquals(
                'Account Name cannot be blank.',
                e.getMessage()
            );
        }

        Test.stopTest();
    }

    @IsTest
    static void testCreateAccount_NullName() {

        Test.startTest();

        try {
            trialClass.createAccount(null);
            System.assert(false, 'Expected AuraHandledException');
        } catch (AuraHandledException e) {
            System.assertEquals(
                'Account Name cannot be blank.',
                e.getMessage()
            );
        }

        Test.stopTest();
    }
}