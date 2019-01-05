/***************************************************************
Class   : ENT_Auto_Property_Overview_Report_WebSvc
Author  : NDethe
Date    : 01/08/2015
Details : This service class provides utility methods required by the Property Overview Report Autogenerator Tool.
History : v1.0 - 01/08/2015 - Created (0% Code Coverage)
*****************************************************************/
global class ENT_Auto_Property_Overview_Report_WebSvc 
{
    // This method return the name of the object for the provided record ID
    webService static string FindObjectAPIName(String recordID)
    {
        try
        {
            // Check if the specified String is not whitespace, not empty (''), and not null; 
            if(!string.isNotBlank(recordID))
            {
                return null;
            }
            String objectAPIName = '';
            string keyPrefix = recordID.substring(0,3);
            for( Schema.SObjectType sObjType : Schema.getGlobalDescribe().Values() )
            {
                String prefix = sObjType.getDescribe().getKeyPrefix();
                if(prefix==keyPrefix)
                {
                    objectAPIName = sObjType.getDescribe().getName();
                    break;
                }
            }
            return objectAPIName;
        }
        catch(Exception ex)
        {
            System.debug('ENT_Auto_Property_Overview_Report_WebSvc : Error at: "FindObjectAPIName", Error Details:'+ ex.getMessage() + ex.getStackTraceString());
            return null;
        }        
    }
}