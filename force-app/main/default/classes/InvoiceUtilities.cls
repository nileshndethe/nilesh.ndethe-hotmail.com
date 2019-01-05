global with sharing  class InvoiceUtilities{
	// Class method to renumber Line Items for a given Invoice number.
	// Returns a string that indicates success or failure.
    webservice Static String renumberLineItems(String invoiceName){
     	// Create a copy of the target Invoice object and its Line Items.
     	Invoice__c invoice = [Select Name, (Select Name From Line_Items__r) From Invoice__c Where Name = :invoiceName LIMIT 1];
		System.debug(invoice.Name);
        // Loop through each Line Item, re-numbering as you go
		Integer i =1;
        For(Line_item__c item : invoice.Line_Items__r){
            item.Name = String.valueOf(i);
            System.debug(item.Name);
            i++;
        }
        
        // Update the Line Items in one transaction, rollback if any problems
		// and return error messages to the calling environment.
        try{
            database.update(invoice.Line_Items__r);
        }catch(DmlException e){
            return e.getMessage();
        }
        
        // On success, return a message to the calling program.
  		return 'Line items renumbered successfully.';
    }
}