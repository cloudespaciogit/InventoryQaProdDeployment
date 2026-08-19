@IsTest
private class CICDTestClassTest {

    @IsTest
    static void testGetMessage() {
        Test.startTest();

        String result = CICDTestClass.getMessage();

        Test.stopTest();

        System.assertEquals(
            'CI/CD Deployment Successful',
            result
        );
    }
}