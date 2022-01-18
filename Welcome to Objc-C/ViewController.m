//
//  ViewController.m
//  Welcome to Objc-C
//
//  Created by YesVladess on 05.11.2021.
//

#import "ViewController.h"
#import "Person.h"
#import "Vehicle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Vehicle *car = [[Vehicle alloc] init];
    car.odometer = -100;
    NSLog(@"odometer: %lu", car.odometer);
    car.model = @"Honda Civic";
    NSLog(@"I drive a: %@", car.model);
    
    self.name = [[NSString alloc] init];
    self.age = 10;
    NSLog(@"age is %d", self.age);
    
    // Incorrect use of pointers
    self.agePoint = 10;
    NSLog(@"agePoint is %d", self.agePoint);
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
