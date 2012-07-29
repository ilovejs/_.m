//
//  _Wrapper.h
//  _.m
//
//  Created by Kevin Malakoff on 7/18/12.
//  Copyright (c) 2012 Kevin Malakoff. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.
//

#import "_Types.h"

@interface _Wrapper : NSObject

- (_Wrapper*(^)())chain;

- (NSO*(^)())value;
- (B(^)())valueB;       /* SPECIALIZED */   // TODO: add tests including mutable and immutable conversions
- (I(^)())valueI;       /* SPECIALIZED */
- (UI(^)())valueUI;     /* SPECIALIZED */
- (F(^)())valueF;       /* SPECIALIZED */
- (N*(^)())valueN;      /* SPECIALIZED */
- (NSS*(^)())valueNSS;  /* SPECIALIZED */
- (S*(^)())valueS;      /* SPECIALIZED */
- (NSA*(^)())valueNSA;  /* SPECIALIZED */
- (A*(^)())valueA;      /* SPECIALIZED */
- (NSD*(^)())valueNSD;  /* SPECIALIZED */
- (O*(^)())valueO;      /* SPECIALIZED */

@end
