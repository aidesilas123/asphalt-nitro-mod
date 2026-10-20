###### Class com.tapjoy.internal.c1 (com.tapjoy.internal.c1)
.class public Lcom/tapjoy/internal/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:[C

.field public static final b:Lcom/tapjoy/internal/c1;


# instance fields
.field public final c:[B

.field public transient d:I

.field public transient e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/tapjoy/internal/c1;->a:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    new-instance v1, Lcom/tapjoy/internal/c1;

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/c1;-><init>([B)V

    sput-object v1, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    return-void

    :array_1a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/c1;->c:[B

    return-void
.end method


# virtual methods
.method public a(I)B
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/c1;->c:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lcom/tapjoy/internal/c1;->c:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v3, v2, :cond_25

    aget-byte v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lcom/tapjoy/internal/c1;->a:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public b(Lcom/tapjoy/internal/n;)V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/c1;->c:[B

    array-length v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/n;->e([BI)Lcom/tapjoy/internal/n;

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 9

    check-cast p1, Lcom/tapjoy/internal/c1;

    invoke-virtual {p0}, Lcom/tapjoy/internal/c1;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/tapjoy/internal/c1;->f()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v2, :cond_26

    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/c1;->a(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1, v4}, Lcom/tapjoy/internal/c1;->a(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    if-ne v5, v6, :cond_23

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_23
    if-ge v5, v6, :cond_2d

    goto :goto_2b

    :cond_26
    if-ne v0, v1, :cond_29

    goto :goto_2e

    :cond_29
    if-ge v0, v1, :cond_2d

    :goto_2b
    const/4 v3, -0x1

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x1

    :goto_2e
    return v3
.end method

.method public e(I[BII)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_28

    iget-object v2, p0, Lcom/tapjoy/internal/c1;->c:[B

    array-length v3, v2

    sub-int/2addr v3, p4

    if-gt p1, v3, :cond_28

    if-ltz p3, :cond_28

    array-length v3, p2

    sub-int/2addr v3, p4

    if-gt p3, v3, :cond_28

    sget-object v3, Lcom/tapjoy/internal/sa;->a:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    :goto_13
    if-ge v3, p4, :cond_24

    add-int v4, v3, p1

    aget-byte v4, v2, v4

    add-int v5, v3, p3

    aget-byte v5, p2, v5

    if-eq v4, v5, :cond_21

    const/4 p1, 0x0

    goto :goto_25

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_24
    const/4 p1, 0x1

    :goto_25
    if-eqz p1, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/c1;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    check-cast p1, Lcom/tapjoy/internal/c1;

    invoke-virtual {p1}, Lcom/tapjoy/internal/c1;->f()I

    move-result v1

    iget-object v3, p0, Lcom/tapjoy/internal/c1;->c:[B

    array-length v4, v3

    if-ne v1, v4, :cond_1c

    array-length v1, v3

    invoke-virtual {p1, v2, v3, v2, v1}, Lcom/tapjoy/internal/c1;->e(I[BII)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/c1;->c:[B

    array-length v0, v0

    return v0
.end method

.method public g()Lcom/tapjoy/internal/c1;
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/c1;->c:[B

    array-length v1, v0

    const/16 v2, 0x40

    if-gt v2, v1, :cond_17

    array-length v1, v0

    if-ne v2, v1, :cond_b

    return-object p0

    :cond_b
    new-array v1, v2, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/tapjoy/internal/c1;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/c1;-><init>([B)V

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex > length("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/c1;->c:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/c1;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_10

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/c1;->c:[B

    sget-object v2, Lcom/tapjoy/internal/sa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/tapjoy/internal/c1;->e:Ljava/lang/String;

    :goto_10
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/tapjoy/internal/c1;->d:I

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/c1;->c:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/c1;->d:I

    :goto_d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lcom/tapjoy/internal/c1;->c:[B

    array-length v0, v0

    if-nez v0, :cond_8

    const-string v0, "[size=0]"

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/tapjoy/internal/c1;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    const/4 v5, -0x1

    const/16 v6, 0x40

    if-ge v3, v1, :cond_3c

    if-ne v4, v6, :cond_1b

    goto :goto_40

    :cond_1b
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v8

    if-eqz v8, :cond_2d

    const/16 v8, 0xa

    if-eq v7, v8, :cond_2d

    const/16 v8, 0xd

    if-ne v7, v8, :cond_32

    :cond_2d
    const v8, 0xfffd

    if-ne v7, v8, :cond_34

    :cond_32
    const/4 v3, -0x1

    goto :goto_40

    :cond_34
    add-int/lit8 v4, v4, 0x1

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_13

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_40
    const-string v1, "\u2026]"

    const-string v4, "[size="

    const-string v7, "]"

    if-ne v3, v5, :cond_86

    iget-object v0, p0, Lcom/tapjoy/internal/c1;->c:[B

    array-length v0, v0

    if-gt v0, v6, :cond_63

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/c1;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_85

    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/c1;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tapjoy/internal/c1;->g()Lcom/tapjoy/internal/c1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/c1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_85
    return-object v0

    :cond_86
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\n"

    const-string v6, "\\n"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\r"

    const-string v6, "\\r"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_bf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/internal/c1;->c:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " text="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    :cond_bf
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_cc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
