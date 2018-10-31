//
//  HttpRequestManager.m
//  10Pearls
//
//  Created by mohsin on 4/4/14.
//  Copyright (c) 2015 10Pearls. All rights reserved..
//

#import "HttpRequestManager.h"
#import "ParserUtils.h"
#import "BaseEntity.h"
#import "StringUtils.h"
#import "BaseResponse.h"
#import "AppDelegate.h"
#import "Alert.h"
#import "Constant.h"

@implementation HttpRequestManager

- (id)initWithURL:(NSString *)baseURL {
    if (self = [super init]) {
        //        __unsafe_unretained typeof(self) weakSelf = self;
        NSURLSessionConfiguration* config = [NSURLSessionConfiguration defaultSessionConfiguration];
        
        [config setTimeoutIntervalForRequest:REQUEST_TIMEOUT];
        [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:YES];
        
        _manager= [[HttpRequestOperationManager alloc] initWithBaseURL:[NSURL URLWithString:baseURL]];
        _manager.requestSerializer  = [AFJSONRequestSerializer serializerWithWritingOptions:NSJSONWritingPrettyPrinted];
        _manager.responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
        [_manager.operationQueue setMaxConcurrentOperationCount:1];
        [_manager.reachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
            //            [weakSelf manageReachabilityUpdates:status];
        }];
        [_manager.reachabilityManager startMonitoring];
        self.queue = _manager.operationQueue;
    }
    return self;
}


- (id)init {
    if (self = [super init]) {
//        __unsafe_unretained typeof(self) weakSelf = self;
        NSURLSessionConfiguration* config = [NSURLSessionConfiguration defaultSessionConfiguration];
        
        [config setTimeoutIntervalForRequest:REQUEST_TIMEOUT];
        [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:YES];

        _manager= [[HttpRequestOperationManager alloc] initWithBaseURL:[NSURL URLWithString:SERVICE_URL]];
        _manager.requestSerializer  = [AFHTTPRequestSerializer serializer];
        _manager.responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
        [_manager.operationQueue setMaxConcurrentOperationCount:1];
        [_manager.reachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
//            [weakSelf manageReachabilityUpdates:status];
        }];
        [_manager.reachabilityManager startMonitoring];
        self.queue = _manager.operationQueue;
    }
    return self;
}

-(void) setHttpHeader:(NSDictionary *) headers {

    [_manager setHttpHeaders:headers];
}

-(void) setAccessToken:(NSString *)accessToken {

    _accessToken = accessToken;
    if(accessToken != nil){
        [_manager setHttpHeaders:@{KEY_ACCESS_TOKEN: accessToken}];
    }
    else
        [_manager clearAuthorizationHeader];
}

-(void) cancelAllOperations {
    [self.manager.operationQueue cancelAllOperations];
}

-(void) manageReachabilityUpdates:(AFNetworkReachabilityStatus) status {

    switch (status) {
        case AFNetworkReachabilityStatusReachableViaWWAN:
        case AFNetworkReachabilityStatusReachableViaWiFi:
//            [self.queue setSuspended:NO];
            break;
        case AFNetworkReachabilityStatusNotReachable:
        default:
//            [self.queue setSuspended:YES];
//            [Alert showNetworkError];
            break;
    }
}


