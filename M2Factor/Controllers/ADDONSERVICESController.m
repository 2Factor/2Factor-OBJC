//
//  ADDONSERVICESController.m
//  M2Factor
//
//  This file was automatically generated for 2Factor by APIMATIC BETA v2.0 on 02/18/2016
//
#import "ADDONSERVICESController.h"

@implementation ADDONSERVICESController

/**
* Check Balance For Addon Services
* @param    apiKey    Required parameter: 2Factor account API Key
* @param    serviceName    Required parameter: Name of the addon service
* @return	Returns the CheckBalanceAddonServicesModel* response from the API call */
- (void) getCheckBalanceAddonServicesAsyncWithApiKey:(NSString*) apiKey
                serviceName:(NSString*) serviceName
                completionBlock:(CompletedGetCheckBalanceAddonServices) onCompleted
{
    //the base uri for api requests
    NSString* baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* queryBuilder = [NSMutableString stringWithString: baseUri]; 
    [queryBuilder appendString: @"/V1/{api_key}/ADDON_SERVICES/BAL/{service_name}"];

    //process optional query parameters
    [APIHelper appendUrl: queryBuilder withTemplateParameters: @{
                    @"api_key": apiKey,
                    @"service_name": serviceName
                }];

    //validate and preprocess url
    NSString* queryUrl = [APIHelper cleanUrl: queryBuilder];

    //preparing request headers
    NSMutableDictionary* headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"2Factor",
        @"accept": @"application/json"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: headers];


    //prepare the request and fetch response  
    HttpRequest* request = [[self clientInstance] get: ^(HttpRequest* request) 
    { 
        [request setQueryUrl: queryUrl]; //set request url        
        [request setHeaders: headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: request
     success: ^(id context, HttpResponse *response) {
         //Error handling using HTTP status codes
         NSError* statusError = nil;

         //Error handling using HTTP status codes 
         if((response.statusCode < 200) || (response.statusCode > 206)) //[200,206] = HTTP OK
             statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                    andCode: response.statusCode
                                                    andData: response.rawBody];

         if(statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, context, nil, statusError);
         }
         else
         {
             //return response to API caller
             NSString* strResult = [(HttpStringResponse*)response body];
             CheckBalanceAddonServicesModel* result = (CheckBalanceAddonServicesModel*) [APIHelper jsonDeserialize: strResult
                toClass: CheckBalanceAddonServicesModel.class];

 
             //announce completion with success
             onCompleted(YES, context, result, nil);
         }
     } failure:^(id context, NSError *error) {
 
         //announce completion with failure
         onCompleted(NO, context, nil, error);
     }];
}

/**
* Pull Delivery Report - Transactional SMS
* @param    apiKey    Required parameter: API Obtained From 2Factor.in
* @param    sessionId    Required parameter: Session Id Returned By Send SMS Step
* @return	Returns the id response from the API call */
- (void) getPullDeliveryReportAsyncWithApiKey:(NSString*) apiKey
                sessionId:(NSString*) sessionId
                completionBlock:(CompletedGetPullDeliveryReport) onCompleted
{
    //the base uri for api requests
    NSString* baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* queryBuilder = [NSMutableString stringWithString: baseUri]; 
    [queryBuilder appendString: @"/V1/{api_key}/ADDON_SERVICES/RPT/TSMS/{session_id}"];

    //process optional query parameters
    [APIHelper appendUrl: queryBuilder withTemplateParameters: @{
                    @"api_key": apiKey,
                    @"session_id": sessionId
                }];

    //validate and preprocess url
    NSString* queryUrl = [APIHelper cleanUrl: queryBuilder];

    //preparing request headers
    NSMutableDictionary* headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"2Factor",
        @"accept": @"application/json"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: headers];


    //prepare the request and fetch response  
    HttpRequest* request = [[self clientInstance] get: ^(HttpRequest* request) 
    { 
        [request setQueryUrl: queryUrl]; //set request url        
        [request setHeaders: headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: request
     success: ^(id context, HttpResponse *response) {
         //Error handling using HTTP status codes
         NSError* statusError = nil;

         //Error handling using HTTP status codes 
         if((response.statusCode < 200) || (response.statusCode > 206)) //[200,206] = HTTP OK
             statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                    andCode: response.statusCode
                                                    andData: response.rawBody];

         if(statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, context, nil, statusError);
         }
         else
         {
             //return response to API caller
             NSString* strResult = [(HttpStringResponse*)response body];
             id result = [NSJSONSerialization
                        JSONObjectWithData: [strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, context, result, nil);
         }
     } failure:^(id context, NSError *error) {
 
         //announce completion with failure
         onCompleted(NO, context, nil, error);
     }];
}

