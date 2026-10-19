###### Class com.google.protobuf.b2 (com.google.protobuf.b2)
.class final Lcom/google/protobuf/b2;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/b2$b;,
        Lcom/google/protobuf/b2$c;,
        Lcom/google/protobuf/b2$d;,
        Lcom/google/protobuf/b2$e;
    }
.end annotation


# static fields
.field private static final BOOLEAN_ARRAY_BASE_OFFSET:J

.field private static final BOOLEAN_ARRAY_INDEX_SCALE:J

.field private static final BUFFER_ADDRESS_OFFSET:J

.field private static final BYTE_ARRAY_ALIGNMENT:I

.field static final BYTE_ARRAY_BASE_OFFSET:J

.field private static final DOUBLE_ARRAY_BASE_OFFSET:J

.field private static final DOUBLE_ARRAY_INDEX_SCALE:J

.field private static final FLOAT_ARRAY_BASE_OFFSET:J

.field private static final FLOAT_ARRAY_INDEX_SCALE:J

.field private static final HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field private static final HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

.field private static final INT_ARRAY_BASE_OFFSET:J

.field private static final INT_ARRAY_INDEX_SCALE:J

.field private static final IS_ANDROID_32:Z

.field private static final IS_ANDROID_64:Z

.field static final IS_BIG_ENDIAN:Z

.field private static final LONG_ARRAY_BASE_OFFSET:J

.field private static final LONG_ARRAY_INDEX_SCALE:J

.field private static final MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

.field private static final MEMORY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final OBJECT_ARRAY_BASE_OFFSET:J

.field private static final OBJECT_ARRAY_INDEX_SCALE:J

.field private static final STRIDE:I = 0x8

.field private static final STRIDE_ALIGNMENT_MASK:I = 0x7

