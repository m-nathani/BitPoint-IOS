//
//  Enum.h
//  wusup
//
//  Created by Mohsin on 3/6/14.
//  Copyright (c) 2014 mohsin. All rights reserved.
//


typedef enum  {
    HttpMethodGET       = 0,
    HttpMethodPOST      = 1,
    HttpMethodPUT       = 2,
    HttpMethodDELETE    = 3,
    HttpMethodHEAD      = 4

} HttpMethod;


typedef NS_ENUM(NSUInteger, MenuItemType) {
    MenuItemTypeAbout = 0,
    MenuItemTypeHelp,
    MenuItemTypeTouchID,
    MenuItemTypeSettings,
    MenuItemTypeSignout,
    MenuItemTypeExternalLink,
    MenuItemTypeContactUs
};

typedef NS_ENUM(NSUInteger, KYDrawerControllerDrawerState) {
    KYDrawerControllerDrawerStateOpened = 0,
    KYDrawerControllerDrawerStateClosed
};

typedef NS_ENUM(NSUInteger, FontType) {
    FontTypeRoboto = 0,
    FontTypeLato = 1,
};

typedef NS_ENUM(NSInteger, AccountType)
{
    AccountTypeInvoice = 0,
    AccountTypeCreditCard = 1,
    AccountTypeDirectDebt = 2,
    AccountTypeChildAccount = 3
};


typedef NS_ENUM(NSInteger, UserAccountType)
{
    AccountTypeParent = 1,
    AccountTypeChild = 2
};

typedef NS_ENUM(NSUInteger, ScreenSize) {
    ScreenSizeUnknown = 0,
    ScreenSize3_5inch = 1,
    ScreenSize4inch   = 2,
    ScreenSize4_7inch = 3,
    ScreenSize5_5inch = 4
};

typedef NS_ENUM(NSUInteger, OwnerType) {
    OwnerTypeEditProfile = 0,
    OwnerTypeBilling
};



typedef NS_ENUM(NSUInteger, EmailResult) {
    EmailResultError = -1,
    EmailResultNotAvailable = 0,
    EmailResultAvailable = 1,
};

typedef NS_ENUM(NSUInteger, CurrentZoneType) {
    CurrentZoneTypeAnyTime = 0,
    CurrentZoneTypeBonus 
};

typedef NS_ENUM(NSUInteger, ActiveBandwidthType) {
    ActiveBandwidthTypePackage = 0,
    ActiveBandwidthTypeToken,
    ActiveBandwidthTypeSmartBrowsing,
    ActiveBandwidthTypeDegradedService
};

typedef NS_ENUM(NSUInteger, TransportType) {
    TransportTypeUnknown,
    TransportTypeKU,
    TransportTypeKA,
    TransportTypeKE
};

typedef NS_ENUM(NSUInteger, RouterType) {
    RouterTypeGen4 = 0,
    RouterTypeGen5 = 1,
};

typedef NS_ENUM(NSInteger, ServicePlan) {
    ServicePlanExpressRepair     = 1,
    ServicePlanZoneAlarm         = 2,
    ServicePlanPCSystemEssential = 3,
    ServicePlanHughesNetVoice    = 4
};


typedef enum : NSUInteger {
    UserTypeGovt = 1,
    UserTypePublic = 2
} UserType;

typedef enum : NSUInteger {
    GenderMale ,
    GenderFemale
} Gender;
