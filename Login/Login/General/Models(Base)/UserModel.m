//
//  UserModel.m
//  JTDemo
//
//  Created by gejizhou on 16/9/25.
//  Copyright © 2016年 尹江涛. All rights reserved.
//

#import "UserModel.h"
#import "NSString+Hash.h"

#define EncryptKey @"12345678"


@implementation UserModel




+(void)setUserName:(NSString *)userName{
    NSData *data = [NSString AES256Encrypt:userName withKey:EncryptKey];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:data forKey:@"userName"];
}

+ (void)setPassWord:(NSString *)passWord{
    NSData *data = [NSString AES256Encrypt:passWord withKey:EncryptKey];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:data forKey:@"passWord"];
}

+ (void)setLoginStatus:(LoginStatus)logoStatus{
    NSData *data = [NSString AES256Encrypt:[NSString stringWithFormat:@"%i",logoStatus] withKey:EncryptKey];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:data forKey:@"logoStatus"];
}

+ (NSString *)userName{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *data = [defaults objectForKey:@"userName"];
    return [NSString AES256Decrypt:data withKey:EncryptKey];
}

+ (NSString *)password{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *data = [defaults objectForKey:@"passWord"];
    return [NSString AES256Decrypt:data withKey:EncryptKey];
}

+ (LoginStatus)loginStatus{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *data = [defaults objectForKey:@"logoStatus"];
    return (LoginStatus)[[NSString AES256Decrypt:data withKey:EncryptKey] integerValue];
}

- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)userWithDict:(NSDictionary *)dict{
    ResponseObject *obj = [[ResponseObject alloc]initWithDict:dict];
    UserModel *model;
    if ([obj.code integerValue]==0) {
        NSDictionary *contentDic = dict[@"data"];
        if (contentDic == nil) {
            return nil;
        }
        model = [[self alloc]initWithDict:contentDic];
    }
    return model;
}


- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    NSLog(@"使用了未定义的key%@",key);
}






@end
