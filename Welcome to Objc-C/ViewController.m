//
//  ViewController.m
//  Welcome to Objc-C
//
//  Created by YesVladess on 05.11.2021.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)buttonPressed:(id)sender {

    Person *person1 = [[Person alloc] init];
    person1.firstName = @"Sandra";
    [person1 setLastName:@"Madnra"];


    UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"HelloWorld"
                                                                   message: @"Obj-c is awesome!"
                                                            preferredStyle: UIAlertControllerStyleAlert];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle: @"Cancel it"
                                                           style: UIAlertActionStyleCancel
                                                         handler: nil];

    [alert addAction:cancelAction];
    [self presentViewController:alert
                       animated:TRUE
                     completion:nil];

}

@end
