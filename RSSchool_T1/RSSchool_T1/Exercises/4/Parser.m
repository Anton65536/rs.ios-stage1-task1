#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {
    NSMutableArray *matches = [NSMutableArray array];
    char startSymbol;
    char endSymbol;
    NSInteger stillContinueSearch = 0;
    NSInteger startIndex = 0;
    NSInteger endIndex = 0;
    for (int i = 0; i < [string length]; i++) {
        startSymbol = [string characterAtIndex:i];
        if (startSymbol == '(') {
            startIndex = i + 1;
            for (int  k = i; i < [string length]; k++) {
                endSymbol = [string characterAtIndex:k + 1];
                if (endSymbol == '(') {
                    stillContinueSearch++;
                }
                if (endSymbol == ')') {
                    if (stillContinueSearch != 0) {
                        stillContinueSearch--;
                        continue;
                    }
                    endIndex = k - startIndex + 1;
                    NSString *subString = [string substringWithRange:NSMakeRange(startIndex, endIndex)];
                    [matches addObject: subString];
                    i++;
                    break;
                }
            }
        }
        if (startSymbol == '<') {
            startIndex = i + 1;
            for (int  k = i; i < [string length]; k++) {
                endSymbol = [string characterAtIndex:k + 1];
                if (endSymbol == '<') {
                    stillContinueSearch++;
                }
                if (endSymbol == '>') {
                    if (stillContinueSearch != 0) {
                        stillContinueSearch--;
                        continue;
                    }
                    endIndex = k - startIndex + 1;
                    NSString *subString = [string substringWithRange:NSMakeRange(startIndex, endIndex)];
                    [matches addObject: subString];
                    break;
                }
            }
        }
        if (startSymbol == '[') {
            startIndex = i + 1;
            for (int  k = i; i < [string length]; k++) {
                endSymbol = [string characterAtIndex:k + 1];
                if (endSymbol == '[') {
                    stillContinueSearch++;
                }
                if (endSymbol == ']') {
                    if (stillContinueSearch != 0) {
                        stillContinueSearch--;
                        continue;
                    }
                    endIndex = k - startIndex + 1;
                    NSString *subString = [string substringWithRange:NSMakeRange(startIndex, endIndex)];
                    [matches addObject: subString];
                    i++;
                    break;
                }
            }
        }
    }
    return matches;
}
@end













