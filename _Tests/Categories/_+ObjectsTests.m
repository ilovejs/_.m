//
//  _+ObjectsTests.m
//  _.m
//
//  Created by Kevin Malakoff on 7/18/12.
//  Copyright (c) 2012 Kevin Malakoff. All rights reserved.
//

#import "_+ObjectsTests.h"
#import "Underscore.h"
#import "SubjectiveScript.h"

@implementation __ObjectsTests

//keys
//values
//functions
//extend
//pick
//defaults
//clone
//tap
//has
//isEqual
//isEmpty
//isElement

- (void)test_isArray
{
//  self.ok(!_.isArray(arguments), @"the arguments object is not an array");
  self.ok(_.isArray(Ai3(1, 2, 3)), @"but arrays are");
//  self.ok(_.isArray(iArray), @"even from another frame");
}

- (void)test_isObject
{
//  self.ok(_.isObject(arguments), @"the arguments object is object");
  self.ok(_.isObject(Ai3(1, 2, 3)), @"and arrays");
//  self.ok(_.isObject($("html")[0]), @"and DOM element");
//  self.ok(_.isObject(iElement), @"even from another frame");
//  self.ok(_.isObject(function () {}), @"and functions");
//  self.ok(_.isObject(iFunction), @"even from another frame");
  self.ok(!_.isObject(nil), @"but not null");
//  self.ok(!_.isObject(undefined), @"and not undefined");
//  self.ok(!_.isObject(@"string"), @"and not string");
  self.ok(!_.isObject(N.i(12)), @"and not number");
  self.ok(!_.isObject(N.b(true)), @"and not boolean");
  self.ok(_.isObject(S.s(@"string")), @"but new String()");
}

//isArguments
//isFunction

- (void)test_isString
{
//  self.ok(!_.isString(document.body), @"the document body is not a string");
  self.ok(_.isString(Ai3(1, 2, 3).join(@", ")), @"but strings are");
//  self.ok(_.isString(iString), @"even from another frame");
}

- (void)test_isNumber
{
  self.ok(!_.isNumber(@"string"), @"a string is not a number");
//  self.ok(!_.isNumber(arguments), @"the arguments object is not a number");
//  self.ok(!_.isNumber(undefined), @"undefined is not a number");
  self.ok(_.isNumber(N.f(3 * 4 - 7 / 10)), @"but numbers are");
//  self.ok(_.isNumber(NaN), @"NaN *is* a number");
//  self.ok(_.isNumber(Infinity), @"Infinity is a number");
//  self.ok(_.isNumber(iNumber), @"even from another frame");
  self.ok(!_.isNumber(@"1"), @"numeric strings are not numbers");
}

//isFinite
//isBoolean

- (void)test_isDate
{
  self.ok(!_.isDate(N.i(100)), @"numbers are not dates");
  self.ok(!_.isDate(O.new_), @"objects are not dates");
  self.ok(_.isDate(D.new_), @"but dates are");
//  self.ok(_.isDate(iDate), @"even from another frame");
}

//isRegExp
//isNaN

- (void)test_isNull
{
//  self.ok(!_.isNull(undefined), @"undefined is not null");
//  self.ok(!_.isNull(NaN), @"NaN is not null");
  self.ok(_.isNull([NSNull null]), @"but null is"); // ADDED
  self.ok(_.isNull(nil), @"but null is");
//  self.ok(_.isNull(iNull), @"even from another frame");
}

//isUndefined

@end