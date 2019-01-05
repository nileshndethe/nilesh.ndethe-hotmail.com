trigger AccountTrigger on Account (before insert) {
GenericTriggerHandler.handle(Trigger.new);
}