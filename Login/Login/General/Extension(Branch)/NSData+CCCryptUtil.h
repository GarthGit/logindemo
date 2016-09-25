//
//  NSData+CCCryptUtil.h
//  JTDemo
//
//  Created by gejizhou on 16/9/25.
//  Copyright © 2016年 尹江涛. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (CCCryptUtil)

- (NSData *)AES256EncryptWithKey:(NSString*)key;
- (NSData *)AES256DecryptWithKey:(NSString*)key;

@end
