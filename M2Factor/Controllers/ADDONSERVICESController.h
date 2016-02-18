//
//  ADDONSERVICESController.h
//  M2Factor
//
//  This file was automatically generated for 2Factor by APIMATIC BETA v2.0 on 02/18/2016
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"
#import "CheckBalanceAddonServicesModel.h"
#import "SendTransactionalSmsModel.h"

@interface ADDONSERVICESController : BaseController

/**
* Completion block definition for asynchronous call to Check Balance - Addon Services */
typedef void (^CompletedGetCheckBalanceAddonServices)(BOOL success, HttpContext* context, CheckBalanceAddonServicesModel* response, NSError* error);

/**
* Check Balance For Addon Services
* @param    apiKey    Required parameter: 2Factor account API Key
* @param    serviceName    Required parameter: Name of the addon service
*/
- (void) getCheckBalanceAddonServicesAsyncWithApiKey:(NSString*) apiKey
                serviceName:(NSString*) serviceName
                completionBlock:(CompletedGetCheckBalanceAddonServices) onCompleted;

/**
* Completion block definition for asynchronous call to Pull Delivery Report */
typedef void (^CompletedGetPullDeliveryReport)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Pull Delivery Report - Transactional SMS
* @param    apiKey    Required parameter: API Obtained From 2Factor.in
* @param    sessionId    Required parameter: Session Id Returned By Send SMS Step
*/
- (void) getPullDeliveryReportAsyncWithApiKey:(NSString*) apiKey
                sessionId:(NSString*) sessionId
                completionBlock:(CompletedGetPullDeliveryReport) onCompleted;

/**
* Completion block definition for asynchronous call to Send Transactional SMS */
typedef void (^CompletedPostSendTransactionalSMS)(BOOL success, HttpContext* context, SendTransactionalSmsModel* response, NSError* error);

/**
* Send Single / Bulk Transactional Messages / Schedule SMS
* @param    apiKey    Required parameter: API Obtained From 2Factor.in
* @param    from    Required parameter: 6 Character Alphabet Sender Id
* @param    msg    Required parameter: SMS Body To Be Sent
* @param    to    Required parameter: Comma Separated list Of Phone Numbers
* @param    sendAt    Optional parameter: This Parameter Is Used For Scheduling SMS - Optional parameter
* @param    fieldParameters    Additional optional form parameters are supported by this endpoint
*/
- (void) createSendTransactionalSMSAsyncWithApiKey:(NSString*) apiKey
                from:(NSString*) from
                msg:(NSString*) msg
                to:(NSString*) to
                sendAt:(NSString*) sendAt
                fieldParameters:(NSDictionary*) fieldParameters
                completionBlock:(CompletedPostSendTransactionalSMS) onCompleted;

@end