.field private static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-class v0, [Ljava/lang/Object;

    const-class v1, [D

    const-class v2, [F

    const-class v3, [J

    const-class v4, [I

    const-class v5, [Z

    invoke-static {}, Lcom/google/protobuf/b2;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v6

    sput-object v6, Lcom/google/protobuf/b2;->UNSAFE:Lsun/misc/Unsafe;

    invoke-static {}, Lcom/google/protobuf/d;->getMemoryClass()Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/google/protobuf/b2;->MEMORY_CLASS:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lcom/google/protobuf/b2;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    move-result v6

    sput-boolean v6, Lcom/google/protobuf/b2;->IS_ANDROID_64:Z

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lcom/google/protobuf/b2;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    move-result v6

    sput-boolean v6, Lcom/google/protobuf/b2;->IS_ANDROID_32:Z

    invoke-static {}, Lcom/google/protobuf/b2;->getMemoryAccessor()Lcom/google/protobuf/b2$e;

    move-result-object v6

    sput-object v6, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-static {}, Lcom/google/protobuf/b2;->supportsUnsafeByteBufferOperations()Z

    move-result v6

    sput-boolean v6, Lcom/google/protobuf/b2;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    invoke-static {}, Lcom/google/protobuf/b2;->supportsUnsafeArrayOperations()Z

    move-result v6

    sput-boolean v6, Lcom/google/protobuf/b2;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    const-class v6, [B

    invoke-static {v6}, Lcom/google/protobuf/b2;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v6

    int-to-long v6, v6

    sput-wide v6, Lcom/google/protobuf/b2;->BYTE_ARRAY_BASE_OFFSET:J

    invoke-static {v5}, Lcom/google/protobuf/b2;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v8

    int-to-long v8, v8

    sput-wide v8, Lcom/google/protobuf/b2;->BOOLEAN_ARRAY_BASE_OFFSET:J

    invoke-static {v5}, Lcom/google/protobuf/b2;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v5

    int-to-long v8, v5

    sput-wide v8, Lcom/google/protobuf/b2;->BOOLEAN_ARRAY_INDEX_SCALE:J

    invoke-static {v4}, Lcom/google/protobuf/b2;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v5

    int-to-long v8, v5

    sput-wide v8, Lcom/google/protobuf/b2;->INT_ARRAY_BASE_OFFSET:J

    invoke-static {v4}, Lcom/google/protobuf/b2;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/protobuf/b2;->INT_ARRAY_INDEX_SCALE:J

    invoke-static {v3}, Lcom/google/protobuf/b2;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/protobuf/b2;->LONG_ARRAY_BASE_OFFSET:J

    invoke-static {v3}, Lcom/google/protobuf/b2;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/google/protobuf/b2;->LONG_ARRAY_INDEX_SCALE:J

    invoke-static {v2}, Lcom/google/protobuf/b2;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/google/protobuf/b2;->FLOAT_ARRAY_BASE_OFFSET:J

    invoke-static {v2}, Lcom/google/protobuf/b2;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/protobuf/b2;->FLOAT_ARRAY_INDEX_SCALE:J

    invoke-static {v1}, Lcom/google/protobuf/b2;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/protobuf/b2;->DOUBLE_ARRAY_BASE_OFFSET:J

    invoke-static {v1}, Lcom/google/protobuf/b2;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/protobuf/b2;->DOUBLE_ARRAY_INDEX_SCALE:J

    invoke-static {v0}, Lcom/google/protobuf/b2;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/protobuf/b2;->OBJECT_ARRAY_BASE_OFFSET:J

    invoke-static {v0}, Lcom/google/protobuf/b2;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/protobuf/b2;->OBJECT_ARRAY_INDEX_SCALE:J

    invoke-static {}, Lcom/google/protobuf/b2;->bufferAddressField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/b2;->fieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/protobuf/b2;->BUFFER_ADDRESS_OFFSET:J

    const-wide/16 v0, 0x7

    and-long/2addr v0, v6

    long-to-int v1, v0

    sput v1, Lcom/google/protobuf/b2;->BYTE_ARRAY_ALIGNMENT:I

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_b1

    const/4 v0, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v0, 0x0

    :goto_b2
    sput-boolean v0, Lcom/google/protobuf/b2;->IS_BIG_ENDIAN:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;)V
    .registers 1

    invoke-static {p0}, Lcom/google/protobuf/b2;->logMissingMethod(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/reflect/Field;
    .registers 1

    invoke-static {}, Lcom/google/protobuf/b2;->bufferAddressField()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;J)B
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getByteBigEndian(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljava/lang/Object;J)B
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getByteLittleEndian(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic access$400(Ljava/lang/Object;JB)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/b2;->putByteBigEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Object;JB)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/b2;->putByteLittleEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/Object;J)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getBooleanBigEndian(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Ljava/lang/Object;J)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getBooleanLittleEndian(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Ljava/lang/Object;JZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/b2;->putBooleanBigEndian(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/Object;JZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/b2;->putBooleanLittleEndian(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static addressOffset(Ljava/nio/ByteBuffer;)J
    .registers 4

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->BUFFER_ADDRESS_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/b2$e;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/protobuf/b2;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static arrayBaseOffset(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/google/protobuf/b2;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/b2$e;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method private static arrayIndexScale(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/google/protobuf/b2;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/b2$e;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method private static bufferAddressField()Ljava/lang/reflect/Field;
    .registers 3

    invoke-static {}, Lcom/google/protobuf/d;->isOnAndroidDevice()Z

    move-result v0

    if-eqz v0, :cond_11

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return-object v0
.end method

.method static copyMemory(J[BJJ)V
    .registers 15

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/protobuf/b2$e;->copyMemory(J[BJJ)V

    return-void
.end method

.method static copyMemory([BJJJ)V
    .registers 15

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/protobuf/b2$e;->copyMemory([BJJJ)V

    return-void
.end method

.method static copyMemory([BJ[BJJ)V
    .registers 8

    long-to-int p2, p1

    long-to-int p1, p4

    long-to-int p4, p6

    invoke-static {p0, p2, p3, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, [B

    invoke-static {}, Lcom/google/protobuf/d;->isOnAndroidDevice()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    :try_start_a
    sget-object v1, Lcom/google/protobuf/b2;->MEMORY_CLASS:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v2

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v6, v8, v7

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    aput-object v9, v8, v4

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    aput-object v9, v6, v4

    aput-object v9, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7a
    .catchall {:try_start_a .. :try_end_7a} :catchall_7b

    return v7

    :catchall_7b
    return v2
.end method

.method private static field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_6

    :catchall_5
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method

.method private static fieldOffset(Ljava/lang/reflect/Field;)J
    .registers 3

    if-eqz p0, :cond_c

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    if-nez v0, :cond_7

    goto :goto_c

    :cond_7
    invoke-virtual {v0, p0}, Lcom/google/protobuf/b2$e;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_e

    :cond_c
    :goto_c
    const-wide/16 v0, -0x1

    :goto_e
    return-wide v0
.end method

.method private static firstDifferingByteIndexNativeEndian(JJ)I
    .registers 5

    sget-boolean v0, Lcom/google/protobuf/b2;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_a

    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    goto :goto_f

    :cond_a
    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    :goto_f
    shr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method static getBoolean(Ljava/lang/Object;J)Z
    .registers 4

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/b2$e;->getBoolean(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static getBoolean([ZJ)Z
    .registers 8

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->BOOLEAN_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/b2;->BOOLEAN_ARRAY_INDEX_SCALE:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/b2$e;->getBoolean(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private static getBooleanBigEndian(Ljava/lang/Object;J)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getByteBigEndian(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static getBooleanLittleEndian(Ljava/lang/Object;J)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/b2;->getByteLittleEndian(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static getByte(J)B
    .registers 3

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/b2$e;->getByte(J)B

    move-result p0

    return p0
.end method

.method static getByte(Ljava/lang/Object;J)B
    .registers 4

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/b2$e;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static getByte([BJ)B
    .registers 6

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/b2$e;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method private static getByteBigEndian(Ljava/lang/Object;J)B
    .registers 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static getByteLittleEndian(Ljava/lang/Object;J)B
    .registers 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method static getDouble(Ljava/lang/Object;J)D
    .registers 4

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/b2$e;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static getDouble([DJ)D
    .registers 8

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->DOUBLE_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/b2;->DOUBLE_ARRAY_INDEX_SCALE:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/b2$e;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static getFloat(Ljava/lang/Object;J)F
    .registers 4

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/b2$e;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static getFloat([FJ)F
    .registers 8

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->FLOAT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/b2;->FLOAT_ARRAY_INDEX_SCALE:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/b2$e;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static getInt(J)I
    .registers 3

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/b2$e;->getInt(J)I

    move-result p0

    return p0
.end method

.method static getInt(Ljava/lang/Object;J)I
    .registers 4

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/b2$e;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static getInt([IJ)I
    .registers 8

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->INT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/b2;->INT_ARRAY_INDEX_SCALE:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/b2$e;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static getLong(J)J
    .registers 3

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/b2$e;->getLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static getLong(Ljava/lang/Object;J)J
    .registers 4

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/b2$e;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static getLong([JJ)J
    .registers 8

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->LONG_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/b2;->LONG_ARRAY_INDEX_SCALE:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/b2$e;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getMemoryAccessor()Lcom/google/protobuf/b2$e;
    .registers 3

    sget-object v0, Lcom/google/protobuf/b2;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-static {}, Lcom/google/protobuf/d;->isOnAndroidDevice()Z

    move-result v2

    if-eqz v2, :cond_20

    sget-boolean v2, Lcom/google/protobuf/b2;->IS_ANDROID_64:Z

    if-eqz v2, :cond_16

    new-instance v1, Lcom/google/protobuf/b2$c;

    invoke-direct {v1, v0}, Lcom/google/protobuf/b2$c;-><init>(Lsun/misc/Unsafe;)V

    return-object v1

    :cond_16
    sget-boolean v2, Lcom/google/protobuf/b2;->IS_ANDROID_32:Z

    if-eqz v2, :cond_1f

    new-instance v1, Lcom/google/protobuf/b2$b;

    invoke-direct {v1, v0}, Lcom/google/protobuf/b2$b;-><init>(Lsun/misc/Unsafe;)V

    :cond_1f
    return-object v1

    :cond_20
    new-instance v1, Lcom/google/protobuf/b2$d;

    invoke-direct {v1, v0}, Lcom/google/protobuf/b2$d;-><init>(Lsun/misc/Unsafe;)V

    return-object v1
.end method

.method static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/b2$e;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getObject([Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->OBJECT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/b2;->OBJECT_ARRAY_INDEX_SCALE:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/b2$e;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/b2$e;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getUnsafe()Lsun/misc/Unsafe;
    .registers 1

    :try_start_0
    new-instance v0, Lcom/google/protobuf/b2$a;

    invoke-direct {v0}, Lcom/google/protobuf/b2$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_d

    :catchall_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method static hasUnsafeArrayOperations()Z
    .registers 1

    sget-boolean v0, Lcom/google/protobuf/b2;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return v0
.end method

.method static hasUnsafeByteBufferOperations()Z
    .registers 1

    sget-boolean v0, Lcom/google/protobuf/b2;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    return v0
.end method

.method static isAndroid64()Z
    .registers 1

    sget-boolean v0, Lcom/google/protobuf/b2;->IS_ANDROID_64:Z

    return v0
.end method

.method private static logMissingMethod(Ljava/lang/Throwable;)V
    .registers 5

    const-class v0, Lcom/google/protobuf/b2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method static mismatch([BI[BII)I
    .registers 15

    if-ltz p1, :cond_67

    if-ltz p3, :cond_67

    if-ltz p4, :cond_67

    add-int v0, p1, p4

    array-length v1, p0

    if-gt v0, v1, :cond_67

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_67

    const/4 v0, 0x0

    sget-boolean v1, Lcom/google/protobuf/b2;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v1, :cond_55

    sget v1, Lcom/google/protobuf/b2;->BYTE_ARRAY_ALIGNMENT:I

    add-int/2addr v1, p1

    and-int/lit8 v1, v1, 0x7

    :goto_1a
    if-ge v0, p4, :cond_30

    and-int/lit8 v2, v1, 0x7

    if-eqz v2, :cond_30

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_2b

    return v0

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_30
    sub-int v1, p4, v0

    and-int/lit8 v1, v1, -0x8

    add-int/2addr v1, v0

    :goto_35
    if-ge v0, v1, :cond_55

    sget-wide v2, Lcom/google/protobuf/b2;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v4, p1

    add-long/2addr v4, v2

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-static {p0, v4, v5}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    int-to-long v8, p3

    add-long/2addr v2, v8

    add-long/2addr v2, v6

    invoke-static {p2, v2, v3}, Lcom/google/protobuf/b2;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v6, v4, v2

    if-eqz v6, :cond_52

    invoke-static {v4, v5, v2, v3}, Lcom/google/protobuf/b2;->firstDifferingByteIndexNativeEndian(JJ)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :cond_52
    add-int/lit8 v0, v0, 0x8

    goto :goto_35

    :cond_55
    :goto_55
    if-ge v0, p4, :cond_65

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    add-int v2, p3, v0

    aget-byte v2, p2, v2

    if-eq v1, v2, :cond_62

    return v0

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_65
    const/4 p0, -0x1

    return p0

    :cond_67
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method static objectFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 3

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/b2$e;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method static putBoolean(Ljava/lang/Object;JZ)V
    .registers 5

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/b2$e;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static putBoolean([ZJZ)V
    .registers 9

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->BOOLEAN_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/b2;->BOOLEAN_ARRAY_INDEX_SCALE:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/b2$e;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method private static putBooleanBigEndian(Ljava/lang/Object;JZ)V
    .registers 4

    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/b2;->putByteBigEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static putBooleanLittleEndian(Ljava/lang/Object;JZ)V
    .registers 4

    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/b2;->putByteLittleEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method static putByte(JB)V
    .registers 4

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/b2$e;->putByte(JB)V

    return-void
.end method

.method static putByte(Ljava/lang/Object;JB)V
    .registers 5

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/b2$e;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method static putByte([BJB)V
    .registers 7

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/b2$e;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static putByteBigEndian(Ljava/lang/Object;JB)V
    .registers 8

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    not-int p1, p2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p0, v0, v1, p1}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static putByteLittleEndian(Ljava/lang/Object;JB)V
    .registers 8

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/b2;->getInt(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p0, v0, v1, p1}, Lcom/google/protobuf/b2;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static putDouble(Ljava/lang/Object;JD)V
    .registers 11

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/b2$e;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method static putDouble([DJD)V
    .registers 11

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->DOUBLE_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/b2;->DOUBLE_ARRAY_INDEX_SCALE:J

    mul-long p1, p1, v3

    add-long v2, v1, p1

    move-object v1, p0

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/b2$e;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method static putFloat(Ljava/lang/Object;JF)V
    .registers 5

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/b2$e;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method static putFloat([FJF)V
    .registers 9

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->FLOAT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/b2;->FLOAT_ARRAY_INDEX_SCALE:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/b2$e;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method static putInt(JI)V
    .registers 4

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/b2$e;->putInt(JI)V

    return-void
.end method

.method static putInt(Ljava/lang/Object;JI)V
    .registers 5

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/b2$e;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static putInt([IJI)V
    .registers 9

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->INT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/b2;->INT_ARRAY_INDEX_SCALE:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/b2$e;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static putLong(JJ)V
    .registers 5

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/b2$e;->putLong(JJ)V

    return-void
.end method

.method static putLong(Ljava/lang/Object;JJ)V
    .registers 11

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/b2$e;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static putLong([JJJ)V
    .registers 11

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->LONG_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/b2;->LONG_ARRAY_INDEX_SCALE:J

    mul-long p1, p1, v3

    add-long v2, v1, p1

    move-object v1, p0

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/b2$e;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/b2$e;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static putObject([Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 9

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    sget-wide v1, Lcom/google/protobuf/b2;->OBJECT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/b2;->OBJECT_ARRAY_INDEX_SCALE:J

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/b2$e;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private static supportsUnsafeArrayOperations()Z
    .registers 1

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/b2$e;->supportsUnsafeArrayOperations()Z

    move-result v0

    return v0
.end method

.method private static supportsUnsafeByteBufferOperations()Z
    .registers 1

    sget-object v0, Lcom/google/protobuf/b2;->MEMORY_ACCESSOR:Lcom/google/protobuf/b2$e;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/b2$e;->supportsUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

###### Class com.google.protobuf.b2.a (com.google.protobuf.b2$a)
.class Lcom/google/protobuf/b2$a;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/b2;->getUnsafe()Lsun/misc/Unsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Lsun/misc/Unsafe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/b2$a;->run()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method public run()Lsun/misc/Unsafe;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x0

    if-ge v3, v2, :cond_25

    aget-object v5, v1, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    return-object v0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_25
    return-object v4
.end method

###### Class com.google.protobuf.b2.b (com.google.protobuf.b2$b)
.class final Lcom/google/protobuf/b2$b;
.super Lcom/google/protobuf/b2$e;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final SMALL_ADDRESS_MASK:J = -0x1L


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/protobuf/b2$e;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method

.method private static smallAddress(J)I
    .registers 4

    const-wide/16 v0, -0x1

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method


# virtual methods
.method public copyMemory(J[BJJ)V
    .registers 8

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public copyMemory([BJJJ)V
    .registers 8

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getBoolean(Ljava/lang/Object;J)Z
    .registers 5

    sget-boolean v0, Lcom/google/protobuf/b2;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/b2;->access$600(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/b2;->access$700(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public getByte(J)B
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getByte(Ljava/lang/Object;J)B
    .registers 5

    sget-boolean v0, Lcom/google/protobuf/b2;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/b2;->access$200(Ljava/lang/Object;J)B

    move-result p1

    return p1

    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/b2;->access$300(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/Object;J)D
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/b2$e;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(Ljava/lang/Object;J)F
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/b2$e;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(J)I
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getLong(J)J
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p1

    :catch_6
    return-object v0
.end method

.method public putBoolean(Ljava/lang/Object;JZ)V
    .registers 6

    sget-boolean v0, Lcom/google/protobuf/b2;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/b2;->access$800(Ljava/lang/Object;JZ)V

    goto :goto_b

    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/b2;->access$900(Ljava/lang/Object;JZ)V

    :goto_b
    return-void
.end method

.method public putByte(JB)V
    .registers 4

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putByte(Ljava/lang/Object;JB)V
    .registers 6

    sget-boolean v0, Lcom/google/protobuf/b2;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/b2;->access$400(Ljava/lang/Object;JB)V

    goto :goto_b

    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/b2;->access$500(Ljava/lang/Object;JB)V

    :goto_b
    return-void
.end method

.method public putDouble(Ljava/lang/Object;JD)V
    .registers 12

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/b2$e;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public putFloat(Ljava/lang/Object;JF)V
    .registers 5

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/b2$e;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public putInt(JI)V
    .registers 4

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putLong(JJ)V
    .registers 5

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public supportsUnsafeByteBufferOperations()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.protobuf.b2.c (com.google.protobuf.b2$c)
.class final Lcom/google/protobuf/b2$c;
.super Lcom/google/protobuf/b2$e;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/protobuf/b2$e;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public copyMemory(J[BJJ)V
    .registers 8

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public copyMemory([BJJJ)V
    .registers 8

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getBoolean(Ljava/lang/Object;J)Z
    .registers 5

    sget-boolean v0, Lcom/google/protobuf/b2;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/b2;->access$600(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/b2;->access$700(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public getByte(J)B
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getByte(Ljava/lang/Object;J)B
    .registers 5

    sget-boolean v0, Lcom/google/protobuf/b2;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/b2;->access$200(Ljava/lang/Object;J)B

    move-result p1

    return p1

    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/b2;->access$300(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/Object;J)D
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/b2$e;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(Ljava/lang/Object;J)F
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/b2$e;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(J)I
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getLong(J)J
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p1

    :catch_6
    return-object v0
.end method

.method public putBoolean(Ljava/lang/Object;JZ)V
    .registers 6

    sget-boolean v0, Lcom/google/protobuf/b2;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/b2;->access$800(Ljava/lang/Object;JZ)V

    goto :goto_b

    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/b2;->access$900(Ljava/lang/Object;JZ)V

    :goto_b
    return-void
.end method

.method public putByte(JB)V
    .registers 4

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putByte(Ljava/lang/Object;JB)V
    .registers 6

    sget-boolean v0, Lcom/google/protobuf/b2;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/b2;->access$400(Ljava/lang/Object;JB)V

    goto :goto_b

    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/b2;->access$500(Ljava/lang/Object;JB)V

    :goto_b
    return-void
.end method

.method public putDouble(Ljava/lang/Object;JD)V
    .registers 12

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/b2$e;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public putFloat(Ljava/lang/Object;JF)V
    .registers 5

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/b2$e;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public putInt(JI)V
    .registers 4

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putLong(JJ)V
    .registers 5

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public supportsUnsafeByteBufferOperations()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.protobuf.b2.d (com.google.protobuf.b2$d)
.class final Lcom/google/protobuf/b2$d;
.super Lcom/google/protobuf/b2$e;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/protobuf/b2$e;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public copyMemory(J[BJJ)V
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/protobuf/b2;->BYTE_ARRAY_BASE_OFFSET:J

    add-long v6, v2, p4

    const/4 v2, 0x0

    move-wide v3, p1

    move-object v5, p3

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public copyMemory([BJJJ)V
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/protobuf/b2;->BYTE_ARRAY_BASE_OFFSET:J

    add-long v3, v2, p2

    const/4 v5, 0x0

    move-object v2, p1

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public getBoolean(Ljava/lang/Object;J)Z
    .registers 5

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public getByte(J)B
    .registers 4

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/Object;J)B
    .registers 5

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/Object;J)D
    .registers 5

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(Ljava/lang/Object;J)F
    .registers 5

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    return p1
.end method

.method public getInt(J)I
    .registers 4

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p1

    return p1
.end method

.method public getLong(J)J
    .registers 4

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1, p1}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/protobuf/b2$e;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/Object;JZ)V
    .registers 6

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public putByte(JB)V
    .registers 5

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    return-void
.end method

.method public putByte(Ljava/lang/Object;JB)V
    .registers 6

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public putDouble(Ljava/lang/Object;JD)V
    .registers 12

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method public putFloat(Ljava/lang/Object;JF)V
    .registers 6

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method public putInt(JI)V
    .registers 5

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(JI)V

    return-void
.end method

.method public putLong(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putLong(JJ)V

    return-void
.end method

.method public supportsUnsafeArrayOperations()Z
    .registers 11

    const-class v0, Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/protobuf/b2$e;->supportsUnsafeArrayOperations()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getByte"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putByte"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v6, v8, v7

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getBoolean"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v6, v8, v7

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putBoolean"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v6, v8, v7

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getFloat"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v6, v8, v7

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putFloat"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v6, v8, v7

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getDouble"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v6, v8, v7

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putDouble"

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v0, v5, v2

    aput-object v6, v5, v7

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v4

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7d
    .catchall {:try_start_a .. :try_end_7d} :catchall_7e

    return v7

    :catchall_7e
    move-exception v0

    invoke-static {v0}, Lcom/google/protobuf/b2;->access$000(Ljava/lang/Throwable;)V

    return v2
.end method

.method public supportsUnsafeByteBufferOperations()Z
    .registers 11

    const-class v0, Ljava/lang/Object;

    const-string v1, "copyMemory"

    invoke-super {p0}, Lcom/google/protobuf/b2$e;->supportsUnsafeByteBufferOperations()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    return v3

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getByte"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "putByte"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v7, v8, v3

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "getInt"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v7, v8, v3

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "putInt"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v7, v8, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "getLong"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v7, v8, v3

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "putLong"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v7, v8, v3

    aput-object v7, v8, v5

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v7, v8, v3

    aput-object v7, v8, v5

    aput-object v7, v8, v6

    invoke-virtual {v2, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Class;

    aput-object v0, v8, v3

    aput-object v7, v8, v5

    aput-object v0, v8, v6

    aput-object v7, v8, v4

    const/4 v0, 0x4

    aput-object v7, v8, v0

    invoke-virtual {v2, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_73
    .catchall {:try_start_c .. :try_end_73} :catchall_74

    return v5

    :catchall_74
    move-exception v0

    invoke-static {v0}, Lcom/google/protobuf/b2;->access$000(Ljava/lang/Throwable;)V

    return v3
.end method

###### Class com.google.protobuf.b2.e (com.google.protobuf.b2$e)
.class abstract Lcom/google/protobuf/b2$e;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# instance fields
.field unsafe:Lsun/misc/Unsafe;


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public final arrayBaseOffset(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public final arrayIndexScale(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public abstract copyMemory(J[BJJ)V
.end method

.method public abstract copyMemory([BJJJ)V
.end method

.method public abstract getBoolean(Ljava/lang/Object;J)Z
.end method

.method public abstract getByte(J)B
.end method

.method public abstract getByte(Ljava/lang/Object;J)B
.end method

.method public abstract getDouble(Ljava/lang/Object;J)D
.end method

.method public abstract getFloat(Ljava/lang/Object;J)F
.end method

.method public abstract getInt(J)I
.end method

.method public final getInt(Ljava/lang/Object;J)I
    .registers 5

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    return p1
.end method

.method public abstract getLong(J)J
.end method

.method public final getLong(Ljava/lang/Object;J)J
    .registers 5

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
.end method

.method public final objectFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 4

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract putBoolean(Ljava/lang/Object;JZ)V
.end method

.method public abstract putByte(JB)V
.end method

.method public abstract putByte(Ljava/lang/Object;JB)V
.end method

.method public abstract putDouble(Ljava/lang/Object;JD)V
.end method

.method public abstract putFloat(Ljava/lang/Object;JF)V
.end method

.method public abstract putInt(JI)V
.end method

.method public final putInt(Ljava/lang/Object;JI)V
    .registers 6

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public abstract putLong(JJ)V
.end method

.method public final putLong(Ljava/lang/Object;JJ)V
    .registers 12

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public supportsUnsafeArrayOperations()Z
    .registers 11

    const-class v0, Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    :cond_8
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "objectFieldOffset"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/reflect/Field;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayBaseOffset"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayIndexScale"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getInt"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putInt"

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getLong"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putLong"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    aput-object v7, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getObject"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v7, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putObject"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v0, v6, v2

    aput-object v7, v6, v4

    aput-object v0, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7c
    .catchall {:try_start_8 .. :try_end_7c} :catchall_7d

    return v4

    :catchall_7d
    move-exception v0

    invoke-static {v0}, Lcom/google/protobuf/b2;->access$000(Ljava/lang/Throwable;)V

    return v2
.end method

.method public supportsUnsafeByteBufferOperations()Z
    .registers 7

    iget-object v0, p0, Lcom/google/protobuf/b2$e;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getLong"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/protobuf/b2;->access$100()Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2e

    if-nez v0, :cond_2d

    return v1

    :cond_2d
    return v3

    :catchall_2e
    move-exception v0

    invoke-static {v0}, Lcom/google/protobuf/b2;->access$000(Ljava/lang/Throwable;)V

    return v1
.end method
