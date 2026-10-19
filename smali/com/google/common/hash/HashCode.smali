###### Class com.google.common.hash.HashCode (com.google.common.hash.HashCode)
.class public abstract Lcom/google/common/hash/HashCode;
.super Ljava/lang/Object;
.source "HashCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/HashCode$a;,
        Lcom/google/common/hash/HashCode$c;,
        Lcom/google/common/hash/HashCode$b;
    }
.end annotation


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/HashCode;->a:[C

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBytes([B)Lcom/google/common/hash/HashCode;
    .registers 3

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const-string v0, "A HashCode must contain at least 1 byte."

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Lcom/google/common/hash/HashCode;->i([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public static fromInt(I)Lcom/google/common/hash/HashCode;
    .registers 2

    new-instance v0, Lcom/google/common/hash/HashCode$b;

    invoke-direct {v0, p0}, Lcom/google/common/hash/HashCode$b;-><init>(I)V

    return-object v0
.end method

.method public static fromLong(J)Lcom/google/common/hash/HashCode;
    .registers 3

    new-instance v0, Lcom/google/common/hash/HashCode$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/HashCode$c;-><init>(J)V

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/common/hash/HashCode;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v4, "input string (%s) must have at least 2 characters"

    invoke-static {v0, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/2addr v0, v3

    if-nez v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const-string v0, "input string (%s) must have an even number of characters"

    invoke-static {v1, v0, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v3

    new-array v0, v0, [B

    :goto_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_49

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/common/hash/HashCode;->g(C)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/common/hash/HashCode;->g(C)I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_26

    :cond_49
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->i([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method private static g(C)I
    .registers 4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_16

    const/16 v1, 0x66

    if-gt p0, v1, :cond_16

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Illegal hexadecimal character: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static i([B)Lcom/google/common/hash/HashCode;
    .registers 2

    new-instance v0, Lcom/google/common/hash/HashCode$a;

    invoke-direct {v0, p0}, Lcom/google/common/hash/HashCode$a;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract c()[B
.end method

.method public abstract d()I
.end method

.method public abstract e()J
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/common/hash/HashCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    check-cast p1, Lcom/google/common/hash/HashCode;

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->f()I

    move-result v2

    if-ne v0, v2, :cond_18

    invoke-virtual {p0, p1}, Lcom/google/common/hash/HashCode;->h(Lcom/google/common/hash/HashCode;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public abstract f()I
.end method

.method abstract h(Lcom/google/common/hash/HashCode;)Z
.end method

.method public final hashCode()I
    .registers 6

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->f()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->d()I

    move-result v0

    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->j()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    :goto_17
    array-length v3, v0

    if-ge v2, v3, :cond_25

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_25
    return v1
.end method

.method j()[B
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public abstract k()J
.end method

.method public m([BII)I
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->f()I

    move-result p3

    div-int/lit8 p3, p3, 0x8

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->min([I)I

    move-result p3

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/HashCode;->n([BII)V

    return p3
.end method

.method abstract n([BII)V
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->j()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_27

    aget-byte v4, v0, v3

    sget-object v5, Lcom/google/common/hash/HashCode;->a:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.hash.HashCode.a (com.google.common.hash.HashCode$a)
.class final Lcom/google/common/hash/HashCode$a;
.super Lcom/google/common/hash/HashCode;
.source "HashCode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final b:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    return-void
.end method


# virtual methods
.method public c()[B
    .registers 2

    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public d()I
    .registers 6

    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-lt v1, v4, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    array-length v0, v0

    const-string v4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes)."

    invoke-static {v1, v4, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public e()J
    .registers 4

    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    array-length v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    array-length v0, v0

    const-string v2, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes)."

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode$a;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method h(Lcom/google/common/hash/HashCode;)Z
    .registers 8

    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    array-length v0, v0

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->j()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_f
    iget-object v4, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    array-length v5, v4

    if-ge v1, v5, :cond_25

    aget-byte v4, v4, v1

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->j()[B

    move-result-object v5

    aget-byte v5, v5, v1

    if-ne v4, v5, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    and-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_25
    return v3
.end method

.method j()[B
    .registers 2

    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    return-object v0
.end method

.method public k()J
    .registers 8

    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/4 v2, 0x1

    :goto_9
    iget-object v3, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    array-length v3, v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_23

    iget-object v3, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    aget-byte v3, v3, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_23
    return-wide v0
.end method

.method n([BII)V
    .registers 6

    iget-object v0, p0, Lcom/google/common/hash/HashCode$a;->b:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

###### Class com.google.common.hash.HashCode.b (com.google.common.hash.HashCode$b)
.class final Lcom/google/common/hash/HashCode$b;
.super Lcom/google/common/hash/HashCode;
.source "HashCode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final b:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    iput p1, p0, Lcom/google/common/hash/HashCode$b;->b:I

    return-void
.end method


# virtual methods
.method public c()[B
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget v1, p0, Lcom/google/common/hash/HashCode$b;->b:I

    int-to-byte v2, v1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/common/hash/HashCode$b;->b:I

    return v0
.end method

.method public e()J
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this HashCode only has 32 bits; cannot create a long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method h(Lcom/google/common/hash/HashCode;)Z
    .registers 3

    iget v0, p0, Lcom/google/common/hash/HashCode$b;->b:I

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->d()I

    move-result p1

    if-ne v0, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public k()J
    .registers 3

    iget v0, p0, Lcom/google/common/hash/HashCode$b;->b:I

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method n([BII)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_10

    add-int v1, p2, v0

    iget v2, p0, Lcom/google/common/hash/HashCode$b;->b:I

    mul-int/lit8 v3, v0, 0x8

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

###### Class com.google.common.hash.HashCode.c (com.google.common.hash.HashCode$c)
.class final Lcom/google/common/hash/HashCode$c;
.super Lcom/google/common/hash/HashCode;
.source "HashCode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final b:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    iput-wide p1, p0, Lcom/google/common/hash/HashCode$c;->b:J

    return-void
.end method


# virtual methods
.method public c()[B
    .registers 7

    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$c;->b:J

    long-to-int v4, v2

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v1, v5

    shr-long v4, v2, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x1

    aput-byte v0, v1, v4

    const/16 v0, 0x10

    shr-long v4, v2, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x2

    aput-byte v0, v1, v4

    const/16 v0, 0x18

    shr-long v4, v2, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x3

    aput-byte v0, v1, v4

    const/16 v0, 0x20

    shr-long v4, v2, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x4

    aput-byte v0, v1, v4

    const/16 v0, 0x28

    shr-long v4, v2, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x5

    aput-byte v0, v1, v4

    const/16 v0, 0x30

    shr-long v4, v2, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v4, 0x6

    aput-byte v0, v1, v4

    const/16 v0, 0x38

    shr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    return-object v1
.end method

.method public d()I
    .registers 3

    iget-wide v0, p0, Lcom/google/common/hash/HashCode$c;->b:J

    long-to-int v1, v0

    return v1
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/hash/HashCode$c;->b:J

    return-wide v0
.end method

.method public f()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method h(Lcom/google/common/hash/HashCode;)Z
    .registers 6

    iget-wide v0, p0, Lcom/google/common/hash/HashCode$c;->b:J

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->e()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public k()J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/hash/HashCode$c;->b:J

    return-wide v0
.end method

.method n([BII)V
    .registers 9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_11

    add-int v1, p2, v0

    iget-wide v2, p0, Lcom/google/common/hash/HashCode$c;->b:J

    mul-int/lit8 v4, v0, 0x8

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method
