trigger ContactTrigger on Contact (before insert) {
GenericTriggerHandler.handle(Trigger.new);
}