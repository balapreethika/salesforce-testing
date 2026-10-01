trigger AccountTrigger on Account (before insert) {
    for(Account acc : Trigger.new){
        if(acc.Name == 'Test Error'){
            acc.addError('This record will fail due to a custom exception');
        }
    }
}