public class Genze_WebService_Tester {
    
    public static void Test_ExecuteDataSource()
    {
        HTTP auth = new HTTP();
        HTTPRequest r = new HTTPRequest();
        string endpointurl='https://hermes.plexus-online.com/DATASOURCE/SERVICE.ASMX';
        r.setEndpoint(endpointurl);       
        //String authorizationHeader = 'Basic ' + 'TWFoaW5HZW5aZVdTQHBsZXguY29tOjA3MjUzZDYtODgz';
        Blob headerValue = Blob.valueOf('MahinGenZeWS@plex.com:07253d6-883');       
        system.debug('Encoder Value' + System.EncodingUtil.base64Encode(headerValue));
        String authorizationHeader = 'Basic ' + System.EncodingUtil.base64Encode(headerValue);
        r.setHeader('Authorization', authorizationHeader);
        r.setHeader('SOAPAction', 'http://www.plexus-online.com/DataSource/ExecuteDataSource');
        r.setHeader('Content-Length', '102962');
        r.setHeader('Content-Type', 'text/xml;charset=UTF-8');
        r.setHeader('Connection','Keep-Alive');
       	r.setHeader('Accept-Encoding', 'gzip,deflate');
        r.setMethod('POST');
        
        string sbody  = '<Envelope xmlns="http://schemas.xmlsoap.org/soap/envelope/"><Body><ExecuteDataSource xmlns="http://www.plexus-online.com/DataSource"><ExecuteDataSourceRequest><DataSourceKey>36565</DataSourceKey><InputParameters><InputParameter><Value>4/4/2015</Value><Name>SINCE_DATE</Name><Required>false</Required><Output>false</Output><DefaultValue>?</DefaultValue><Message>?</Message></InputParameter></InputParameters><DataSourceName>?</DataSourceName><DataBase>?</DataBase></ExecuteDataSourceRequest></ExecuteDataSource></Body></Envelope>';
        r.setBody(sbody);
        system.debug('request >>> ' + r);
       	try
        {
            HTTPResponse authresp = auth.send(r);
        	
            if(authresp.getStatusCode() == 200)
            { 
                system.debug('Authentication success!!!' + authresp.getBody());
            }
            else
            {
                system.debug('Authentication failed!!!' + authresp + authresp.getStatusCode());
            }    
       	}catch(exception e){}
    }
}