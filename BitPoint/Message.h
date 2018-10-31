//
//  Message.h
//  HughesNet
//
//  Created by Usman Asif on 3/29/16.
//
//

#ifndef Message_h
#define Message_h

#define TITLE_RETRY                @"Retry"
#define TITLE_ACCEPT                @"ACCEPT"
#define TITLE_DECLINE                @"DECLINE"
#define TITLE_NOTNOW                @"Not Now"
#define TITLE_EXIT                   @"Exit"
#define TITLE_LEARNMORE             @"Learn More"
#define TITLE_DISMISS               @"dismiss"
#define TITLE_SUBMIT                @"submit"
#define TITLE_SAVE                  @"save"
#define TITLE_SAVE_UPPERCASE        @"SAVE"
#define TITLE_PURCHASE              @"purchase"
#define TITLE_CANCEL                @"cancel"
#define TITLE_CANCEL_UPPERCASE      @"CANCEL"
#define TITLE_CONTINUE              @"Continue"
#define TITLE_ERROR                 @"ERROR"
#define TITLE_WARNING               @"Warning"
#define TITLE_NULL                  @""
#define SUCCESS_MSG_UPDATE          @"Update Successful."
#define TITLE_PURCHASE_SUCCESS      @"PURCHASE SUCCESSFUL"
#define TITLE_NEED_MORE_HELP        @"need more help?"
#define TITLE_BUY_TOKENS            @"buy tokens"
#define TITLE_SERVICE_ERROR         @"Service Error"
#define TITLE_UPDATE                @"update"
#define TITLE_CALL                  @"call"
#define TITLE_AGREE                 @"AGREE"
#define TITLE_DISAGREE              @"DISAGREE"

#define ALERT_TITLE_CONFIRM_PURCHASE @"CONFIRM PURCHASE"
#define ALERT_TITLE_CONFIRM_REDEEM  @"CONFIRM REDEMPTION"
#define ALERT_TITLE_SUCCESS         @"SUCCESS!"

#define TITLE_CONFIRM_PAYMENT       @"CONFIRM PAYMENT"
#define EMPTY_STRING                @""
#define NOT_AVAILABLE               @"N/A"
#define NOT_AVAILABLE_TEXT          @"Not available"

#define TITLE_YES                   @"yes"
#define TITLE_NO                    @"no"
#define TITLE_YES_UPPERCASE         @"YES"
#define TITLE_NO_UPPERCASE          @"NO"
#define TITLE_OK                    @"ok"
#define TITLE_OK_UPPERCASE          @"OK"
#define TITLE_CLOSE                 @"close"
#define TITLE_REDEEM                @"redeem"
#define TITLE_DONE                  @"Done"
#define TITLE_ENABLE                @"Enable"
#define TITLE_DISABLE               @"Disable"
#define TITLE_CONTINUE              @"Continue"

#define ALERT_TITLE_NEW_PAY_TYPE        @"New payment type"
#define ALERT_INFO_UPDATED              @"Information updated"
#define ALERT_TITLE_SESSION_TIMEOUT     @"SESSION TIME OUT"
#define ALERT_TITLE_UNEXPECTED_ERROR    @"UNEXPECTED ERROR"

