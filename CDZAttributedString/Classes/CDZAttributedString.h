//
//  CDZAttributedString.h
//  CDZAttributedString
//
//  Created by baight chen on 2017/12/22.
//

#import <UIKit/UIKit.h>

@interface CDZAttributedStringComponent : NSObject
@property (nonatomic, strong) UIFont* font;
@property (nonatomic, strong) UIColor* textColor;
@property (nonatomic, strong) NSString* text;
- (NSAttributedString*)attributedString;
@end


@interface CDZAttributedString : NSObject
- (CDZAttributedStringComponent*)attributedStringAtIndex:(NSUInteger)index;
- (NSAttributedString*)attributedString;

- (CDZAttributedStringComponent*)objectAtIndexedSubscript:(NSUInteger)idx;
@end
