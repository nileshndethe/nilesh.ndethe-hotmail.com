/******************************************************************

dataObjectController

By: Leon de Beer (ldebeer@salesforce.com)
    December 2012

Disclaimer: (1) This is one of my first Apex classes ever so please provide me with
                feedback where appropriate.
                
            (2) I use this code in Eclipse and the tab spacings on the generated
                code are based on that framework. So if it doesn't 'look good'
                in the tool you use - blame the tool :-)
            
This class exists to make creating test data objects and SOQL queries more enjoyable. 
It generates ALMOST readymade Apex (you need to strategically place the ',' on fields 
you include and add field values) code which you can use to build data objects after 
filling them with the correct parameters and references.

This class should be used in conjunction with the VisualForce page: BuidTestDataObject. 
To use it, put both VisualForce page and Controller in the org, login and visit the URL
from within the target org:

/apex/BuildTestDataObject

You will be presented with a number of options:

-   The object (custom or standard)
-   An Add Comments tickbox which will comment in / out any field lines generated
-   A Build Apex button
-   A Build SOQL button

The manual:

I write Apex tests by using a central data factory which is used across all Apex classes and triggers
which is normally called UnitTestDataFactory. An example of what this code does:

-   Visit above URL and select Bookmark object
-   Select BuildApex and paste the generated content into your UnitTestDataFactory

My data factory would now look something like the code below. CLEARLY you need
to use the objects you need and uncomment the fields you require and add relevant 
field values.

public with sharing class dataObjectController {
        
    Bookmark    varBookmark;
    
    // Use: Bookmark varBookmark = UnitTestDataFactory.createBookmark();
    
    public static   Bookmark createBookmark()
    {
        return new Bookmark(
            // Id                           = '',
            // IsDeleted                    = '',
            // FromId                       = '',
            // CreatedDate                  = '',
            // SystemModstamp               = '',
            // LastModifiedById             = '',
            // CreatedById                  = '',
            // LastModifiedDate             = '',
            // ToId                         = ''
        );
    }
    
    public  static void CreateTestData()
    {
        
        varBookmark         =   UnitTestDataFactory.varBookmark();
        insert              varBookmark;
        
    }
}

With this logic in place, in your Apex Class which requires test code simply add:

    @IsTest(SeeAllData=true)    //  Optional...
    static void testMethods(){
  
        Test.startTest();
        
        //  Create data objects
        
        UnitTestDataFactory.CreateTestData();
    }

And your objects are ready for use. Just add all objects you require to the DataTestFactory using
the UI and create them in the right order and you'll you'll find that suddenly creating centralized 
test data becomes far more enjoyable.

*******************************************************************/