//---TouchID
#define MSG_TOUCH_ID_DISCLAIMER @"Please note that anyone with a fingerprint registered for Touch ID on this device will be able to access your account. Would you like to continue and enable Touch ID?"
#define NOT_TOUCHID_LOGIN  @"Please sign in with TouchID in order to enable this feature."
#define TITLE_TOUCH_ID_ENABLE @"HughesNet Mobile"
#define ALERT_MSG_TOUCH_ID_LOGOUT @"To enable Touch ID, you need to logout and then login again. Do you wish to continue?"
#define ALERT_MSG_TOUCH_ID_ENABLE @"Are you sure you want to enable TouchID?"
#define TOUCH_ID_DISABLE_CONF_MSG @"Are you sure you want to disable Touch ID?"
#define ALERT_TITLE_AUTHENTICATION_NEEDED    @"Please authenticate with your finger to login."
#define ERR_MSG_TOUCH_ID_AUTHENTICATION_FAILED_ATTEMPTS  @"Too many invalid attempts. Please login with valid credentials to avoid locking the fingerprint authentication."
#define ERR_MSG_TOUCH_ID_NOT_CONFIGURED   @"To use Touch ID with your HughesNet mobile app, please first register your fingerprint on your mobile device."
#define ERR_MSG_TOUCH_ID_SUPPORTED  @"The device does not have a TouchID fingerprint scanner."
#define ERR_MSG_TOUCH_ID_LOCKED     @"Fingerprint authentication has been locked due to multiple invalid attempts. Please provide passcode in device settings to try again."
#define ERR_MSG_TOUCH_ID_AUTHENTICATION_FAILED  @"Authentication Failed"
#define ERR_MSG_TOUCH_ID_AUTHENTICATION @"There was a problem verifying your identity."
#define TITLE_TOUCH_ID_SETUP_PROMPT @"Would you like to enable Touch ID for quicker logins?"
#define ENABLE_TOUCH_ID @"Enable Touch ID"
#define KEEP_USING_PWD @"Keep Logging In With My Password"
#define TOUCHID_TERMS_CONDITIONS_MSG @"TEST TEST TEST"

#define ERR_MSG_PASSWORD_MISMATCH   @"Confirm password mis-match."
#define ERR_MSG_INVALID_PASSWORD    @"Please enter a valid password."
#define ERR_MSG_INVALID_PASSWORD_LENGTH     @"Password length must be atleast %lu characters."
#define ERR_MSG_INVALID_PASSWORD_STRENGTH   @"Password strength is too weak."
#define ERR_MSG_INVALID_PASSWORD_CHARS      @"Password contains invalid characters."
#define ERR_MSG_SPACE_NOT_ALLOWED      @"Spaces are not allowed in password field."
#define ERR_MSG_EMPTY_FIELD         @"Please fill all fields."
#define ERR_MSG_EMPTY_SAN           @"Please enter Site Account Number (SAN)."
#define ERR_MSG_EMPTY_DAY_PHONE     @"Please enter Day Phone Number."
#define ERR_MSG_EMPTY_USER_ID       @"Please enter User ID."
#define ERR_MSG_EMPTY_FIRST_NAME    @"Please enter First Name."
#define ERR_MSG_EMPTY_LAST_NAME     @"Please enter Last Name."
#define ERR_MSG_EMPTY_PASSWORD      @"Please enter Password."
#define ERR_MSG_EMPTY_CONFIRM_PASSWORD  @"Please enter Confirm Password."
#define ERR_MSG_EMPTY_SECURITY_ANSWER   @"Please answer all security questions."
#define ERR_MSG_EMPTY_SECURITY_QUESION  @"Please choose security question."
#define ERR_MSG_QUESION_NOT_SELECTED    @"Please choose security question first."
#define ERR_MSG_DATA_TRY_AGAIN_LATER    @"We’re sorry, but we’ve run into an unexpected error. Please retry your request again later."
#define ERR_MSG_TOKEN_NOT_AVAIL         @"We’re sorry, but we are unable to process token purchases at this time. Please try again later."
#define ERR_MSG_PAY_AMT_DUE             @"Please enter a payment amount less or equal %@"
#define ERR_MSG_ENTER_PAY_AMT           @"Please enter payment amount"
#define ERR_MSG_PAY_AMT_MIN             @"The minimum amount that can be submitted is $0.01"
#define ERR_MSG_PAY_AMT_MAX             @"The maximum amount that can be submitted is $25,000"
#define ERR_MSG_CC_EXPIRY               @"Expiry date should be greater than the current date."
#define ERR_MSG_CHILD_ACCOUNT           @"This feature is only available from your primary account. Please login as the primary accountholder to access this feature."
#define ERR_FEATURE_NOT_IMPLEMENTED     @"This feature is not implemented yet."
#define ERR_DOWNLOADS_NOT_SUPPORTED     @"Downloads to a mobile device are not supported at this time. Please download while logged into your hughesnet account from your personal computer."
#define ERR_MSG_SIGN_IN_FAIL        @"The information you entered does not match the information in our systems. Please check your information and try again. \n\nIf you continue to have difficulties signing in, please contact us at \n1 (866) 347-3292."
#define ERR_MSG_REGISTER_1_FAIL     @"The information you entered does not match the information in our systems. Please check your information and try again. \n\nIf you continue to have difficulties registering, please contact us at \n1 (866) 347-3292."
#define ERR_MSG_FORGOT_PASS_1_FAIL  @"The information you entered does not match the information in our systems. Please check your information and try again."


