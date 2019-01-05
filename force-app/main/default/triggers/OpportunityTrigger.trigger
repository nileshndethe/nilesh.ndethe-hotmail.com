trigger OpportunityTrigger on Opportunity (before insert) {
GenericTriggerHandler.handle(Trigger.new);
}