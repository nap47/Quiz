//
//  ViewController.m
//  Quiz
//
//  Created by V on 12/27/14.
//  Copyright (c) 2014 V. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic)int currentQuestionIndex;

@property(nonatomic,copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;



@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;



@end







@implementation ViewController
-(instancetype) initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil{

    //call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self){
        //crate two arrays filled with questions and answers,
        //and make the pointers point to them
        
        self.questions = @[@"What is my name?", @"How many states are in the United States?", @"When was the University of Pittsburgh founded?"];
        
        self.answers = @[@"Nick", @"50", @"1787"];
        
    }
    //return the address of the new object
    return self;
    
    
    
    
}

-(IBAction)showQuestion:(id)sender
{
    //step to the next question
    self.currentQuestionIndex++;
    
    //Am i past the last question?
    if(self.currentQuestionIndex == [self.questions count]){
        //go back to the first question
        self.currentQuestionIndex = 0;
    }
    
    //Get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //Display the string in the question label
    self.questionLabel.text = question;
    
    //reset the answer label
    self.answerLabel.text = @"???";
    
}



-(IBAction)showAnswer:(id)sender

{
    //What is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //Display it in the answer label
    self.answerLabel.text = answer;
    
}


@end
