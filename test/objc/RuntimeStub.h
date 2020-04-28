//
//  RuntimeStub.h
//  native_runtime
//
//  Created by 杨萧玉 on 2019/9/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^RuntimeStubBlock)(BOOL a, NSString *b, NSMutableArray<NSArray *> *c);
typedef NSString* (^RuntimeStubBlock2)(void);

typedef NS_ENUM(NSUInteger, RuntimeStubEnum) {
    RuntimeStubOne = 1,
    RuntimeStubTwo = RuntimeStubOne + 1,
    RuntimeStubThree = 3,
    RuntimeStubFour,
};

typedef NS_OPTIONS(NSUInteger, UIViewAutoresizing) {
    UIViewAutoresizingNone                 = 0,
    UIViewAutoresizingFlexibleLeftMargin   = 1 << 0,
    UIViewAutoresizingFlexibleWidth        = 1 << 1,
    UIViewAutoresizingFlexibleRightMargin  = 1 << 2,
    UIViewAutoresizingFlexibleTopMargin    = 1 << 3,
    UIViewAutoresizingFlexibleHeight       = 1 << 4,
    UIViewAutoresizingFlexibleBottomMargin = 1 << 5,
    UIViewAutoresizingAll = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleWidth
};

@interface RuntimeStub : NSObject<NSCopying, NSObject>

@property (nonatomic, class) BOOL foo;
@property (nonatomic) NSObject *bar;
- (BOOL)fooBOOL;
- (BOOL)fooBOOL:(BOOL)a;
- (BOOL)fooBOOL:(BOOL)a bar:(NSObject *)b;
- (void)fooBOOLAnonFunc:(BOOL)a block:(int(^)(BOOL a, NSString *b))block;
- (NSMutableSet<NSString *> *)fooMutable:(BOOL)a bar:(NSMutableArray<NSMutableArray *> *)b c:(NSMutableArray *)c;
- (void)fooEnum:(RuntimeStubEnum)aEnum;
@end

@interface RuntimeStub(Foo)
- (NSString *)fooString:(NSString *)a bar:(NSString *)b;
+ (NSString *)stringFoo:(NSString *)a;
+ (NSArray<NSString *> *)stringFooGeneric:(NSArray<NSString *> *)a;
@end

@protocol RuntimeStubProtocol <NSObject>
- (float)fooFloat:(float)a bar:(float)b;
+ (float)floatFoo:(float)a;
@end

NS_ASSUME_NONNULL_END
