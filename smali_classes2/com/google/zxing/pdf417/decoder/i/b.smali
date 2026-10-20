###### Class com.google.zxing.pdf417.decoder.i.b (com.google.zxing.pdf417.decoder.i.b)
.class public final Lcom/google/zxing/pdf417/decoder/i/b;
.super Ljava/lang/Object;
.source "ModulusGF.java"


# static fields
.field public static final a:Lcom/google/zxing/pdf417/decoder/i/b;


# instance fields
.field private final b:[I

.field private final c:[I

.field private final d:Lcom/google/zxing/pdf417/decoder/i/c;

.field private final e:Lcom/google/zxing/pdf417/decoder/i/c;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/zxing/pdf417/decoder/i/b;

    const/16 v1, 0x3a1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/i/b;-><init>(II)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/i/b;->a:Lcom/google/zxing/pdf417/decoder/i/b;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/pdf417/decoder/i/b;->f:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/b;->b:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/b;->c:[I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_11
    if-ge v2, p1, :cond_1d

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/i/b;->b:[I

    aput v3, v4, v2

    mul-int v3, v3, p2

    rem-int/2addr v3, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    const/4 p2, 0x0

    :goto_1e
    add-int/lit8 v2, p1, -0x1

    if-ge p2, v2, :cond_2d

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/i/b;->c:[I

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/i/b;->b:[I

    aget v3, v3, p2

    aput p2, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1e

    :cond_2d
    new-instance p1, Lcom/google/zxing/pdf417/decoder/i/c;

    new-array p2, v1, [I

    aput v0, p2, v0

    invoke-direct {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/i/c;-><init>(Lcom/google/zxing/pdf417/decoder/i/b;[I)V

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/i/b;->d:Lcom/google/zxing/pdf417/decoder/i/c;

    new-instance p1, Lcom/google/zxing/pdf417/decoder/i/c;

    new-array p2, v1, [I

    aput v1, p2, v0

    invoke-direct {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/i/c;-><init>(Lcom/google/zxing/pdf417/decoder/i/b;[I)V

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/i/b;->e:Lcom/google/zxing/pdf417/decoder/i/c;

    return-void
.end method


# virtual methods
.method a(II)I
    .registers 3

    add-int/2addr p1, p2

    iget p2, p0, Lcom/google/zxing/pdf417/decoder/i/b;->f:I

    rem-int/2addr p1, p2

    return p1
.end method

.method b(II)Lcom/google/zxing/pdf417/decoder/i/c;
    .registers 4

    if-ltz p1, :cond_14

    if-nez p2, :cond_7

    iget-object p1, p0, Lcom/google/zxing/pdf417/decoder/i/b;->d:Lcom/google/zxing/pdf417/decoder/i/c;

    return-object p1

    :cond_7
    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    new-instance p2, Lcom/google/zxing/pdf417/decoder/i/c;

    invoke-direct {p2, p0, p1}, Lcom/google/zxing/pdf417/decoder/i/c;-><init>(Lcom/google/zxing/pdf417/decoder/i/b;[I)V

    return-object p2

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method c(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/b;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method d()Lcom/google/zxing/pdf417/decoder/i/c;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/b;->e:Lcom/google/zxing/pdf417/decoder/i/c;

    return-object v0
.end method

.method e()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/i/b;->f:I

    return v0
.end method

.method f()Lcom/google/zxing/pdf417/decoder/i/c;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/b;->d:Lcom/google/zxing/pdf417/decoder/i/c;

    return-object v0
.end method

.method g(I)I
    .registers 5

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/b;->b:[I

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/i/b;->f:I

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/i/b;->c:[I

    aget p1, v2, p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget p1, v0, v1

    return p1

    :cond_10
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    throw p1
.end method

.method h(I)I
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/b;->c:[I

    aget p1, v0, p1

    return p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method i(II)I
    .registers 5

    if-eqz p1, :cond_16

    if-nez p2, :cond_5

    goto :goto_16

    :cond_5
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/i/b;->b:[I

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/i/b;->c:[I

    aget p1, v1, p1

    aget p2, v1, p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/google/zxing/pdf417/decoder/i/b;->f:I

    add-int/lit8 p2, p2, -0x1

    rem-int/2addr p1, p2

    aget p1, v0, p1

    return p1

    :cond_16
    :goto_16
    const/4 p1, 0x0

    return p1
.end method

.method j(II)I
    .registers 4

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/i/b;->f:I

    add-int/2addr p1, v0

    sub-int/2addr p1, p2

    rem-int/2addr p1, v0

    return p1
.end method
