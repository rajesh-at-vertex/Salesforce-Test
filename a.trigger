trigger CreateNewRecordTrigger on Account (after insert) {
    for (Account newAccount : Trigger.new) {
        // Create a new Contact record associated with the inserted Account
        Contact newContact = new Contact(
            LastName = newAccount.Name,
            AccountId = newAccount.Id,
            Email = 'example@email.com' // Set desired email
        );
        insert newContact; 
    }
}
