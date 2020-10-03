//
//  main.m
//  Calculator
//
//  Created by Yevgeniya on 9/29/20.
//

#import <Foundation/Foundation.h>
#import "Calculator_Brain.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator_Brain *cb = [[Calculator_Brain alloc]init];
        [cb pushItem:2.1];
        [cb pushItem:1.5];
        double sum = [cb calculate:@"+"];
        NSLog(@"The sum is %f", sum);
    }
    return 0;
}