#define SAN_INFO_TITLE              @"SITE ACCOUNT NUMBER (SAN)?"
#define SAN_INFO_MESSAGE            @"Your Site Account Number (SAN) is the same as the account number found on your monthly HughesNet Statement. If you are currently at home and your mobile device is connected to your HughesNet wifi modem to access the Internet, tap here to get your SAN."
#define SAN_INFO_LINK               @"tap here"
#define VALIDATE_PASSWORD_TITLE     @"ENTER PASSWORD"
#define VALIDATE_PASSWORD_MESSAGE   @"A password is required in order for you to change your security questions."

#define TITLE_FORGOT_PASSWORD       @"FORGOT PASSWORD"

#define ALERT_MSG_CONFIRM_PAY       @"By clicking YES, I authorize HughesNet to charge my credit card or debit my checking account on or within two business days."
#define ALERT_MSG_NEW_PAY_TYPE      @"You have updated your payment type. Would you like to make this your default payment type for all future purchases?"
#define ALERT_MSG_UPDATE_BILLING    @"Your billing information has been updated."
#define ALERT_MSG_PAY_SUCCESS       @"Thank you! Your payment to HughesNet has been successfully submitted."
#define ALERT_MSG_BANK_ROUTING_NO   @"Your bank routing number is a nine-digit code that's based on the U.S. Bank location where your account was opened. It's the first set of numbers printed on the bottom of your checks, on the left side."
#define ALERT_MSG_BANK_ACC_NO       @"Your account number (usually 10-12 digits) is specific to your personal account. It's the second set of numbers printed on the bottom of your checks, just to the right of the bank routing number."
#define ALERT_MSG_CVV_NO            @"The CVV Number (\"Card Verification Value\") on your credit card or debit card is a 3 or 4 digit number, typically found on the back of your debit or credit card near your signature."
#define ALERT_MSG_SESSION_TIMEOUT   @"Your session has been timed out due to inactivity. Please sign in again."
#define ALERT_MSG_UNSUPPORTED_ROUTER @"We’re sorry, but the Wi-Fi connection strength test is not supported for your modem type at this time."
#define ALERT_MSG_UNKNOWN_ROUTER    @"We’re sorry, but we are unable to fully connect with the Wi-Fi gauge services at this time. Please try again later."

#define MSG_CONFIRM_TOKEN_PURCHASE  @"By selecting PURCHASE %@ of Token Bandwidth will be added to your next bill."
#define MSG_CONFIRM_TOKEN_REDEEM    @"By selecting REDEEM %@ of Token Bandwidth will be redeemed and added to your account."

#define WIFI_NOTE_TITLE             @"How to Use the Wi-Fi Gauge\n"
#define WIFI_NOTE_MESSAGE           @"This tool is designed to help you ensure that your Wi-Fi router has a strong connection to your wireless devices throughout your home. Use this tool to test your connection strength from each room in your house to determine if your wireless router should be moved to an area closer to where you usually access the Internet. See our Wi-Fi FAQs for tips on how to optimize your connection strength."
#define WIFI_NOTE_LINK_TEXT         @"Wi-Fi FAQs"
#define MSG_GOOD_BILLING_CYCLE      @"Your Data usage for this month is Good."
#define MSG_WARNING_BILLING_CYCLE   @"Warning! You may run out of Data for this month."
#define MSG_EXCEEDED_BILLING_CYCLE  @"You've run out of Data for this month."

