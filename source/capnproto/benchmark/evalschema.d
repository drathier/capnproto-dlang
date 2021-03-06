//Generated by Cap'n Proto compiler, DO NOT EDIT.
//source: eval.capnp

module capnproto.benchmark.evalschema;

import capnproto;

enum Operation : ushort
{
	add,
	subtract,
	multiply,
	divide,
	modulus,
	_NOT_IN_SCHEMA,
}

struct Expression
{
public:
	static immutable structSize = cast(immutable)StructSize(2, 2);
	
	static struct Builder
	{
	public:
		this(SegmentBuilder* segment, int data, int pointers, int dataSize, short pointerCount)
		{
			b = StructBuilder(segment, data, pointers, dataSize, pointerCount);
		}
		
		
		auto asReader()
		{
			return b.asReader!Reader();
		}
		
		.Operation getOp()
		{
			switch(b._getUshortField(0))
			{
				case 0: return .Operation.add;
				case 1: return .Operation.subtract;
				case 2: return .Operation.multiply;
				case 3: return .Operation.divide;
				case 4: return .Operation.modulus;
				default: return .Operation._NOT_IN_SCHEMA;
			}
		}
		void setOp(.Operation value)
		{
			b._setShortField(0, cast(ushort)value);
		}
		
		Left.Builder getLeft()
		{
			return Expression.Left.Builder(b.segment, b.data, b.pointers, b.dataSize, b.pointerCount);
		}
		Left.Builder initLeft()
		{
			b._setUshortField(1, cast(ushort)0);
			b._setIntField(1, 0);
			b._clearPointerField(0);
			return Expression.Left.Builder(b.segment, b.data, b.pointers, b.dataSize, b.pointerCount);
		}
		
		Right.Builder getRight()
		{
			return Expression.Right.Builder(b.segment, b.data, b.pointers, b.dataSize, b.pointerCount);
		}
		Right.Builder initRight()
		{
			b._setIntField(2, 0);
			b._setUshortField(6, cast(ushort)0);
			b._clearPointerField(1);
			return Expression.Right.Builder(b.segment, b.data, b.pointers, b.dataSize, b.pointerCount);
		}
		
	public:
		StructBuilder b;
	}
	
	static struct Reader
	{
	public:
		this(SegmentReader* segment, int data, int pointers, int dataSize, short pointerCount, int nestingLimit)
		{
			b = StructReader(segment, data, pointers, dataSize, pointerCount, nestingLimit);
		}
		
		.Operation getOp()
		{
			switch(b._getUshortField(0))
			{
				case 0: return .Operation.add;
				case 1: return .Operation.subtract;
				case 2: return .Operation.multiply;
				case 3: return .Operation.divide;
				case 4: return .Operation.modulus;
				default: return .Operation._NOT_IN_SCHEMA;
			}
		}
		
		Left.Reader getLeft()
		{
			return Expression.Left.Reader(b.segment, b.data, b.pointers, b.dataSize, b.pointerCount, b.nestingLimit);
		}
		
		Right.Reader getRight()
		{
			return Expression.Right.Reader(b.segment, b.data, b.pointers, b.dataSize, b.pointerCount, b.nestingLimit);
		}
		
	public:
		StructReader b;
	}
	
	struct Left
	{
	public:
		static immutable structSize = cast(immutable)StructSize(2, 2);
		
		static struct Builder
		{
		public:
			this(SegmentBuilder* segment, int data, int pointers, int dataSize, short pointerCount)
			{
				b = StructBuilder(segment, data, pointers, dataSize, pointerCount);
			}
			
			Which which()
			{
				switch(b._getUshortField(1))
				{
					case 0: return Which.value;
					case 1: return Which.expression;
					default: return Which._NOT_IN_SCHEMA;
				}
			}
			
			
			auto asReader()
			{
				return b.asReader!Reader();
			}
			
			bool isValue()
			{
				return which() == Expression.Left.Which.value;
			}
			int getValue()
			{
				assert(which() == Expression.Left.Which.value, "Must check which() before get()ing a union member.");
				return b._getIntField(1);
			}
			void setValue(int value)
			{
				b._setShortField(1, cast(ushort)Expression.Left.Which.value);
				b._setIntField(1, value);
			}
			
			bool isExpression()
			{
				return which() == Expression.Left.Which.expression;
			}
			.Expression.Builder getExpression()
			{
				assert(which() == Expression.Left.Which.expression, "Must check which() before get()ing a union member.");
				return b._getPointerField!(.Expression)(0, null, 0);
			}
			void setExpression(.Expression.Reader value)
			{
				b._setShortField(1, cast(ushort)Expression.Left.Which.expression);
				b._setPointerField!(.Expression)(0, value);
			}
			.Expression.Builder initExpression()
			{
				b._setShortField(1, cast(ushort)Expression.Left.Which.expression);
				return b._initPointerField!(.Expression)(0, 0);
			}
			
