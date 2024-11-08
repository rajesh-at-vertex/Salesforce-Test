
trigger caseTrg on Case (after insert)
{
if(trigger.isAfter && trigger.isInsert)
{https://github.com/rajesh-at-vertex/Salesforce-Test/tree/main
if(!trigger.new.isEmpty())
{
tHandler.updateLatestCaseNumber(trigger.new);
}
}
}