#define MSG_NEED_MORE_HELP          @"If you continue to have difficulties signing in, please contact us at \n1 (866) 347-3292."
#define MSG_NEED_HELP_SIGN_IN       @"To Sign In to the HughesNet mobile application, use the same hughes.net login and password that you use for your email or to access your account on the HughesNet portal.  If you have not yet registered, press Cancel and select Register on the previous page."
#define MSG_NEED_HELP_REGISTER_1    @"Creating an account with HughesNet provides you with many benefits, including a personalized email address, and access to manage your account from this application or the HughesNet portal using a web browser. Registration is easy and requires just a few pieces of information. You will need your HughesNet Site Account Number (SAN) as well as the Daytime Phone Number on your account.\n\nYour Site Account Number (SAN) is the same as the account number found on your monthly HughesNet Statement. If you are currently at home and your mobile device is connected to your HughesNet wifi modem to access the Internet, tap here to get your SAN."
#define MSG_NEED_HELP_REGISTER_2    @"Select a User ID which will be used to login, and as your new email address. This address must be unique – we’ll let you know if someone already has the address you select. Your password should be at least 6 characters, and include at least 2 of the following:\n\n•	Uppercase letters\n•	Lowercase letters\n•	A number (0-9)\n\nYour password cannot contain spaces, tabs, or the following special characters *#()\\"
#define MSG_NEED_HELP_REGISTER_3    @"These security questions are used in case you forget your password.  Please choose 3 questions that are easy for you to remember the answers to, but which would be difficult for someone to guess about you. You can change these questions and answers later under the My Profile section."
#define MSG_NEED_HELP_FORGOT_ID     @"If you’ve forgotten your user ID, we can retrieve them for you. All you need is your HughesNet Site Account Number (SAN) as well as the Daytime Phone Number on your account.\n\nYour Site Account Number (SAN) is the same as the account number found on your monthly HughesNet Statement. If you are currently at home and your mobile device is connected to your HughesNet wifi modem to access the Internet, tap here to get your SAN."

#define MSG_NEED_HELP_USER_ACCOUNTS @"This is a list of the user names which have been created for this HughesNet account. Please select the one you wish to login as, or select “Register New Account” if you would like to add a new user. If you do not see the option to register a new account, please note that you may have a maximum of 10 logins associated with your account. To register a new login, please visit my.hughesnet.com and remove an existing login associated with your account."

#define MSG_NEED_HELP_FORGOT_PASS_1 @"If you’ve forgotten your password, please enter your user id here.  If you have already set up security questions, we’ll verify your answers and you can set a new password.  If you’ve also forgotten your User ID, select Forgot User ID and we’ll take some other information to help you find it."

#define WIFI_FAQ_ALERT_TEXT @"The Wi-Fi Gauge measures the performance only from your device, through your wireless connection, to your HughesNet modem. It does not measure the speed of the HughesNet connection over the satellite to the Internet.  Within your home, your wireless connection speed may vary because of distance to your wireless router, the number and type of walls between your device and wireless router, or interference from other devices, such as your neighbor’s wireless signal, microwave ovens, and some handheld cordless phones. By measuring only the performance of your wireless connection, this tool helps identify possible causes of poor performance which are not related to your satellite connection. And, you can use the tool to help select the best place to position your wireless router to reach the parts of your home where you use your service the most."
#define MSG_WIFI_EXCELLENT          @"You have an excellent wireless connection from this location."
#define MSG_WIFI_MARGINAL           @"Your wireless connection from this location is marginal. You may experience poor Internet performance as a result. If you use your device from this location frequently, you may want to try adjusting your wireless router’s antennas or moving your wireless router closer to this location to improve the quality of the connection."
#define MSG_WIFI_POOR               @"Your wireless connection from this location is poor. You may experience poor Internet performance as a result. If you use your device from this location frequently, you may want to try adjusting your wireless router’s antennas or moving your wireless router closer to this location to improve the quality of the connection."

