//
//  ResponseObject.h
//  JTDemo
//
//  Created by gejizhou on 16/9/25.
//  Copyright © 2016年 尹江涛. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResponseObject : NSObject

@property (nonatomic,strong) NSString  *code;
@property (nonatomic,strong) NSString  *data;
@property (nonatomic,strong) NSString  *message;

- (instancetype)initWithDict:(NSDictionary *)dict;


@end
