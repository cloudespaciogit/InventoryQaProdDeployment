public class trialClass {
    /**
     * Creates a new Account
     */
    public static Id createAccount(String accountName) {

        if(String.isBlank(accountName)){
            throw new AuraHandledException('Account Name cannot be blank.');
        }

        Account acc = new Account(
            Name = accountName
        );

        insert acc;

        return acc.Id;  //2ndtest
    }
}