public with sharing class dataObjectController {
    
    //  Page URL: https://c.na11.visual.force.com/apex/BuildTestDataObject
    
    private List<SelectOption>  objectList       =   null;
    private String              selectedObject   =   '';
    private String              outputObject     =   '';
    private Boolean             generateSql      =   false;
    private Boolean             addComments      =   true;
    
    // Patrick Brinksma - 17 Dec 2012 - Added option to generate only createable fields
    public  Boolean             onlyisCreateable {get;set;}    
    
    // Patrick Brinksma - 17 Dec 2012 - Commented out as StandardController is not required
    /*
    public  dataObjectController (ApexPages.StandardController sc)
    {
    }
    */
    
    public  dataObjectController ()
    {
    	onlyisCreateable			=	false;       
    }
    
    public  PageReference   initSchema()
    {
        return null;    
    }
    
    public  PageReference   buildObject()
    {
        if ((selectedObject != NULL) && (selectedObject.length() > 0)) {
            outputObject            =   GenerateObjectCode(selectedObject,false);
        }
        else {
            outputObject            =   'No object selected';
        }
        return null;
    }
    
    public  PageReference   buildSOQL()
    {
        if ((selectedObject != NULL) && (selectedObject.length() > 0)) {
            outputObject            =   GenerateObjectCode(selectedObject,true);
        }
        else {
            outputObject            =   'No object selected';
        }
        return null;
    }
    
    public List<SelectOption> getObjectList()
    {
        if (null == objectList)
        {
            objectList = new List<SelectOption>();
            
            Map<String,Schema.SObjectType> globalDescribe   = Schema.getGlobalDescribe();
            
            for (String objectName : globalDescribe.keySet()){
                Schema.SObjectType showObjectName = globalDescribe.get(objectName);
                String  APIObjectName   =   showObjectName.getDescribe().getLocalName();
                objectList.add(new SelectOption(APIObjectName,APIObjectName));
            }           
            
            objectList.sort();
        }
        return objectList;
    }
    
    public  boolean getAddComments()
    {
        return  addComments;
    }
    
    public  void    setAddComments(Boolean s)
    {
        addComments =   s;
    }
    
    public  boolean getGenerateSql()
    {
        return  generateSql;
    }
    
    public  void    setGenerateSql(Boolean s)
    {
        generateSql =   s;
    }
    
    public  String  getOutputObject()
    {
        return  outputObject;   
    }
    
    public  void    setOutputObject(String s)
    {
        outputObject    =   s;
        return;
    }
    
    public  String  getSelectedObject()
    {
        return  selectedObject;
    }
    
    public  void    setSelectedObject(String s)
    {
        selectedObject = s;
    }
    
    private String  GenerateObjectCode(String   objectName,
                                       Boolean  returnSOQL)
    {
        
        Map<String,Schema.SObjectType> globalDescribe   = Schema.getGlobalDescribe();
        Schema.DescribeSObjectResult objectDescribe     =  globalDescribe.get(objectName).getDescribe();        
        Map<String, Schema.SObjectField> projectFields  =  globalDescribe.get(objectName).getDescribe().fields.getMap();
                
        String  lineFeed    =   '\n';
        String  tab         =   '\t';
        String  niceName    =   objectName.replace('__','_');
                niceName    =   niceName.replace('_c','');
        String  varName     =   'var' + niceName.replace('_','');
        String  soqlList    =   'list' + niceName.replace('_','');
        
        String  comment     =   '';
        
        if (addComments) {
            comment         =   '// ';
        }
        
        String  apexObject  =   '';
        String  soqlObject  =   '';
        
        apexObject  =   '';
        apexObject  +=  //  lineFeed + 
                        //  lineFeed + tab + '/*'  +
                        //  lineFeed + tab + 'Providing you put all your data objects in a class called UnitTestDataFactory, To create and instance use: ' +
                        //  lineFeed +
                        lineFeed + tab +  '// Use: ' + objectName + ' '  + varName  + ' = UnitTestDataFactory.create'+ niceName + '();' +
                        //  lineFeed + 
                        //  lineFeed + tab + 'Remove the , (comma) on the last field you are uncommenting' +
                        //  lineFeed + tab + '*/' +
                        lineFeed;
        apexObject  +=  tab + 'public static    ' + objectName + ' create' + niceName + '()';
        apexObject  +=  lineFeed + tab + '{';
        apexObject  +=  lineFeed + tab + tab + 'return new ' + objectName + '(';
        
        
        soqlObject  =   '';
        soqlObject  +=  tab + 'List<' + objectName + '> ' + soqlList + ' = ';
        soqlObject  +=  lineFeed + tab + tab + ' [select';
        
        //  Now get all the fields out....
        boolean     firstOne    =   true;
        
        for (Schema.SObjectField field: projectFields.values())
        {
			// Patrick Brinksma - 17 Dec 2012 - Added option to generate only createable fields
			
			boolean addField	= true;
			
            if (onlyisCreateable) {
            	if (!field.getDescribe().isCreateable()){
            		addField	=	false;
            	}
            }
			
			if (addField) {			
                if (!firstOne)  {
                    apexObject  +=  ',';
                    soqlObject  +=  ',';
                }
                
                
                string  fieldName       =   field.getDescribe().getName().trim();
                Integer spacesPerTab    =   4;
                Integer fieldLength     =   fieldName.length();
                Integer tabsToAdd       =   7 - (fieldLength / spacesPerTab);
                
                if (math.mod(fieldLength,spacesPerTab) == 0) {
                    tabsToAdd++;
                }
                
                soqlObject  +=  linefeed + tab + tab + tab + tab + comment + fieldName;
                
                firstOne    =   false;
                
                apexObject  += lineFeed + tab + tab + tab + comment + fieldName;
                
                for (Integer i=0;i<tabsToAdd;i++) {
                    apexObject      +=  tab;
                }
                
                apexObject  += '= \'\''; //  + ' (' + tabsToAdd + '/' + fieldLength + ')';  
            }
        }
        
        soqlObject  +=  lineFeed + tab + tab + 'from ' + tab + objectName + '];';
        
        apexObject  +=  lineFeed + tab + tab + ');';
        apexObject  +=  lineFeed + tab + '}';
        
        if (returnSOQL) {
            return  soqlObject;
        }
        else {
            return  apexObject;    
        }
    }
    
    @IsTest(SeeAllData=true)    
    static void testMethods(){
        Test.startTest();
        
        dataObjectController tc =    new dataObjectController();
                
        tc.initSchema();
        tc.getObjectList();     
        tc.buildObject();   //  no object selected
        tc.setSelectedObject('Account');
        tc.getOutputObject();
        tc.setOutputObject('Account');
        tc.getSelectedObject();
        tc.BuildObject();
        tc.getOutputObject();
        tc.setOutputObject('Account');
        String  myObject    =   tc.GenerateObjectCode('Account',true);
        system.assert(myObject.length() > 0);
        myObject            =   tc.GenerateObjectCode('Account',false);
        system.assert(myObject.length() > 0);
        Test.stopTest();
        
    }
}