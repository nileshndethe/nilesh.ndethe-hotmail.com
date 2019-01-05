public with sharing class EmailLimitTesterController {

	public void emaillimttest()
	{
		EmailLimitTester elt = new EmailLimitTester();
		database.executeBatch(elt,1);
	}

}