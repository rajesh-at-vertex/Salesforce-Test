trigger emailTrg on Account (after update)
{
if(trigger.isAfter && trigger.isUpdate)
{
for(Account acct : trigger.new)
{
trgHandler.trgMethod(trigger.new,trigger.oldMap);
}
}
}
