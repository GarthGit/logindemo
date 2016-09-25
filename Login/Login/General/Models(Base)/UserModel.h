//
//  UserModel.h
//  JTDemo
//
//  Created by gejizhou on 16/9/25.
//  Copyright © 2016年 尹江涛. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    UN_Login,    // 0 未登录
    Login        // 1 登录
}LoginStatus;
@interface UserModel : NSObject

// 用户基本信息 setter getter
+ (void)setUserName:(NSString *)userName;
+ (void)setPassWord:(NSString *)password;
+ (void)setLoginStatus:(LoginStatus)LoginStatus;
+ (NSString *)userName;
+ (NSString *)password;
+ (LoginStatus)loginStatus;

@property (nonatomic,strong)NSString *advance;
@property (nonatomic,strong)NSString *email;
@property (nonatomic,strong)NSString *last_login_jd;
@property (nonatomic,strong)NSString *last_login_tmall;
@property (nonatomic,strong)NSString *levelname;  //会员等级
@property (nonatomic,strong)NSString *login_cj;
@property (nonatomic,strong)NSString *lv_logo;
@property (nonatomic,strong)NSString *member_cur;
@property (nonatomic,strong)NSString *member_id;  //会员id
@property (nonatomic,strong)NSString *member_lv;
@property (nonatomic,strong)NSString *name;   //会员昵称
@property (nonatomic,strong)NSString *point;
@property (nonatomic,strong)NSString *sex;
@property (nonatomic,strong)NSString *uname;  //登录名
@property (nonatomic,strong)NSString *usage_point; //可以使用的积分

+ (instancetype)userWithDict:(NSDictionary *)dict;









@end
