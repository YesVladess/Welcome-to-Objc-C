//
//  ViewController.m
//  Welcome to Objc-C
//
//  Created by YesVladess on 05.11.2021.
//

#import "ViewController.h"
#import "Lessons/Person.h"
#import "Lessons/Vehicle.h"
#import "Lessons/StringFling.h"
#import "Lessons/MountainMath.h"
#import "Lessons/NoBullying.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if (FALSE) {
        // Class lesson
        Person *person1 = [[Person alloc] init];
        person1.firstName = @"Sandra";
        [person1 setLastName:@"Madnra"];

        // Properties and getters/setter lesson
        Vehicle *car = [[Vehicle alloc] init];
        car.odometer = -100;
        NSLog(@"odometer: %lu", car.odometer);
        car.model = @"Honda Civic";
        NSLog(@"I drive a: %@", car.model);

        self.name = [[NSString alloc] init];
        self.age = 10;
        NSLog(@"age is %d", self.age);

        // Incorrect use of pointers
        //    self.agePoint = 10;
        //    NSLog(@"agePoint is %d", self.agePoint);
        if (_name == &(*_name)) {
            NSLog(@"Tanya umnichka");
        }

        // Strings lesson
        StringFling *stringFling = [[StringFling alloc] init];
        [stringFling myFunc];

        // Numbers lesson
        MountainMath *math = [[MountainMath alloc] init];
        [math myFunc];

    }

    // Bool lesson
    NoBullying *bull = [[NoBullying alloc] init];
    [bull myFunc];

}

- (IBAction)buttonPressed:(id)sender {
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
