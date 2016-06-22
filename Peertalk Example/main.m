//
//  main.m
//  Peertalk Example
//
//  Created by Rasmus Andersson on 3/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "FBPortForwardingClient.h"

int main(int argc, char *argv[])
{
    NSLog(@"Top of main3");
    
    FBPortForwardingClient *client = [FBPortForwardingClient new];
    [client forwardConnectionsToPort:8081];
    [client connectToMultiplexingChannelOnPort:8025];
    
    NSLog(@"Forwarding Port");
    [[NSRunLoop currentRunLoop] run];
    client = nil;
    return 0;
    
}