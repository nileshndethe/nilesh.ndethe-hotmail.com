global with sharing class JSRemotingFileUploadController 
{
    public JSRemotingFileUploadController(ApexPages.StandardController c) 
    {
    }
    
    @RemoteAction
    public static String doUploadAttachment(String caseId, String attachmentBody, String attachmentName, String attachmentId) 
    {
        if(caseId != null) 
        {
            Case caserecord = getCase(caseId);
            if(caserecord != null) 
            {
                if(attachmentBody != null) 
                {
                    Attachment att = getAttachment(attachmentId);
                    String newBody = '';
                    if(att.Body != null) 
                    {
                        newBody = EncodingUtil.base64Encode(att.Body);
                    }
                    newBody += attachmentBody;
                    att.Body = EncodingUtil.base64Decode(newBody);
                    if(attachmentId == null) 
                    {
                        att.Name = attachmentName;
                        att.parentId = caserecord.Id;
                    }
                    upsert att;
                    return att.Id;
                } 
                else 
                {
                    return 'Attachment Body was null';
                }
            } 
            else 
            {
                return 'Case could not be found';
            }
        } 
        else 
        {
            return 'Case Id was null';
        }
    }
     
   /* @RemoteAction
    public static String doSubmitForm(String caseId, String description, String website, String phone) {
        if(caseId != null) {
            Case caserecord = getCase(caseId);
            if(caserecord != null) {
                caserecord .Description = description;
               // caserecord .Status= website;
               // caserecord. = phone;
                update caserecord;
                return 'Success';
            } else {
                return 'Case could not be found';
            }
        } else {
            return 'Case Id was null';
        }
    }*/
     
    private static Case getCase(String caseId) 
    {
        List<Case> caserecord = [SELECT Id  FROM Case WHERE Id =: caseId];
        if(caserecord .isEmpty()) 
        {
            return null;
        } 
        else 
        {
            return caserecord[0];
        }
    }
     
    private static Attachment getAttachment(String attId) 
    {
        list<Attachment> attachments = [SELECT Id, Body FROM Attachment WHERE Id =: attId];
        if(attachments.isEmpty()) 
        {
            Attachment a = new Attachment();
            return a;
        } 
        else 
        {
            return attachments[0];
        }
    }
}