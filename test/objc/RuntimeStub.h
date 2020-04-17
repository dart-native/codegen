//
//  RuntimeStub.h
//  native_runtime
//
//  Created by 杨萧玉 on 2019/9/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^RuntimeStubBlock)(BOOL a, NSString *b, NSArray<NSString *> * c);
typedef List<String *>* (^RuntimeStubBlock2)(void);

typedef NS_ENUM(NSUInteger, RuntimeStubEnum) {
    RuntimeStub_One,
    RuntimeStub_Two,
    RuntimeStub_Three,
    RuntimeStub_Four,
};

@interface RuntimeStub : NSObject<NSCopying, NSObject>

@property (nonatomic, class) BOOL foo;
@property (nonatomic) NSObject *bar;
- (BOOL)fooBOOL;
- (BOOL)fooBOOL:(BOOL)a;
- (BOOL)fooBOOL:(BOOL)a bar:(NSObject *)b;
- (void)fooBOOLAnonFunc:(BOOL)a block:(int(^)(BOOL a, NSString *b))block;
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
