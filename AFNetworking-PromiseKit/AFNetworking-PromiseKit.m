//
//  AFNetworking-PromiseKit.m
//
//  Created by Aleksei Shevchenko on 5/19/14.
//  Copyright (c) 2014 Aleksei Shevchenko. All rights reserved.
//

#import "AFNetworking-PromiseKit.h"

@implementation AFHTTPRequestOperationManager (PromiseKit)

#define AFMPKSucessBlock ^(AFHTTPRequestOperation *operation, id responseObject) {fulfiller(PMKManifold(responseObject,operation));}
#define AFMPKFailureBlock ^(AFHTTPRequestOperation *operation, NSError *error) {rejecter(error);}


- (Promise *)GET:(NSString *)URLString
                     parameters:(id)parameters
{
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter)
    {
        [self GET:URLString parameters:parameters
          success:AFMPKSucessBlock
          failure:AFMPKFailureBlock];
    }];
}

- (Promise *)HEAD:(NSString *)URLString
                      parameters:(id)parameters
{
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter)
            {
                [self HEAD:URLString parameters:parameters
                  success:^(AFHTTPRequestOperation *operation) {fulfiller(operation);}
                  failure:AFMPKFailureBlock];
            }];
}

- (Promise *)POST:(NSString *)URLString
                      parameters:(id)parameters
{
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter)
            {
                [self POST:URLString parameters:parameters
                  success:AFMPKSucessBlock
                  failure:AFMPKFailureBlock];
            }];
}

- (Promise *)POST:(NSString *)URLString
                      parameters:(id)parameters
       constructingBodyWithBlock:(void (^)(id <AFMultipartFormData> formData))block
{
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter)
            {
                [self POST:URLString
                parameters:parameters
 constructingBodyWithBlock:block
                   success:AFMPKSucessBlock
                   failure:AFMPKFailureBlock];
            }];
}

- (Promise *)PUT:(NSString *)URLString
                     parameters:(id)parameters
{
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter)
            {
                [self PUT:URLString parameters:parameters
                  success:AFMPKSucessBlock
                  failure:AFMPKFailureBlock];
            }];
}

- (Promise *)PATCH:(NSString *)URLString
                       parameters:(id)parameters
{
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter)
            {
                [self PATCH:URLString parameters:parameters
                  success:AFMPKSucessBlock
                  failure:AFMPKFailureBlock];
            }];
}

- (Promise *)DELETE:(NSString *)URLString
                        parameters:(id)parameters
{
    return [Promise new:^(PromiseFulfiller fulfiller, PromiseRejecter rejecter)
            {
                [self DELETE:URLString parameters:parameters
                  success:AFMPKSucessBlock
                  failure:AFMPKFailureBlock];
            }];
}



@end
