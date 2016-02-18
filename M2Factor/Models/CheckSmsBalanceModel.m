//
//  CheckSmsBalanceModel.m
//  M2Factor
//
//  This file was automatically generated for 2Factor by APIMATIC BETA v2.0 on 02/18/2016
//
#import "CheckSmsBalanceModel.h"

@implementation CheckSmsBalanceModel

/**
* TODO: Write general description for this method
*/
@synthesize details;

/**
* TODO: Write general description for this method
*/
@synthesize status;


/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"Details": @"details",
        @"Status": @"status"  
    }];

    return map;
}

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper
{ 
  return [[JSONKeyMapper alloc] initWithDictionary: [self keyMap]];
}

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName
{
    return YES;
}

@end