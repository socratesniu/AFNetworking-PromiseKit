//
//  AFNetworking-PromiseKit.h
//
//  Created by Aleksei Shevchenko on 5/19/14.
//  Copyright (c) 2014 Aleksei Shevchenko. All rights reserved.
//

#import <AFNetworking.h>
#import <PromiseKit.h>

///  extended request methods for Promise support
@interface AFHTTPRequestOperationManager (PromiseKit)

- (Promise *)GET:(NSString *)URLString
      parameters:(id)parameters;


- (Promise *)HEAD:(NSString *)URLString
       parameters:(id)parameters;


- (Promise *)POST:(NSString *)URLString
       parameters:(id)parameters;


- (Promise *)POST:(NSString *)URLString
       parameters:(id)parameters
constructingBodyWithBlock:(void (^)(id <AFMultipartFormData> formData))block;


- (Promise *)PUT:(NSString *)URLString
      parameters:(id)parameters;


- (Promise *)PATCH:(NSString *)URLString
        parameters:(id)parameters;


- (Promise *)DELETE:(NSString *)URLString
         parameters:(id)parameters;


@end