		public:
			StructBuilder b;
		}
		
		static struct Reader
		{
		public:
			this(SegmentReader* segment, int data, int pointers, int dataSize, short pointerCount, int nestingLimit)
			{
				b = StructReader(segment, data, pointers, dataSize, pointerCount, nestingLimit);
			}
			
			Which which()
			{
				switch(b._getUshortField(1))
				{
					case 0: return Which.value;
					case 1: return Which.expression;
					default: return Which._NOT_IN_SCHEMA;
				}
			}
			
			bool isValue()
			{
				return which() == Expression.Left.Which.value;
			}
			int getValue()
			{
				assert(which() == Expression.Left.Which.value, "Must check which() before get()ing a union member.");
				return b._getIntField(1);
			}
			
			bool isExpression()
			{
				return which() == Expression.Left.Which.expression;
			}
			bool hasExpression()
			{
				return !b._pointerFieldIsNull(0);
			}
			.Expression.Reader getExpression()
			{
				assert(which() == Expression.Left.Which.expression, "Must check which() before get()ing a union member.");
				return b._getPointerField!(.Expression)(0, null, 0);
			}
			
		public:
			StructReader b;
		}
		
		enum Which : ushort
		{
			value,
			expression,
			_NOT_IN_SCHEMA,
		}
	}
	
	struct Right
	{
	public:
		static immutable structSize = cast(immutable)StructSize(2, 2);
		
		static struct Builder
		{
		public:
			this(SegmentBuilder* segment, int data, int pointers, int dataSize, short pointerCount)
			{
				b = StructBuilder(segment, data, pointers, dataSize, pointerCount);
			}
			
			Which which()
			{
				switch(b._getUshortField(6))
				{
					case 0: return Which.value;
					case 1: return Which.expression;
					default: return Which._NOT_IN_SCHEMA;
				}
			}
			
			
			auto asReader()
			{
				return b.asReader!Reader();
			}
			
			bool isValue()
			{
				return which() == Expression.Right.Which.value;
			}
			int getValue()
			{
				assert(which() == Expression.Right.Which.value, "Must check which() before get()ing a union member.");
				return b._getIntField(2);
			}
			void setValue(int value)
			{
				b._setShortField(6, cast(ushort)Expression.Right.Which.value);
				b._setIntField(2, value);
			}
			
			bool isExpression()
			{
				return which() == Expression.Right.Which.expression;
			}
			.Expression.Builder getExpression()
			{
				assert(which() == Expression.Right.Which.expression, "Must check which() before get()ing a union member.");
				return b._getPointerField!(.Expression)(1, null, 0);
			}
			void setExpression(.Expression.Reader value)
			{
				b._setShortField(6, cast(ushort)Expression.Right.Which.expression);
				b._setPointerField!(.Expression)(1, value);
			}
			.Expression.Builder initExpression()
			{
				b._setShortField(6, cast(ushort)Expression.Right.Which.expression);
				return b._initPointerField!(.Expression)(1, 0);
			}
			
		public:
			StructBuilder b;
		}
		
		static struct Reader
		{
		public:
			this(SegmentReader* segment, int data, int pointers, int dataSize, short pointerCount, int nestingLimit)
			{
				b = StructReader(segment, data, pointers, dataSize, pointerCount, nestingLimit);
			}
			
			Which which()
			{
				switch(b._getUshortField(6))
				{
					case 0: return Which.value;
					case 1: return Which.expression;
					default: return Which._NOT_IN_SCHEMA;
				}
			}
			
			bool isValue()
			{
				return which() == Expression.Right.Which.value;
			}
			int getValue()
			{
				assert(which() == Expression.Right.Which.value, "Must check which() before get()ing a union member.");
				return b._getIntField(2);
			}
			
			bool isExpression()
			{
				return which() == Expression.Right.Which.expression;
			}
			bool hasExpression()
			{
				return !b._pointerFieldIsNull(1);
			}
			.Expression.Reader getExpression()
			{
				assert(which() == Expression.Right.Which.expression, "Must check which() before get()ing a union member.");
				return b._getPointerField!(.Expression)(1, null, 0);
			}
			
		public:
			StructReader b;
		}
		
		enum Which : ushort
		{
			value,
			expression,
			_NOT_IN_SCHEMA,
		}
	}
	
}

