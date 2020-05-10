//
//  BoxPhoto.h
//  FlickStackr
//
//  Created by Carlos Mejia on 2012-09-20.
//  Copyright (c) 2012 iPont. All rights reserved.
//

#import "ProviderPhoto.h"
#import "ProviderFilePhoto.h"

@class BoxSession;

typedef NS_OPTIONS(NSInteger, BoxPermissions) 
{
    BoxPermissionUnknown = 0, BoxPermissionDelete = 1, BoxPermissionDownload = 2,  BoxPermissionInvite = 4, BoxPermissionRename = 8, BoxPermissionShareAccess = 16, BoxPermissionShare = 32, BoxPermissionUpload = 64

} ;

@interface BoxPhoto : ProviderFilePhoto
{
}
- (instancetype)initWithDictionary:(NSDictionary *)photo index:(NSInteger)index box:(BoxSession *)box NS_SWIFT_NOTHROW NS_DESIGNATED_INITIALIZER API_AVAILABLE(macos(10.11.1), ios(9.0), watchos(2.0), tvos(9.0)) API_DEPRECATED("Use -foo instead.", macos(10.0,10.11), ios(2.0,9.0), watchos(2.0,2.0), tvos(9.0,9.0)) API_UNAVAILABLE(ios, watchos, tvos);
-(instancetype)initUserInfoWithDictionary:(NSDictionary*)photo box:(BoxSession*)box ;
-(NSString*)stringValue:(NSDictionary*)photo name:(NSString*)name;
@property(nonatomic,assign) BoxPermissions permissions;
+(BoxPermissions)boxPermissionFromDictionary:(NSDictionary*)dict;
@end
