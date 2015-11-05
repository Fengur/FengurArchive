//
//  Person.h
//  FengurArchive
//
//  Created by 王智超 on 15/11/5.
//  Copyright © 2015年 UWFengur. All rights reserved.
//

#import "FGArchive.h"

@interface Person : FGArchive

/**
 *  name
 */
@property (nonatomic,copy) NSString *name;

/**
 *  sex
 */
@property (nonatomic,copy) NSString *sex;

/**
 *  hobby
 */
@property (nonatomic,copy) NSString *hobby;

#pragma mark:
#pragma mark: -- 数据持久化

+ (Person *)getPerson;
+ (void)savePerson:(Person *)person;
@end