- (void)put:(NSString *)path parameters:(id)parameters success:(void (^)(id response))success failure:(void (^)(NSError *error))failure entity:(BaseEntity*)entity{
    [self makeRequestWithPath:path httpMethod:HttpMethodPUT parameters:parameters success:^(id response) {
        [entity set:response];
        success(entity);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

- (void)put:(NSString *)path parameters:(id)parameters success:(void (^)(id response))success failure:(void (^)(NSError *error))failure response:(BaseResponse*)responseObject{
    [self makeRequestWithPath:path httpMethod:HttpMethodPUT parameters:parameters success:^(id response) {
        [responseObject set:response];
        success(responseObject);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

- (void)post:(NSString *)path parameters:(id)parameters success:(void (^)(id response))success failure:(void (^)(NSError *error))failure entity:(BaseEntity*)entity{
    [self makeRequestWithPath:path httpMethod:HttpMethodPOST parameters:parameters success:^(id response) {
        [entity set:response[@"data"]];
        success(entity);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

- (void)post:(NSString *)path parameters:(id)parameters success:(void (^)(id response))success failure:(void (^)(NSError *error))failure response:(BaseResponse*)responseObject{
    [self makeRequestWithPath:path httpMethod:HttpMethodPOST parameters:parameters success:^(id response) {
        [responseObject set:response[@"data"]];
        success(responseObject);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

- (void)get:(NSString *)string success:(successCallback)success failure:(failureCallback)failure {
    
    [self makeRequestWithPath:string httpMethod:HttpMethodGET parameters:nil success:^(id response) {
        NSString *stringResponse = [[NSString alloc]initWithData:response encoding:NSUTF8StringEncoding];
        success(stringResponse);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

- (NSURLSessionDataTask*)get:(NSString *)string success:(successCallback)success failure:(failureCallback)failure entity:(BaseEntity*)entity {

    return [self makeRequestWithPath:string httpMethod:HttpMethodGET parameters:nil success:^(id response) {
        if(entity==nil)
            success(response);
        else {
            [entity set:response];
            success(entity);
        }
        
    } failure:^(NSError *error) {
        failure(error);
    }];
}

- (void)get:(NSString *)string success:(successCallback)success failure:(failureCallback)failure response:(BaseResponse*)responseObject{

    [self makeRequestWithPath:string httpMethod:HttpMethodGET parameters:nil success:^(id response) {
        [responseObject set:response[@"data"]];
        success(responseObject);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

- (void)delete:(NSString *)string success:(successCallback)success failure:(failureCallback)failure entity:(BaseEntity*)entity {
    
    [self makeRequestWithPath:string httpMethod:HttpMethodDELETE parameters:nil success:^(id response) {
        [entity set:response];
        success(entity);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

- (void)delete:(NSString *)string success:(successCallback)success failure:(failureCallback)failure response:(BaseResponse*)responseObject{
    
    [self makeRequestWithPath:string httpMethod:HttpMethodDELETE parameters:nil success:^(id response) {
        [responseObject set:response];
        success(responseObject);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

-(void) onSuccessWithEntity:(BaseEntity *) entity successBlock:(successCallback)success response:(id)responseDictionary {

    if(entity) {
        [entity set:responseDictionary];
        success(entity);
    }
    else {
        success(responseDictionary);
    }
}

-(void) onSuccessWithResponse:(BaseResponse *) response successBlock:(successCallback)success response:(id)responseDictionary {

    if(response) {
        [response set:responseDictionary];
        success(response);
    }
    else {
        success(responseDictionary);
    }
}

// For full URLS
-(void) makeRequestWithURL:(NSString *)url httpMethod:(HttpMethod)method parameters:(NSDictionary *)parameters success:(successCallback)success failure:(failureCallback)failure {

    HttpRequestOperationManager *manager = [HttpRequestOperationManager manager];
    [manager.requestSerializer setTimeoutInterval:3];
    
    [manager makeHttpRequestWithMethod:method URLString:url parameters:parameters success:^(NSURLSessionTask *operation, id responseObject) {
        [self setCallbacksForOperation:operation success:success failure:failure];
        [self onLoaded:operation responseObject:responseObject];
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        [self setCallbacksForOperation:operation success:success failure:failure];
        [self onLoadFailed:operation error:error];
    }];
}


#pragma mark -
#pragma mark - Private
#pragma makr -

-(NSURLSessionDataTask *) makeRequestWithPath:(NSString *)path httpMethod:(HttpMethod)method parameters:(NSDictionary *)parameters success:(successCallback)success failure:(failureCallback)failure {
    
    NSURLSessionDataTask *operation = [self.manager makeHttpRequestWithMethod:method URLString:path parameters:parameters success:^(NSURLSessionTask *operation, id responseObject) {
            [self setCallbacksForOperation:operation success:success failure:failure];
            [self onLoaded:operation responseObject:responseObject];
        } failure:^(NSURLSessionTask *operation, NSError *error) {
            [self setCallbacksForOperation:operation success:success failure:failure];
            [self onLoadFailed:operation error:error];
        }];

    return operation;
}

-(void)handleOfflineModeResponse:(NSString*)method success:(successCallback)success failure:(failureCallback)failure{
    id response = [self getResponseFromOfflineFiles:method];
    if(response == nil){
        NSError *error = [[NSError alloc] initWithDomain:[NSString stringWithFormat:@"Offline_data_not_saved:(%@)",method]
                                                    code:-99 userInfo:nil];
        failure(error);
    }
    else {
        success(response);
    }
}

-(id)getResponseFromOfflineFiles:(NSString*)method{
    @try {
        method = [method stringByReplacingOccurrencesOfString:@".pyt" withString:@""];
        
       // NSString *filePath = [NSString stringWithFormat:@"offline_files/%@",method];
        
        //NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
        //NSString *path = [paths[0] stringByAppendingPathComponent:filePath];
        
        NSString *path =  [[NSBundle mainBundle] pathForResource:method ofType:@"txt"];
        
        NSFileManager *fileManager = [NSFileManager defaultManager];

        if(![fileManager fileExistsAtPath:path])
            return nil;
        
        NSString*content = [NSString stringWithContentsOfFile:path
                                                     encoding:NSUTF8StringEncoding
                                                        error:NULL];
        NSData *data =[content dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary * response;
        response = (NSDictionary *)[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        if([response objectForKey:@"failed"] != nil && [[response objectForKey:@"failed"] isEqualToString:@"api_was_failed_at_the_time_of_recording"]){
            return nil;
        }
        return response;

    } @catch (NSException *exception) {
        return nil;
    }
}

+(void)createOfflineAPIsDirectoryIfRequiredAndNotExists{
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString *path = [paths[0] stringByAppendingPathComponent:@"offline_files"];
    
    BOOL isDirExists;
    [fileManager fileExistsAtPath:path isDirectory:&isDirExists];
    
    if (!isDirExists)
    {
        [fileManager createDirectoryAtPath:path withIntermediateDirectories:NO attributes:nil error:nil];
    }
}

-(void)saveOfflineFileIfRecordingModeOn:(NSString*)method andResponse:(id)response andIsSuccess:(BOOL)isSuccess{
    
    @try {
        method = [method stringByReplacingOccurrencesOfString:@".pyt" withString:@".txt"];
        
        NSDictionary *failedResponse = @{@"failed" : @"api_was_failed_at_the_time_of_recording"};
        NSString *filePath = [NSString stringWithFormat:@"offline_files/%@",method];
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
        NSString *path = [paths[0] stringByAppendingPathComponent:filePath];
        
        if(isSuccess == NO || response == nil){
            NSFileManager *fileManager = [NSFileManager defaultManager];
            if([fileManager fileExistsAtPath:path]){
                return;
            }
            else {
                response = failedResponse;
            }
        }
        
        NSData * jsonData = [NSJSONSerialization  dataWithJSONObject:response options:0 error:nil];
        NSString *writeString = [[NSString alloc] initWithData:jsonData   encoding:NSUTF8StringEncoding];
        
        NSError *error;
        [writeString writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:&error];
        
        if(error){
            NSLog(@"Failed to save file : %@",filePath);
        }
    } @catch (NSException *exception) {
        NSLog(@"WRITING_EXCEPTION: %@", exception.description);
    }
    
}


-(void) setCallbacksForOperation:(NSURLSessionTask *)operation success:(successCallback)success failure:(failureCallback)failure {

    [operation setOnSuccessCallback:success];
    [operation setOnFailureCallback:failure];
}

-(void) onLoaded:(NSURLSessionTask *) operation responseObject:(id)responseObject {

    // CHECK FOR ERROR IN RESPONSE OBJECT
    if([self isSuccess:operation responseObject:responseObject]) {
        operation.onSuccessCallback(responseObject);
        return;
    }
    NSInteger code = [self getCodeFromResponse:responseObject];
    NSString *message = [self getMessageFromResponse:responseObject];

    NSError *error = [NSError errorWithDomain:@"com.hughesnet" code:code userInfo:[NSDictionary dictionaryWithObjectsAndKeys:message, NSLocalizedDescriptionKey, nil]];
    [self onLoadFailed:operation error:error];
}

- (NSInteger) getCodeFromResponse:(id)responseObject {
    NSInteger defaultCode = -1;
    if(![responseObject isKindOfClass:[NSDictionary class]]) {
        return defaultCode;
    }
    @try {
        NSDictionary *responseDict = (NSDictionary*)responseObject;
        defaultCode = [[responseDict objectForKey:@"CODE"] integerValue];

    }
    @catch (NSException *exception) {
        
    }
    
    return defaultCode;
}

- (NSString*) getMessageFromResponse:(id)responseObject {
    
    NSString *errorMessage = ERR_MSG_DATA_TRY_AGAIN_LATER;
    
    if(![responseObject isKindOfClass:[NSDictionary class]]) {
        return errorMessage;
    }
    
    @try {
        NSDictionary *responseDict = (NSDictionary*)responseObject;
        errorMessage = (NSString*)[responseDict objectForKey:@"MESSAGE"];
    }
    @catch (NSException *exception) {
        
    }
    
    return errorMessage;
    
}

-(BOOL) isSuccess:(NSURLSessionTask *) operation responseObject:(id)responseObject {
    
    if(![responseObject isKindOfClass:[NSDictionary class]]) {
        return NO;
    }
    NSDictionary *responseDict = (NSDictionary *)responseObject;
    NSDictionary *meta = [responseDict objectForKey:@"meta"];

    if([[meta objectForKey:@"status"] integerValue] == 200 && [[meta objectForKey:@"message"] isEqualToString:@"success"] ) {
        return YES;
    }
    
    NSInteger code = [(NSHTTPURLResponse*) operation.response statusCode];
    return (code >= 200 && code < 300);
}

-(NSNumber*)translateStringToNumber:(NSString*)string{
    if([string isKindOfClass:[NSNull class]])
        string = @"";

    if([[string lowercaseString] isEqualToString:@"true"] || [string isEqualToString:@"1"]) {
        return [NSNumber numberWithInt:1];
    }
    
    return [NSNumber numberWithInt:0];
}

-(void) onLoadFailed:(NSURLSessionTask *) operation error:(NSError *)error {
    operation.onFailureCallback(error);
}
@end