/**
* Send Single / Bulk Transactional Messages / Schedule SMS
* @param    apiKey    Required parameter: API Obtained From 2Factor.in
* @param    from    Required parameter: 6 Character Alphabet Sender Id
* @param    msg    Required parameter: SMS Body To Be Sent
* @param    to    Required parameter: Comma Separated list Of Phone Numbers
* @param    sendAt    Optional parameter: This Parameter Is Used For Scheduling SMS - Optional parameter
* @param    fieldParameters    Additional optional form parameters are supported by this endpoint
* @return	Returns the SendTransactionalSmsModel* response from the API call */
- (void) createSendTransactionalSMSAsyncWithApiKey:(NSString*) apiKey
                from:(NSString*) from
                msg:(NSString*) msg
                to:(NSString*) to
                sendAt:(NSString*) sendAt
                fieldParameters:(NSDictionary*) fieldParameters
                completionBlock:(CompletedPostSendTransactionalSMS) onCompleted
{
    //the base uri for api requests
    NSString* baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* queryBuilder = [NSMutableString stringWithString: baseUri]; 
    [queryBuilder appendString: @"/V1/{api_key}/ADDON_SERVICES/SEND/TSMS"];

    //process optional query parameters
    [APIHelper appendUrl: queryBuilder withTemplateParameters: @{
                    @"api_key": apiKey
                }];

    //validate and preprocess url
    NSString* queryUrl = [APIHelper cleanUrl: queryBuilder];

    //preparing request parameters
    NSMutableDictionary* parameters = [[NSMutableDictionary alloc] init];

    //load form parameters
    [parameters addEntriesFromDictionary: @{
        @"From": from,
        @"Msg": msg,
        @"To": to,
        @"SendAt": (nil != sendAt) ? sendAt : @"2019-01-01 00:00:01"
    }];

    //optional form parameters
    [parameters addEntriesFromDictionary: fieldParameters];

    //convert to form parameters
    parameters = [APIHelper prepareParametersAsFormFields:parameters];
    //Remove null values from parameter collection in order to omit from request
    [APIHelper removeNullValues: parameters];


    //preparing request headers
    NSMutableDictionary* headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"2Factor",
        @"accept": @"application/json"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: headers];


    //prepare the request and fetch response  
    HttpRequest* request = [[self clientInstance] post: ^(HttpRequest* request) 
    { 
        [request setQueryUrl: queryUrl]; //set request url        
        [request setHeaders: headers]; //set request headers
        [request setParameters: parameters]; //set request parameters

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: request
     success: ^(id context, HttpResponse *response) {
         //Error handling using HTTP status codes
         NSError* statusError = nil;

         //Error handling using HTTP status codes 
         if((response.statusCode < 200) || (response.statusCode > 206)) //[200,206] = HTTP OK
             statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                    andCode: response.statusCode
                                                    andData: response.rawBody];

         if(statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, context, nil, statusError);
         }
         else
         {
             //return response to API caller
             NSString* strResult = [(HttpStringResponse*)response body];
             SendTransactionalSmsModel* result = (SendTransactionalSmsModel*) [APIHelper jsonDeserialize: strResult
                toClass: SendTransactionalSmsModel.class];

 
             //announce completion with success
             onCompleted(YES, context, result, nil);
         }
     } failure:^(id context, NSError *error) {
 
         //announce completion with failure
         onCompleted(NO, context, nil, error);
     }];
}


@end