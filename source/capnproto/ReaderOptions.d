// Copyright (c) 2013-2014 Sandstorm Development Group, Inc. and contributors
// Licensed under the MIT License:
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

module capnproto.ReaderOptions;

struct ReaderOptions
{
public: //Varibales.
	static immutable ReaderOptions DEFAULT_READER_OPTIONS = cast(immutable ReaderOptions)ReaderOptions(DEFAULT_TRAVERSAL_LIMIT_IN_WORDS, DEFAULT_NESTING_LIMIT);
	long traversalLimitInWords;
	int nestingLimit;

public: //Methods.
	this(long traversalLimitInWords, int nestingLimit)
	{
		this.traversalLimitInWords = traversalLimitInWords;
		this.nestingLimit = nestingLimit;
	}

private: //Variables.
	enum long DEFAULT_TRAVERSAL_LIMIT_IN_WORDS = 8 * 1024 * 1024;
	enum int DEFAULT_NESTING_LIMIT = 64;
}