#define MSG_WIFI_QUESTION_MARK      @"The Wi-Fi Gauge measures the performance only from your device, through your wireless connection, to your HughesNet modem. It does not measure the speed of the HughesNet connection over the satellite to the Internet.  Within your home, your wireless connection speed may vary because of distance to your wireless router, the number and type of walls between your device and wireless router, or interference from other devices, such as your neighbor’s wireless signal, microwave ovens, and some handheld cordless phones. By measuring only the performance of your wireless connection, this tool helps identify possible causes of poor performance which are not related to your satellite connection. And, you can use the tool to help select the best place to position your wireless router to reach the parts of your home where you use your service the most."

#define TITLE_LOCAL_NOTI_DATA_LOW       @"My Service Plan data is running low"
#define TITLE_LOCAL_NOTI_DATA_REACHED   @"My Service Plan data has been reached"

#define MSG_IN_APP_INFO                 @"Please note that your In-App notification settings are specific to each device and username you login with. If you login with other usernames or with other mobile devices, you may also need to update your settings from those devices or accounts."
#define MSG_WIFI_POOR_STRENGTH          @"Your wireless connection from this location is poor. You may experience poor Internet performance as a result. If you use your device from this location frequently, you may want to try adjusting your wireless router’s antennas or moving your wireless router closer to this location to improve the quality of the connection."

#define MSG_WIFI_MARGINAL_STRENGTH      @"Your wireless connection from this location is marginal. You may experience poor Internet performance as a result. If you use your device from this location frequently, you may want to try adjusting your wireless router’s antennas or try moving your wireless router closer to this location to improve the quality of the connection."

#define MSG_WIFI_EXCELLENT_STRENGTH     @"You have excellent wireless connection from this location."

#define ALERT_WIFI_TITLE_POOR           @"Wi-Fi POOR"
#define ALERT_WIFI_TITLE_MARGINAL       @"Wi-Fi MARGINAL"
#define ALERT_WIFI_TITLE_EXCELLENT      @"Wi-Fi EXCELLENT"

#define SECURITY_QUESTION_DESCRIPTION   @"Please update your account with %@ security questions of your choice."
#define ALERT_WIFI_FORCEFULTERMINATION  @"Wi-Fi test got terminated since application was moved in to background. Kindly try again."


#define PULL_TO_REFRESH_TEXT            @"Sorry, an error occurred while attempting to load your account data. Please pull down on the screen to retry the request."
#define ACCOUNT_BALANCE_NOT_AVAILABLE   @"Account balance information not available. Please pull down to refresh"
#define ACCOUNT_BALANCE_IS_ZERO         @"Thank you for your payment request. Your current outstanding account balance is $0.00. No further account payments or account overpayments can be accepted at this time."


#define TITLE_SIGN_OUT @"SIGN OUT"
#define SIGN_OUT_CONFIRM_MSG @"Are you sure you want to sign out?"
#define CHANGE_PASSWORD_CONFIRM_MSG @"Are you sure you want to change your password?"
#define CONFIRM_PWD_CHANGE  @"CONFIRM PASSWORD CHANGE"

#define MSG_ADDRESS                 @"Please fill address"
#define MSG_BILLING_ADDRESS         @"Please enter billing address"
#define MSG_CITY                    @"Please enter city"
#define MSG_STATE                   @"Please enter state"
#define MSG_ZIPCODE                 @"Please enter zipcode"
#define MSG_EMAIL                   @"Please Enter Email"
#define MSG_EMAIL_VALIDITY          @"Please enter valid email address"
#define MSG_STATE_MIN_LIMIT         @"State should consist of two characters"
#define MSG_ZIPCODE_MIN_LIMIT       @"Zipcode should contain 5 digits"
#define MSG_DAYTIME_PHONE_MIN_LIMIT @"Daytime Phone should contain 10 digits"
#define MSG_EVENING_PHONE_MIN_LIMIT @"Evening Phone should contain 10 digits"

#define MSG_SAN_MIN_LIMIT           @"SAN should consist of atleast 3 characters"

