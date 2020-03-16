#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
//    NSNumber *billSum = [[NSNumber alloc] initWithInt:0];
//    for( NSNumber* price in bill){
//     //   billSum =billSum+price;
//    }
    NSMutableArray *mutBill = [bill mutableCopy];
    NSNumber *fullCost = [bill valueForKeyPath:@"@sum.self"];
    [mutBill removeObjectAtIndex:index];
    int annaShouldPay = ([[mutBill valueForKeyPath:@"@sum.self"] intValue]) / 2; //7
    int splitBill = ([fullCost intValue]) / 2;
    int annaGave = [sum intValue]; //12
    int refund = annaGave - annaShouldPay  ;
   // NSString *refundStr = NSString stringWithFormat:<#(nonnull NSString *), ...#>
    return annaGave == annaShouldPay ?  @"Bon Appetit" : [NSString stringWithFormat:@"%d", refund];
}
// - (void)testCheckFunc3_DifferentSum {
//    NSArray *bill = @[@3, @10, @2, @9];
//    XCTAssertEqualObjects([[BillCounter new] compareResultForBill:bill notIncludingElementWithIndex:1 withGivenSum:@12], @"5");
//}
@end
