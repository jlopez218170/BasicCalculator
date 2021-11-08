//
//  viewController.m
//  Calculator
//
//  Created by Joshua lopez on 10/31/21.
//

#import "Calculator-Bridging-Header.h"

@interface ViewController()
@end
@implementation ViewController
@synthesize num1,num2,answer,Operand,theNumber,lblText;
- (void)viewDidLoad{
    [super viewDidLoad];
    [self setNum1:0];
    [self setNum2:0];
    [self setOperand:PLUS];
    [self setAnswer:0.0];
    [self setTheNumber:@"0"];
    [self printNumber];
}
    
   -(void)printNumber
{
    [lblText setText:theNumber];
}

- (void)didReceiveMemoryWarnning{
    [super didReceiveMemoryWarning];
}
-(IBAction)calculate:(id)sender
{
    num2=[theNumber integerValue];
    if(Operand == PLUS)
        answer = num1+num2;
    else if(Operand==MINUS)
        answer = num1-num2;
    else if(Operand==MULTIPLY)
        answer = num1*num2;
    else if(Operand==DIVIDE)
        if(num2==0)
        {
            UIAlertView*alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Cannot divide by zero" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        }
        
        else{
        answer = (double)num1/(double)num2;
        }
        else if(Operand==SIN){
            answer = sin(num1/num2);
        }
        else if(Operand==COS){
            answer = cos(num1/num2);
        }
        else if(Operand==TAN){
            answer = tan(num1/num2);
        }
        
    
    theNumber=[NSString stringWithFormat:@"%f",answer];
    [self printNumber];
    
    num1=0;
    num2=0;
    answer=0.0;
       
}
-(void)saveNum1
{
    num1 = [theNumber integerValue];
    theNumber=@"0";
    [self printNumber];
}

-(IBAction)clearNum:(id)sender
{
    theNumber=@"0";
    [self printNumber];
}
-(IBAction)setPlus:(id)sender
{
    [self saveNum1];
    Operand=PLUS;
}
-(IBAction)setMinus:(id)sender
{
    [self saveNum1];
    Operand=MINUS;
}
-(IBAction)setMultiply:(id)sender
{
    [self saveNum1];
    Operand=MULTIPLY;
}
-(IBAction)setDivide:(id)sender
{
    [self saveNum1];
    Operand=DIVIDE;
}
-(IBAction)setSin:(id)sender
{
    [self saveNum1];
    Operand=SIN;
}
-(IBAction)setCos:(id)sender
{
    [self saveNum1];
    Operand=COS;
}
-(IBAction)setTan:(id)sender
{
    [self saveNum1];
    Operand=TAN;
}
-(IBAction)press9:(id)sender{
    theNumber=[theNumber stringByAppendingString:@"9"];
    [self printNumber];

}
-(IBAction)press8:(id)sender{
    theNumber=[theNumber stringByAppendingString:@"8"];
    [self printNumber];
}
-(IBAction)press7:(id)sender{
    theNumber=[theNumber stringByAppendingString:@"7"];
    [self printNumber];
}
-(IBAction)press6:(id)sender{
    theNumber=[theNumber stringByAppendingString:@"6"];
    [self printNumber];
}
-(IBAction)press5:(id)sender{
    theNumber=[theNumber stringByAppendingString:@"5"];
    [self printNumber];
}
-(IBAction)press4:(id)sender{
    theNumber=[theNumber stringByAppendingString:@"4"];
    [self printNumber];
}
-(IBAction)press3:(id)sender{
    theNumber=[theNumber stringByAppendingString:@"3"];
    [self printNumber];
}
-(IBAction)press2:(id)sender{
    theNumber=[theNumber stringByAppendingString:@"2"];
    [self printNumber];
}
-(IBAction)press1:(id)sender{
    theNumber=[theNumber stringByAppendingString:@"1"];
    [self printNumber];
}
-(IBAction)press0:(id)sender{
    theNumber=[theNumber stringByAppendingString:@"0"];
    [self printNumber];
}
@end
