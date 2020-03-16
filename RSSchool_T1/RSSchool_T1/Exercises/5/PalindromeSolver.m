#import "PalindromeSolver.h"

@implementation PalindromeSolver

// Complete the highestValuePalindrome function below.
- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {
    NSMutableArray *mArray = [NSMutableArray array];
    for (int i = 0; i < [s length]; i++) {
        NSString *digit = [s substringWithRange:NSMakeRange(i, 1)];
        [mArray addObject:digit];
    }
    int count = 0;
    unsigned char maxValueToCompareWith = 0;
    for (int i = ([n intValue] / 2); i >= 0; i--) {
        NSUInteger leftDigit = [[mArray objectAtIndex: i] integerValue];
        NSUInteger rightDigit = [[mArray objectAtIndex: ([n intValue] - i - 1)] integerValue];
        if (leftDigit != rightDigit) {
            maxValueToCompareWith = MAX(maxValueToCompareWith, MAX(leftDigit, rightDigit));
            mArray[i] = [[NSString alloc] initWithFormat:@"%d", maxValueToCompareWith];
            mArray[([n intValue] - i - 1)] = [[NSString alloc] initWithFormat:@"%d", maxValueToCompareWith];
            if (leftDigit != maxValueToCompareWith) {
                count++;
            }
            if (rightDigit != maxValueToCompareWith) {
                count++;
            }
        }
    }
    if (count == [k intValue]) {
        return [mArray componentsJoinedByString:@""];
    }
    return @"-1";
}

@end
