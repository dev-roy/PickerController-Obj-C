//
//  ViewController.m
//  ImagePicker
//
//  Created by Field Employee on 4/1/20.
//  Copyright © 2020 Field Employee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () 


@end

@implementation ViewController
@synthesize imageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)loadImagePressed:(id)sender {
    UIImagePickerController *pickerController = [[UIImagePickerController alloc]init];
    [pickerController setDelegate: self];
    [pickerController setEditing:true];
    [pickerController setSourceType: UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:pickerController animated:true completion:nil];
}

#pragma mark UIPickerControllerDelegate methods
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info {
    UIImage *pickedImage = info[UIImagePickerControllerOriginalImage];
    [imageView setImage:pickedImage];
    NSLog(@"selectedimage");
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:true completion:nil];
}
@end
