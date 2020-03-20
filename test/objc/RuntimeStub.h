//
//  RuntimeStub.h
//  native_runtime
//
//  Created by 杨萧玉 on 2019/9/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RuntimeStub : NSObject<NSCopying, NSObject>

@property (nonatomic) BOOL foo;
@property (nonatomic) BOOL bar;
- (BOOL)fooBOOL:(BOOL)a bar:(NSObject *)b;
+ (BOOL)barBOOL:(BOOL)a;

@end

NS_ASSUME_NONNULL_END
