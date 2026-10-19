###### Class com.google.common.hash.LittleEndianByteArray (com.google.common.hash.LittleEndianByteArray)
.class final Lcom/google/common/hash/LittleEndianByteArray;
.super Ljava/lang/Object;
.source "LittleEndianByteArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;,
        Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;,
        Lcom/google/common/hash/LittleEndianByteArray$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/hash/LittleEndianByteArray$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->a:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    :try_start_2
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "amd64"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->a:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    goto :goto_21

    :cond_1f
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->b:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_21

    :catchall_21
    :cond_21
    :goto_21
    sput-object v0, Lcom/google/common/hash/LittleEndianByteArray;->a:Lcom/google/common/hash/LittleEndianByteArray$b;

    return-void
.end method

.method static a([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static b([BI)J
    .registers 3

    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray;->a:Lcom/google/common/hash/LittleEndianByteArray$b;

    invoke-interface {v0, p0, p1}, Lcom/google/common/hash/LittleEndianByteArray$b;->a([BI)J

    move-result-wide p0

    return-wide p0
.end method

.method static c([BII)J
    .registers 10

    const/16 v0, 0x8

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, p2, :cond_1a

    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1a
    return-wide v0
.end method

###### Class com.google.common.hash.LittleEndianByteArray.JavaLittleEndianBytes (com.google.common.hash.LittleEndianByteArray$JavaLittleEndianBytes)
.class abstract enum Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
.super Ljava/lang/Enum;
.source "LittleEndianByteArray.java"

# interfaces
.implements Lcom/google/common/hash/LittleEndianByteArray$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "JavaLittleEndianBytes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;",
        ">;",
        "Lcom/google/common/hash/LittleEndianByteArray$b;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

.field private static final synthetic b:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->a:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->e()[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->b:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    sget-object v1, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->a:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .registers 2

    const-class v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .registers 1

    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->b:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    invoke-virtual {v0}, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-object v0
.end method

###### Class com.google.common.hash.LittleEndianByteArray.JavaLittleEndianBytes.a (com.google.common.hash.LittleEndianByteArray$JavaLittleEndianBytes$a)
.class final enum Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$a;
.super Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
.source "LittleEndianByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;-><init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray$a;)V

    return-void
.end method


# virtual methods
.method public a([BI)J
    .registers 12

    add-int/lit8 v0, p2, 0x7

    aget-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-byte v3, p1, v0

    add-int/lit8 v0, p2, 0x4

    aget-byte v4, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget-byte v5, p1, v0

    add-int/lit8 v0, p2, 0x2

    aget-byte v6, p1, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte v7, p1, v0

    aget-byte v8, p1, p2

    invoke-static/range {v1 .. v8}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide p1

    return-wide p1
.end method

###### Class com.google.common.hash.LittleEndianByteArray.UnsafeByteArray (com.google.common.hash.LittleEndianByteArray$UnsafeByteArray)
.class abstract enum Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
.super Ljava/lang/Enum;
.source "LittleEndianByteArray.java"

# interfaces
.implements Lcom/google/common/hash/LittleEndianByteArray$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "UnsafeByteArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;",
        ">;",
        "Lcom/google/common/hash/LittleEndianByteArray$b;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

.field public static final enum b:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

.field private static final c:Lsun/misc/Unsafe;

.field private static final d:I

.field private static final synthetic e:[Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-class v0, [B

    new-instance v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$a;

    const-string v2, "UNSAFE_LITTLE_ENDIAN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->a:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    new-instance v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$b;

    const-string v2, "UNSAFE_BIG_ENDIAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->b:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->e()[Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    move-result-object v1

    sput-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->e:[Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->h()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->c:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->d:I

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v3, :cond_2f

    return-void

    :cond_2f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    sget-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->a:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->b:Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic f()I
    .registers 1

    sget v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->d:I

    return v0
.end method

.method static synthetic g()Lsun/misc/Unsafe;
    .registers 1

    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->c:Lsun/misc/Unsafe;

    return-object v0
.end method

.method private static h()Lsun/misc/Unsafe;
    .registers 3

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    :try_start_5
    new-instance v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$c;

    invoke-direct {v0}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$c;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_10
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
    .registers 2

    const-class v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
    .registers 1

    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->e:[Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    invoke-virtual {v0}, [Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;

    return-object v0
.end method

###### Class com.google.common.hash.LittleEndianByteArray.UnsafeByteArray.a (com.google.common.hash.LittleEndianByteArray$UnsafeByteArray$a)
.class final enum Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$a;
.super Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
.source "LittleEndianByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;-><init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray$a;)V

    return-void
.end method


# virtual methods
.method public a([BI)J
    .registers 8

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->g()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->f()I

    move-result p2

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1
.end method

###### Class com.google.common.hash.LittleEndianByteArray.UnsafeByteArray.b (com.google.common.hash.LittleEndianByteArray$UnsafeByteArray$b)
.class final enum Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$b;
.super Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
.source "LittleEndianByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;-><init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray$a;)V

    return-void
.end method


# virtual methods
.method public a([BI)J
    .registers 8

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->g()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->f()I

    move-result p2

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    return-wide p1
.end method

###### Class com.google.common.hash.LittleEndianByteArray.UnsafeByteArray.c (com.google.common.hash.LittleEndianByteArray$UnsafeByteArray$c)
.class Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$c;
.super Ljava/lang/Object;
.source "LittleEndianByteArray.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->h()Lsun/misc/Unsafe;
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
.method public a()Lsun/misc/Unsafe;
    .registers 7
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
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Ljava/lang/NoSuchFieldError;

    const-string v1, "the Unsafe"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$c;->a()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.hash.LittleEndianByteArray.a (com.google.common.hash.LittleEndianByteArray$a)
.class synthetic Lcom/google/common/hash/LittleEndianByteArray$a;
.super Ljava/lang/Object;
.source "LittleEndianByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.hash.LittleEndianByteArray.b (com.google.common.hash.LittleEndianByteArray$b)
.class interface abstract Lcom/google/common/hash/LittleEndianByteArray$b;
.super Ljava/lang/Object;
.source "LittleEndianByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "b"
.end annotation


# virtual methods
.method public abstract a([BI)J
.end method