#define MSG_NAME                    @"Please Enter Name"
#define MSG_CREDITCARD_TYPE         @"Please select a card type"
#define MSG_CREDITCARD_NUM          @"Please enter card number"
#define MSG_CREDITCARD_MINLIMIT     @"Card number should contain atleast 15 digits"
#define MSG_CREDITCARD_VALIDITY     @"Please enter a valid card number"
#define MSG_CREDITCARD_EXPIRY       @"Please select a card expiry date"
#define MSG_CREDIT_SEC_CODE         @"Please enter card security code"
#define MSG_SECURITY_CODE_MIN_LIMIT @"Security Code should contain atleast 3 digits"
#define MSG_ERROR_CCNUM_ENTRY       @"Please enter/confirm your full 16 digit credit card number to successfully update your payment information"

#define MSG_ROUTING_NUM                         @"Please enter routing number"
#define MSG_ROUTING_MIN_LIMIT                   @"Routing Number should contain 9 digits"
#define MSG_BANK_ACCOUNT_NUM                    @"Please enter bank account number"
#define MSG_ERROR_BANKACCOUNTNUM_ENTRY          @"Please enter/confirm your entire bank account number to successfully update your payment information"
#define MSG_BANKACCOUNT_MIN_LIMIT               @"Bank Account Number should contain atleast 10 digits"

#define ABOUT_HUGHESNET @"Why HughesNet"
#define GET_HELP @"Get Help"
#define CONTACT_US @"Contact Us"
#define NOTIFICATION_SETTINGS @"Notification Settings"
#define SETTINGS @"Settings"
#define TITLE_NOTIFICATIONS @"Notifications"
#define SIGN_IN_OPTIONS @"Sign In Options"
#define SIGNOUT @"Sign Out"
#define TITLE_PRIVACY_POLICY        @"Privacy Policy"
#define TITLE_TERM_OF_USE           @"Terms of Use"
#define TITLE_TERM_AND_CONDITIONS          @"TERMS & CONDITIONS"

#define MY_HUGHESNET @"myHughesNet"
#define COMMUNITY @"Community"
#define SHOP_UPGRADES @"Shop/Upgrade"

#define ABOUT_HUGHESNET_IMAGE @"AboutHughes"
#define GET_HELP_IMAGE @"GetHelp"
#define SETTINGS_IMAGE @"Settings"
#define SIGNOUT_IMAGE @"SignOut"
#define EXTERNAL_LINK_IMAGE @"ExternalLink"
#define GET_TOUCH_ID_IMAGE @"TouchID-blue"
#define GET_TOUCH_ID @"TouchID"

#define TEXT_HELLO      @"Hello %@!"

#define VERSION_TEXT(versionNo,buildNo) [NSString stringWithFormat:@"HughesNet Version %@ (%@)",versionNo,buildNo]

#define ALERT_MSG_SUCCESSFULL_REGISTRATION  @"You have successfully registered."

#define MESSAGE_CHECKING_ROUTER @"Checking HughesNet Service..."

#define ALERT_TITLE_NOT_HUGHES @"YOU ARE NOT CURRENTLY CONNECTED TO YOUR HughesNet MODEM\n\n"
#define ALERT_MSG_NOT_HUGHES @"The Wi-Fi Gauge is designed to test the performance of your wireless connection in your home. Please ensure your mobile device is connected to your home’s Wi-Fi network, which should be connected to your HughesNet wifi modem, and try again."
#define ALERT_MSG_NOT_HUGHES_WIFI @"SAN is associated with HughesNet wifi modem. Please ensure your mobile device is connected to your home’s Wi-Fi network, which should be connected to your HughesNet wifi modem, and try again."

#define HELP_FAQ @"help/faq"

#define KEEP_ME_SIGNED_IN_MSG @"By selecting 'Keep me signed in' your account information will be accessible to anyone who uses your device."
#define TITLE_PLEASE_NOTE @"PLEASE NOTE..."
#define TITLE_WIFI_HELP_FAQ                 @"Wi-Fi Help / FAQ"
#define TITLE_EDIT_SECURITY_QUESTIONS       @" Edit Security Questions"
#define TITLE_EDITPROFILE                   @"Edit Profile"
#define TITLE_USAGE_STATUS                  @"Usage Status"
#define TITLE_BILLING                       @"Billing"
#define TITLE_PASSWORDCHANGE                @"Change Password"

