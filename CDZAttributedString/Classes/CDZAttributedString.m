//
//  CDZAttributedString.m
//  CDZAttributedString
//
//  Created by baight chen on 2017/12/22.
//

#import "CDZAttributedString.h"

@implementation CDZAttributedStringComponent
- (NSAttributedString*)attributedString{
    if (self.text == nil) {
        return nil;
    }
    NSMutableDictionary* attributes = [[NSMutableDictionary alloc]init];
    if (self.font) {
        attributes[NSFontAttributeName] = self.font;
    }
    if (self.textColor) {
        attributes[NSForegroundColorAttributeName] = self.textColor;
    }
    NSAttributedString* as = [[NSAttributedString alloc]initWithString:self.text attributes:attributes];
    return as;
}
@end

@implementation CDZAttributedString{
    NSMutableArray* _attributedStringComponentArray;
}

- (CDZAttributedString*)attributedStringAtIndex:(NSUInteger)index{
    [self createAttributedStringWithCount:index+1];
    return [_attributedStringComponentArray objectAtIndex:index];
}
- (void)createAttributedStringWithCount:(NSInteger)count{
    if (_attributedStringComponentArray == nil) {
        _attributedStringComponentArray = [[NSMutableArray alloc]init];
    }
    while (_attributedStringComponentArray.count < count) {
        CDZAttributedStringComponent* asc = [[CDZAttributedStringComponent alloc]init];
        [_attributedStringComponentArray addObject:asc];
    }
}
- (NSAttributedString*)attributedString{
    NSMutableAttributedString* mas = [[NSMutableAttributedString alloc]init];
    for (CDZAttributedStringComponent* component in _attributedStringComponentArray) {
        NSAttributedString* as = [component attributedString];
        if (as) {
            [mas appendAttributedString:as];
        }
    }
    return mas;
}

- (CDZAttributedStringComponent*)objectAtIndexedSubscript:(NSUInteger)idx{
    return [self attributedStringAtIndex:idx];
}

@end

