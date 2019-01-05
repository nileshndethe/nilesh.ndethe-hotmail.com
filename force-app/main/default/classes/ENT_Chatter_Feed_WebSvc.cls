/***************************************************************
Class   : ENT_Chatter_Feed_WebSvc
Author  : NDethe
Date    : 01/08/2015
Details : This class provides webservice method to post feed and feed comment to chatter.
      This class logs all exceptions in the debug logs in case of faliure.
History : v1.0 - 01/08/2015 - Created (0% Code Coverage)
*****************************************************************/
global class ENT_Chatter_Feed_WebSvc 
{           
    // This method will post text feed to the chatter for specified parentID
    webservice static string PostTextFeed(string parentID, string postMessage)
    {
        try
        {
            //Adding a text feed post
            FeedItem fItem = new FeedItem();
            fItem.ParentId = parentID; //eg. Chatter group ID, Opportunity ID, custom object ID...
            fItem.Body = postMessage;
            insert fItem;          
            return fItem.Id;           
        }
        catch(Exception ex)
        {           
            System.debug('ENT_Chatter_Feed_WebSvc: Error at: "PostTextFeed", Error Details:'+ ex.getMessage() + ex.getStackTraceString());
            return null;
        }   
    }    
    
    // This method will post the text feed along with the link.
    webservice static string PostLinkFeed(string parentID, string postMessage, string linkURL)
    {
        try
        {
          //Adding a Link post
            FeedItem fItem = new FeedItem();
            fItem.ParentId = parentID; //eg. Chatter group ID, Opportunity ID, custom object ID...
            fItem.Body = postMessage;
            fItem.LinkUrl = linkURL;
            insert fItem;        
             return fItem.Id;           
    }
        catch(Exception ex)
        {            
            System.debug('ENT_Chatter_Feed_WebSvc: Error at: "PostLinkFeed", Error Details:'+ ex.getMessage() + ex.getStackTraceString());
            return null;
        }  
    }
    
    // This method will post text feed along with content (any file type)
    webservice static string PostContentFeed(string parentID, string postMessage, string contentFileName,
                                             string base64EncodedFileData)
    {
        try
        {
          //Adding a Content post
            FeedItem fItem = new FeedItem();
            fItem.ParentId = parentID; //eg. Chatter group ID, Opportunity ID, custom object ID...
            fItem.Body = postMessage;
            fItem.ContentData = Blob.valueOf(base64EncodedFileData);
            fItem.ContentFileName = contentFileName;
            insert fItem;        
            return fItem.Id;            
        }
        catch(Exception ex)
        {           
            System.debug('ENT_Chatter_Feed_WebSvc: Error at: "PostContentFeed", Error Details:'+ ex.getMessage() + ex.getStackTraceString());
            return null;
        }  
    }
    
    // This method will post text feed comment to the chatter for specified parentID
    webservice static string PostTextFeedComment(string feedID, string postMessage)
    {
        try
        {
            //Adding a text feed comment 
            FeedComment fComment = new FeedComment();
            fComment.FeedItemId = feedID; //eg. Chatter group ID, Opportunity ID, custom object ID...
            fComment.CommentBody = postMessage;   
            fComment.CommentType = 'TextComment';
            insert fComment;          
            return fComment.Id;           
        }
        catch(Exception ex)
        {            
            System.debug('ENT_Chatter_Feed_WebSvc: Error at: "PostTextFeedComments", Error Details:'+ ex.getMessage() + ex.getStackTraceString());
            return null;
        }   
    }
  
    // This method will post text feed comments along with content.
    // If in case content is not uploaded this method will only post the text feed comment.
    webservice static string PostContentFeedComment(string feedID, string postMessage, 
                                                    string contentLibraryID,string contentFileName, 
                                                    string base64EncodedFileData)
    {
        try
        {
            // Adding feed comment content to the content vesrion 
            // and will use the content version id as related record id for feed comment.
            ContentVersion cv = new ContentVersion();
      cv.versionData = Blob.valueOf(base64EncodedFileData);
      cv.title = contentFileName;
      cv.pathOnClient ='/'+ contentFileName ;
      cv.FirstPublishLocationId = contentLibraryID;  
      insert cv;                               
            
            //Adding a text feed comment with content 
            FeedComment fComment = new FeedComment();
            fComment.FeedItemId = feedID; //eg. Chatter group ID, Opportunity ID, custom object ID...
            fComment.CommentBody = postMessage;   
            if(cv.Id != null)
            {
                fComment.CommentType = 'ContentComment';  
                fComment.RelatedRecordId = cv.Id;
            }
            else
            {
              fComment.CommentType = 'TextComment';
            }                      
            insert fComment;          
            return fComment.Id;           
        }
        catch(Exception ex)
        {           
            System.debug('ENT_Chatter_Feed_WebSvc: Error at: "PostContentFeedComment", Error Details:'+ ex.getMessage() + ex.getStackTraceString());
            return null;
        }  
    }    
}