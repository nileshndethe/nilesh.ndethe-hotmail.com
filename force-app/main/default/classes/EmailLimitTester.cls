public with sharing class EmailLimitTester implements database.Batchable<sObject>
{
	public Database.QueryLocator start(Database.BatchableContext context)
	{
		return Database.getQueryLocator('select id, Name from Opportunity'); 
	} 
	
	public Void execute(Database.BatchableContext context, List<sObject> scope)
	{
			// Get the AsyncApexJob that represents the Batch job using the Id from the BatchableContext  
		 AsyncApexJob a = [Select Id, Status, NumberOfErrors, JobItemsProcessed,  
		  TotalJobItems, CreatedBy.Id ,CreatedBy.Email, ExtendedStatus  
		  from AsyncApexJob where Id = :context.getJobId()];  
		   
		 // Email the Batch Job's submitter that the Job is finished.  
		 Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();  
		 //String[] toAddresses = new String[] {a.CreatedBy.Email};  
		 mail.setTargetObjectId(a.CreatedBy.Id);
		 mail.SaveAsActivity = false;
		 //mail.setToAddresses(toAddresses);  
		 mail.setSubject('Execute Batch Status: ' + a.Status);  
		 mail.setPlainTextBody('The batch Apex job processed ' + a.TotalJobItems +  
		  ' batches with '+ a.NumberOfErrors + ' failures. ExtendedStatus: ' + a.ExtendedStatus);  
		    
		 Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
	}
	public Void finish(Database.BatchableContext context)
	{
		 // Get the AsyncApexJob that represents the Batch job using the Id from the BatchableContext  
		 AsyncApexJob a = [Select Id, Status, NumberOfErrors, JobItemsProcessed,  
		  TotalJobItems, CreatedBy.Id ,CreatedBy.Email, ExtendedStatus  
		  from AsyncApexJob where Id = :context.getJobId()];  
		   
		 // Email the Batch Job's submitter that the Job is finished.  
		 Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();  
		 //String[] toAddresses = new String[] {a.CreatedBy.Email};  
		 mail.setTargetObjectId(a.CreatedBy.Id);
		 mail.SaveAsActivity = false;
		 //mail.setToAddresses(toAddresses);  
		 mail.setSubject('Finished Batch Status: ' + a.Status);  
		 mail.setPlainTextBody('The batch Apex job processed ' + a.TotalJobItems +  
		  ' batches with '+ a.NumberOfErrors + ' failures. ExtendedStatus: ' + a.ExtendedStatus);  
		    
		 Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
	}
}