struct EvaluationResult
{
public:
	static immutable structSize = cast(immutable)StructSize(1, 0);
	
	static struct Builder
	{
	public:
		this(SegmentBuilder* segment, int data, int pointers, int dataSize, short pointerCount)
		{
			b = StructBuilder(segment, data, pointers, dataSize, pointerCount);
		}
		
		
		auto asReader()
		{
			return b.asReader!Reader();
		}
		
		int getValue()
		{
			return b._getIntField(0);
		}
		void setValue(int value)
		{
			b._setIntField(0, value);
		}
		
	public:
		StructBuilder b;
	}
	
	static struct Reader
	{
	public:
		this(SegmentReader* segment, int data, int pointers, int dataSize, short pointerCount, int nestingLimit)
		{
			b = StructReader(segment, data, pointers, dataSize, pointerCount, nestingLimit);
		}
		
		int getValue()
		{
			return b._getIntField(0);
		}
		
	public:
		StructReader b;
	}
	
}

struct Schemas
{
public:
	__gshared static SegmentReader b_acf353ef75773376 = GeneratedClassSupport.decodeRawBytes([
	  0x0,0x0,0x0,0x0,0x5,0x0,0x6,0x0,
	  0x76,0x33,0x77,0x75,0xef,0x53,0xf3,0xac,
	  0xb,0x0,0x0,0x0,0x2,0x0,0x0,0x0,
	  0xda,0x9e,0xe,0xe7,0xc3,0xc4,0x2d,0xe1,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x15,0x0,0x0,0x0,0xaa,0x0,0x0,0x0,
	  0x1d,0x0,0x0,0x0,0x7,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x19,0x0,0x0,0x0,0x7f,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x65,0x76,0x61,0x6c,0x2e,0x63,0x61,0x70,
	  0x6e,0x70,0x3a,0x4f,0x70,0x65,0x72,0x61,
	  0x74,0x69,0x6f,0x6e,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0x14,0x0,0x0,0x0,0x1,0x0,0x2,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x35,0x0,0x0,0x0,0x22,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x2d,0x0,0x0,0x0,0x4a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x2,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x29,0x0,0x0,0x0,0x4a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x3,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x25,0x0,0x0,0x0,0x3a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x4,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x1d,0x0,0x0,0x0,0x42,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x61,0x64,0x64,0x0,0x0,0x0,0x0,0x0,
	  0x73,0x75,0x62,0x74,0x72,0x61,0x63,0x74,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x6d,0x75,0x6c,0x74,0x69,0x70,0x6c,0x79,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x64,0x69,0x76,0x69,0x64,0x65,0x0,0x0,
	  0x6d,0x6f,0x64,0x75,0x6c,0x75,0x73,0x0,
	]);
	__gshared static SegmentReader b_81d32418aae320bf = GeneratedClassSupport.decodeRawBytes([
	  0x0,0x0,0x0,0x0,0x5,0x0,0x6,0x0,
	  0xbf,0x20,0xe3,0xaa,0x18,0x24,0xd3,0x81,
	  0xb,0x0,0x0,0x0,0x1,0x0,0x2,0x0,
	  0xda,0x9e,0xe,0xe7,0xc3,0xc4,0x2d,0xe1,
	  0x2,0x0,0x7,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x15,0x0,0x0,0x0,0xb2,0x0,0x0,0x0,
	  0x1d,0x0,0x0,0x0,0x7,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x19,0x0,0x0,0x0,0xaf,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x65,0x76,0x61,0x6c,0x2e,0x63,0x61,0x70,
	  0x6e,0x70,0x3a,0x45,0x78,0x70,0x72,0x65,
	  0x73,0x73,0x69,0x6f,0x6e,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0xc,0x0,0x0,0x0,0x3,0x0,0x4,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x45,0x0,0x0,0x0,0x1a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x40,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x4c,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xec,0x8e,0x22,0xd8,0x33,0xc5,0x66,0x82,
	  0x49,0x0,0x0,0x0,0x2a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x2,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x6d,0x16,0x87,0x5b,0x16,0x67,0x75,0xec,
	  0x31,0x0,0x0,0x0,0x32,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x6f,0x70,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xf,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x76,0x33,0x77,0x75,0xef,0x53,0xf3,0xac,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xf,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x6c,0x65,0x66,0x74,0x0,0x0,0x0,0x0,
	  0x72,0x69,0x67,0x68,0x74,0x0,0x0,0x0,
	]);
	__gshared static SegmentReader b_8266c533d8228eec = GeneratedClassSupport.decodeRawBytes([
	  0x0,0x0,0x0,0x0,0x5,0x0,0x6,0x0,
	  0xec,0x8e,0x22,0xd8,0x33,0xc5,0x66,0x82,
	  0x16,0x0,0x0,0x0,0x1,0x0,0x2,0x0,
	  0xbf,0x20,0xe3,0xaa,0x18,0x24,0xd3,0x81,
	  0x2,0x0,0x7,0x0,0x1,0x0,0x2,0x0,
	  0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x15,0x0,0x0,0x0,0xda,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x19,0x0,0x0,0x0,0x77,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x65,0x76,0x61,0x6c,0x2e,0x63,0x61,0x70,
	  0x6e,0x70,0x3a,0x45,0x78,0x70,0x72,0x65,
	  0x73,0x73,0x69,0x6f,0x6e,0x2e,0x6c,0x65,
	  0x66,0x74,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x8,0x0,0x0,0x0,0x3,0x0,0x4,0x0,
	  0x0,0x0,0xff,0xff,0x1,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x1,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x29,0x0,0x0,0x0,0x32,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x24,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x30,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x1,0x0,0xfe,0xff,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x2,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x2d,0x0,0x0,0x0,0x5a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x2c,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x38,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x76,0x61,0x6c,0x75,0x65,0x0,0x0,0x0,
	  0x4,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x4,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x65,0x78,0x70,0x72,0x65,0x73,0x73,0x69,
	  0x6f,0x6e,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xbf,0x20,0xe3,0xaa,0x18,0x24,0xd3,0x81,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	]);
	__gshared static SegmentReader b_ec7567165b87166d = GeneratedClassSupport.decodeRawBytes([
	  0x0,0x0,0x0,0x0,0x5,0x0,0x6,0x0,
	  0x6d,0x16,0x87,0x5b,0x16,0x67,0x75,0xec,
	  0x16,0x0,0x0,0x0,0x1,0x0,0x2,0x0,
	  0xbf,0x20,0xe3,0xaa,0x18,0x24,0xd3,0x81,
	  0x2,0x0,0x7,0x0,0x1,0x0,0x2,0x0,
	  0x6,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x15,0x0,0x0,0x0,0xe2,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x19,0x0,0x0,0x0,0x77,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x65,0x76,0x61,0x6c,0x2e,0x63,0x61,0x70,
	  0x6e,0x70,0x3a,0x45,0x78,0x70,0x72,0x65,
	  0x73,0x73,0x69,0x6f,0x6e,0x2e,0x72,0x69,
	  0x67,0x68,0x74,0x0,0x0,0x0,0x0,0x0,
	  0x8,0x0,0x0,0x0,0x3,0x0,0x4,0x0,
	  0x0,0x0,0xff,0xff,0x2,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x3,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x29,0x0,0x0,0x0,0x32,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x24,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x30,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x1,0x0,0xfe,0xff,0x1,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x4,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x2d,0x0,0x0,0x0,0x5a,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x2c,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x38,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x76,0x61,0x6c,0x75,0x65,0x0,0x0,0x0,
	  0x4,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x4,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x65,0x78,0x70,0x72,0x65,0x73,0x73,0x69,
	  0x6f,0x6e,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xbf,0x20,0xe3,0xaa,0x18,0x24,0xd3,0x81,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x10,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	]);
	__gshared static SegmentReader b_a349c302d856d199 = GeneratedClassSupport.decodeRawBytes([
	  0x0,0x0,0x0,0x0,0x5,0x0,0x6,0x0,
	  0x99,0xd1,0x56,0xd8,0x2,0xc3,0x49,0xa3,
	  0xb,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0xda,0x9e,0xe,0xe7,0xc3,0xc4,0x2d,0xe1,
	  0x0,0x0,0x7,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x15,0x0,0x0,0x0,0xe2,0x0,0x0,0x0,
	  0x21,0x0,0x0,0x0,0x7,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x1d,0x0,0x0,0x0,0x3f,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x65,0x76,0x61,0x6c,0x2e,0x63,0x61,0x70,
	  0x6e,0x70,0x3a,0x45,0x76,0x61,0x6c,0x75,
	  0x61,0x74,0x69,0x6f,0x6e,0x52,0x65,0x73,
	  0x75,0x6c,0x74,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x1,0x0,0x1,0x0,
	  0x4,0x0,0x0,0x0,0x3,0x0,0x4,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x1,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0xd,0x0,0x0,0x0,0x32,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x8,0x0,0x0,0x0,0x3,0x0,0x1,0x0,
	  0x14,0x0,0x0,0x0,0x2,0x0,0x1,0x0,
	  0x76,0x61,0x6c,0x75,0x65,0x0,0x0,0x0,
	  0x4,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x4,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
	]);
}

