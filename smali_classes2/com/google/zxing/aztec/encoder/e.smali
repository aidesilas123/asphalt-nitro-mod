###### Class com.google.zxing.aztec.encoder.e (com.google.zxing.aztec.encoder.e)
.class final Lcom/google/zxing/aztec/encoder/e;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field static final a:Lcom/google/zxing/aztec/encoder/e;


# instance fields
.field private final b:I

.field private final c:Lcom/google/zxing/aztec/encoder/f;

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/zxing/aztec/encoder/e;

    sget-object v1, Lcom/google/zxing/aztec/encoder/f;->a:Lcom/google/zxing/aztec/encoder/f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/f;III)V

    sput-object v0, Lcom/google/zxing/aztec/encoder/e;->a:Lcom/google/zxing/aztec/encoder/e;

    return-void
.end method

.method private constructor <init>(Lcom/google/zxing/aztec/encoder/f;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/e;->c:Lcom/google/zxing/aztec/encoder/f;

    iput p2, p0, Lcom/google/zxing/aztec/encoder/e;->b:I

    iput p3, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    iput p4, p0, Lcom/google/zxing/aztec/encoder/e;->e:I

    invoke-static {p3}, Lcom/google/zxing/aztec/encoder/e;->c(I)I

    move-result p1

    iput p1, p0, Lcom/google/zxing/aztec/encoder/e;->f:I

    return-void
.end method

.method private static c(I)I
    .registers 2

    const/16 v0, 0x3e

    if-le p0, v0, :cond_7

    const/16 p0, 0x15

    return p0

    :cond_7
    const/16 v0, 0x1f

    if-le p0, v0, :cond_e

    const/16 p0, 0x14

    return p0

    :cond_e
    if-lez p0, :cond_13

    const/16 p0, 0xa

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method a(I)Lcom/google/zxing/aztec/encoder/e;
    .registers 8

    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/e;->c:Lcom/google/zxing/aztec/encoder/f;

    iget v1, p0, Lcom/google/zxing/aztec/encoder/e;->b:I

    iget v2, p0, Lcom/google/zxing/aztec/encoder/e;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_d

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1f

    :cond_d
    sget-object v4, Lcom/google/zxing/aztec/encoder/c;->b:[[I

    aget-object v1, v4, v1

    aget v1, v1, v3

    const v4, 0xffff

    and-int/2addr v4, v1

    shr-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v4, v1}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    move-result-object v0

    add-int/2addr v2, v1

    const/4 v1, 0x0

    :cond_1f
    iget v3, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    if-eqz v3, :cond_32

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_28

    goto :goto_32

    :cond_28
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_2f

    const/16 v4, 0x9

    goto :goto_34

    :cond_2f
    const/16 v4, 0x8

    goto :goto_34

    :cond_32
    :goto_32
    const/16 v4, 0x12

    :goto_34
    new-instance v5, Lcom/google/zxing/aztec/encoder/e;

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v4

    invoke-direct {v5, v0, v1, v3, v2}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/f;III)V

    iget v0, v5, Lcom/google/zxing/aztec/encoder/e;->d:I

    const/16 v1, 0x81e

    if-ne v0, v1, :cond_48

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v5, p1}, Lcom/google/zxing/aztec/encoder/e;->d(I)Lcom/google/zxing/aztec/encoder/e;

    move-result-object v5

    :cond_48
    return-object v5
.end method

.method b(I)Lcom/google/zxing/aztec/encoder/e;
    .registers 9

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/aztec/encoder/e;->j(II)Lcom/google/zxing/aztec/encoder/e;

    move-result-object v2

    iget-object v2, v2, Lcom/google/zxing/aztec/encoder/e;->c:Lcom/google/zxing/aztec/encoder/f;

    const/4 v3, 0x3

    if-gez p1, :cond_10

    invoke-virtual {v2, v1, v3}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    move-result-object p1

    goto :goto_3a

    :cond_10
    const v4, 0xf423f

    if-gt p1, v4, :cond_45

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length v4, p1

    invoke-virtual {v2, v4, v3}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    move-result-object v2

    array-length v4, p1

    const/4 v5, 0x0

    :goto_26
    if-ge v5, v4, :cond_35

    aget-byte v6, p1, v5

    add-int/lit8 v6, v6, -0x30

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v6, v0}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_35
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v3, p1

    move-object p1, v2

    :goto_3a
    new-instance v0, Lcom/google/zxing/aztec/encoder/e;

    iget v2, p0, Lcom/google/zxing/aztec/encoder/e;->b:I

    iget v4, p0, Lcom/google/zxing/aztec/encoder/e;->e:I

    add-int/2addr v4, v3

    invoke-direct {v0, p1, v2, v1, v4}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/f;III)V

    return-object v0

    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ECI code must be between 0 and 999999"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method d(I)Lcom/google/zxing/aztec/encoder/e;
    .registers 6

    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/e;->c:Lcom/google/zxing/aztec/encoder/f;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, v0}, Lcom/google/zxing/aztec/encoder/f;->b(II)Lcom/google/zxing/aztec/encoder/f;

    move-result-object p1

    new-instance v0, Lcom/google/zxing/aztec/encoder/e;

    iget v1, p0, Lcom/google/zxing/aztec/encoder/e;->b:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/zxing/aztec/encoder/e;->e:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/f;III)V

    return-object v0
