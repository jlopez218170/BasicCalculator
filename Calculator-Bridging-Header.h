//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//
#import <UIKit/UIKit.h>
//#import "MyFramework/.h"
#define PLUS 0
#define MINUS 1
#define MULTIPLY 2
#define DIVIDE 3
#define SIN 4
#define COS 5
#define TAN 6

@interface ViewController : UIViewController
{
NSInteger num1;
NSInteger num2;
double answer;

NSInteger Operand;
NSString*theNumber;
    IBOutlet UILabel*lblText;
}

@property NSInteger num1;
@property NSInteger num2;
@property double answer;

@property NSInteger Operand;
@property(strong,nonatomic) NSString*theNumber;
@property(strong,nonatomic) IBOutlet UILabel*lblText;
@end


