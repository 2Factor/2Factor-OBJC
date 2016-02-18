//
//  SendingVoiceOtpModel.h
//  M2Factor
//
//  This file was automatically generated for 2Factor by APIMATIC BETA v2.0 on 02/18/2016
//
#ifndef APIMATIC_SENDINGVOICEOTPMODEL
#define APIMATIC_SENDINGVOICEOTPMODEL

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol SendingVoiceOtpModel
@end

@interface SendingVoiceOtpModel : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* details;

/**
* TODO: Write general description for this field
*/
@property NSString* status;


/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap;

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper;

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName;

@end
#endif