.end method

.method e()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    return v0
.end method

.method f()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->e:I

    return v0
.end method

.method g()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->b:I

    return v0
.end method

.method h(Lcom/google/zxing/aztec/encoder/e;)Z
    .registers 5

    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->e:I

    sget-object v1, Lcom/google/zxing/aztec/encoder/c;->b:[[I

    iget v2, p0, Lcom/google/zxing/aztec/encoder/e;->b:I

    aget-object v1, v1, v2

    iget v2, p1, Lcom/google/zxing/aztec/encoder/e;->b:I

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    iget v2, p1, Lcom/google/zxing/aztec/encoder/e;->d:I

    if-ge v1, v2, :cond_1c

    iget v1, p1, Lcom/google/zxing/aztec/encoder/e;->f:I

    iget v2, p0, Lcom/google/zxing/aztec/encoder/e;->f:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_22

    :cond_1c
    if-le v1, v2, :cond_22

    if-lez v2, :cond_22

    add-int/lit8 v0, v0, 0xa

    :cond_22
    :goto_22
    iget p1, p1, Lcom/google/zxing/aztec/encoder/e;->e:I

    if-gt v0, p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    return p1
.end method

.method i(II)Lcom/google/zxing/aztec/encoder/e;
    .registers 7

    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->e:I

    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/e;->c:Lcom/google/zxing/aztec/encoder/f;

    iget v2, p0, Lcom/google/zxing/aztec/encoder/e;->b:I

    if-eq p1, v2, :cond_19

    sget-object v3, Lcom/google/zxing/aztec/encoder/c;->b:[[I

    aget-object v2, v3, v2

    aget v2, v2, p1

    const v3, 0xffff

    and-int/2addr v3, v2

    shr-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v3, v2}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    move-result-object v1

    add-int/2addr v0, v2

    :cond_19
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1e

    const/4 v2, 0x4

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x5

    :goto_1f
    invoke-virtual {v1, p2, v2}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    move-result-object p2

    new-instance v1, Lcom/google/zxing/aztec/encoder/e;

    const/4 v3, 0x0

    add-int/2addr v0, v2

    invoke-direct {v1, p2, p1, v3, v0}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/f;III)V

    return-object v1
.end method

.method j(II)Lcom/google/zxing/aztec/encoder/e;
    .registers 8

    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/e;->c:Lcom/google/zxing/aztec/encoder/f;

    iget v1, p0, Lcom/google/zxing/aztec/encoder/e;->b:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    const/4 v3, 0x4

    goto :goto_b

    :cond_a
    const/4 v3, 0x5

    :goto_b
    sget-object v4, Lcom/google/zxing/aztec/encoder/c;->d:[[I

    aget-object v1, v4, v1

    aget p1, v1, p1

    invoke-virtual {v0, p1, v3}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/google/zxing/aztec/encoder/f;->a(II)Lcom/google/zxing/aztec/encoder/f;

    move-result-object p1

    new-instance p2, Lcom/google/zxing/aztec/encoder/e;

    iget v0, p0, Lcom/google/zxing/aztec/encoder/e;->b:I

    const/4 v1, 0x0

    iget v4, p0, Lcom/google/zxing/aztec/encoder/e;->e:I

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    invoke-direct {p2, p1, v0, v1, v4}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/f;III)V

    return-object p2
.end method

.method k([B)Lcom/google/zxing/common/a;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/google/zxing/aztec/encoder/e;->d(I)Lcom/google/zxing/aztec/encoder/e;

    move-result-object v1

    iget-object v1, v1, Lcom/google/zxing/aztec/encoder/e;->c:Lcom/google/zxing/aztec/encoder/f;

    :goto_c
    if-eqz v1, :cond_16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/zxing/aztec/encoder/f;->d()Lcom/google/zxing/aztec/encoder/f;

    move-result-object v1

    goto :goto_c

    :cond_16
    new-instance v1, Lcom/google/zxing/common/a;

    invoke-direct {v1}, Lcom/google/zxing/common/a;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_21
    if-ltz v2, :cond_2f

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/f;

    invoke-virtual {v3, v1, p1}, Lcom/google/zxing/aztec/encoder/f;->c(Lcom/google/zxing/common/a;[B)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    :cond_2f
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/google/zxing/aztec/encoder/c;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/google/zxing/aztec/encoder/e;->b:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/zxing/aztec/encoder/e;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/zxing/aztec/encoder/e;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s bits=%d bytes=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
