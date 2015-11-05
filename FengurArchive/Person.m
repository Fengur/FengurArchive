//
//  Person.m
//  FengurArchive
//
//  Created by 王智超 on 15/11/5.
//  Copyright © 2015年 UWFengur. All rights reserved.
//

#import "Person.h"
#import <objc/message.h>

/**
 *  归档路径
 */
#define kPersonModelPath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"student.data"]
@implementation Person

+ (void)savePerson:(Person *)person
{
    [NSKeyedArchiver archiveRootObject:person toFile:kPersonModelPath];
}

+ (Person *)getPerson
{
    return [NSKeyedUnarchiver unarchiveObjectWithFile:kPersonModelPath];
}
@end