#define ALERT_MSG_EMAIL_NOT_AVAILABLE @"This email address is not available. Please choose another one"
#define ALERT_MSG_EMAIL_AVAILABLE     @"This email address is available"

#define ACCOUNT_LIST_MAX_LIMIT_MSG    @"Please choose the login you would like to sign in with, below. Please note that you may have a maximum of 10 logins associated with your account. To register a new login, please visit my.hughesnet.com and remove an existing login associated with your account."
#define ALERT_MSG_UPDATE_APP          @"A new version of the HughesNet Mobile App is available for your device. Please download the latest update to continue."


#define MSG_SERVICE_DEGRADED @"Your service speeds have been reduced. You can buy Data Tokens to restore service."
#define MSG_DATA_CYCLE_CONSUMING_TOKEN @"Your Data Tokens have been applied."
#endif /* Message_h */


#define TITLE_VIDEO_SETTINGS @"VIDEO SETTINGS"
#define MESSAGE_VIDEO_SETTINGS_UPDATE @"HughesNet Gen5 service plans include data-saving features to get the most out of your service. Video settings are automatically adjusted to stream video at DVD quality for great picture viewing while using less data – giving you 3½ times more video. You can opt-out of the video feature temporarily or permanently."

#define TITLE_ARE_YOU_SURE @"ARE YOU SURE?"
#define MESSAGE_CONFIRM_RESTART_SNOOZE_TIMER @"Are you sure you want to restart snooze timer?"

#define OTHER_OPTIONAL_SERVICES  [NSArray arrayWithObjects:@"Express Repair", @"Zone Alarm", @"Home Voice",@"PC System Essentials",nil]

#define TITLE_MY_SERVICES @"Your current services:"
#define TITLE_OTHER_SERVICES @"Other optional services:"
#define TITLE_SERVICE_PLAN @"Service Plan"
#define TITLE_HUGHESNET_VOICE  @"HughesNet Voice"

//#define VISIT_SHOP_URL @"https://shop.hughesnet.com/?action=dspOptionalServices"
//#define EXTERNAL_LINK_OPTIONAL_SERVICES  [NSArray arrayWithObjects:@"https://shop.hughesnet.com/members/index.cfm?action=dspExpressRepair", @"https://shop.hughesnet.com/members/index.cfm?action=dspZoneAlarm", @"https://shop.hughesnet.com/members/index.cfm?action=dspVoice",@"https://shop.hughesnet.com/members/index.cfm?action=dspPCSystem",nil]

#define VISIT_SHOP_URL @"https://shop.hughesnet.com/"
#define EXTERNAL_LINK_OPTIONAL_SERVICES  [NSArray arrayWithObjects:@"https://shop.hughesnet.com/members/index.cfm", @"https://shop.hughesnet.com/members/index.cfm", @"http://voice.hughesnet.com/",@"https://shop.hughesnet.com/members/index.cfm",nil]

#define EXTERNAL_LINK_EXPRESS_REPAIR        @"https://shop.hughesnet.com/"
#define EXTERNAL_LINK_ZONE_ALARM            @"https://shop.hughesnet.com/"
#define EXTERNAL_LINK_PC_SYSTEM_ESSENTIAL   @"https://shop.hughesnet.com/"
#define EXTERNAL_LINK_HUGHESNET_VOICE       @"http://voice.hughesnet.com/"

#define MESSAGE_MY_SERVICES @"It may take up to 5 minutes for changes to display"
#define MESSAGE_MY_SERVICES_Alert @"Thankyou! Your request has been approved. Code PIM(05)"

#define MESSAGE_CONFIRMATION_ALERT_EXTERNAL_BROWSER @"To add this service you will need to access an external website. Would you like to exit the app and order the service now?"
#define MESSAGE_CONFIRMATION_ALERT_ZONE_ALARM @"Download and install Zone Alarm Internet Security Suite then copy and paste your License Key into the installed software to enable your protection. Do you want to proceed?"
