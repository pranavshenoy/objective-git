//
//  GTStatusDelta.m
//  ObjectiveGitFramework
//
//  Created by Danny Greg on 08/08/2013.
//  Copyright (c) 2013 GitHub, Inc. All rights reserved.
//

#import "GTStatusDelta.h"

#import "GTDiffFile.h"

@implementation GTStatusDelta

- (instancetype)initWithGitDiffDelta:(git_diff_delta *)delta {
	self = [super init];
	if (self == nil) return nil;
	
	_oldFile = [[GTDiffFile alloc] initWithGitDiffFile:delta->old_file];
	_newFile = [[GTDiffFile alloc] initWithGitDiffFile:delta->new_file];
	_status = (GTStatusDeltaStatus)delta->status;
	_similarity = delta->similarity;
	
	return self;
}

@end
