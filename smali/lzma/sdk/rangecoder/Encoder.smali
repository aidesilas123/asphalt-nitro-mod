###### Class lzma.sdk.rangecoder.Encoder (lzma.sdk.rangecoder.Encoder)
.class public Llzma/sdk/rangecoder/Encoder;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I


# instance fields
.field private b:Ljava/io/OutputStream;

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v0, 0x200

    new-array v0, v0, [I

    sput-object v0, Llzma/sdk/rangecoder/Encoder;->a:[I

    const/16 v0, 0x8

    :goto_8
    if-ltz v0, :cond_27

    rsub-int/lit8 v1, v0, 0x9

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x1

    shl-int v4, v3, v2

    shl-int v1, v3, v1

    :goto_13
    if-ge v4, v1, :cond_24

    sget-object v3, Llzma/sdk/rangecoder/Encoder;->a:[I

    shl-int/lit8 v5, v0, 0x6

    sub-int v6, v1, v4

    shl-int/lit8 v6, v6, 0x6

    ushr-int/2addr v6, v2

    add-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrice(II)I
    .registers 3

    sget-object v0, Llzma/sdk/rangecoder/Encoder;->a:[I

    sub-int/2addr p0, p1

    neg-int p1, p1

    xor-int/2addr p0, p1

    and-int/lit16 p0, p0, 0x7ff

    ushr-int/lit8 p0, p0, 0x2

    aget p0, v0, p0

    return p0
.end method

.method public static getPrice0(I)I
    .registers 2

    sget-object v0, Llzma/sdk/rangecoder/Encoder;->a:[I

    ushr-int/lit8 p0, p0, 0x2

    aget p0, v0, p0

    return p0
.end method

.method public static getPrice1(I)I
    .registers 2

    sget-object v0, Llzma/sdk/rangecoder/Encoder;->a:[I

    rsub-int p0, p0, 0x800

    ushr-int/lit8 p0, p0, 0x2

    aget p0, v0, p0

    return p0
.end method

.method public static initBitModels([S)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_b

    const/16 v1, 0x400

    aput-short v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method


# virtual methods
.method public a([SII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    aget-short v0, p1, p2

    iget v1, p0, Llzma/sdk/rangecoder/Encoder;->d:I

    ushr-int/lit8 v2, v1, 0xb

    mul-int v2, v2, v0

    if-nez p3, :cond_15

    iput v2, p0, Llzma/sdk/rangecoder/Encoder;->d:I

    rsub-int p3, v0, 0x800

    ushr-int/lit8 p3, p3, 0x5

    add-int/2addr v0, p3

    int-to-short p3, v0

    aput-short p3, p1, p2

    goto :goto_2a

    :cond_15
    iget-wide v3, p0, Llzma/sdk/rangecoder/Encoder;->c:J

    int-to-long v5, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Llzma/sdk/rangecoder/Encoder;->c:J

    sub-int/2addr v1, v2

    iput v1, p0, Llzma/sdk/rangecoder/Encoder;->d:I

    ushr-int/lit8 p3, v0, 0x5

    sub-int/2addr v0, p3

    int-to-short p3, v0

    aput-short p3, p1, p2

    :goto_2a
    iget p1, p0, Llzma/sdk/rangecoder/Encoder;->d:I

    const/high16 p2, -0x1000000

    and-int/2addr p2, p1

    if-nez p2, :cond_38

    shl-int/lit8 p1, p1, 0x8

    iput p1, p0, Llzma/sdk/rangecoder/Encoder;->d:I

    invoke-virtual {p0}, Llzma/sdk/rangecoder/Encoder;->b()V

    :cond_38
    return-void
.end method

.method b()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Llzma/sdk/rangecoder/Encoder;->c:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v3, v2

    if-nez v3, :cond_12

    const-wide v4, 0xff000000L

    cmp-long v2, v0, v4

    if-gez v2, :cond_33

    :cond_12
    iget-wide v0, p0, Llzma/sdk/rangecoder/Encoder;->g:J

    iget v2, p0, Llzma/sdk/rangecoder/Encoder;->e:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Llzma/sdk/rangecoder/Encoder;->g:J

    iget v0, p0, Llzma/sdk/rangecoder/Encoder;->f:I

    :cond_1c
    iget-object v1, p0, Llzma/sdk/rangecoder/Encoder;->b:Ljava/io/OutputStream;

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0xff

    iget v1, p0, Llzma/sdk/rangecoder/Encoder;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Llzma/sdk/rangecoder/Encoder;->e:I

    if-nez v1, :cond_1c

    iget-wide v0, p0, Llzma/sdk/rangecoder/Encoder;->c:J

    long-to-int v1, v0

    ushr-int/lit8 v0, v1, 0x18

    iput v0, p0, Llzma/sdk/rangecoder/Encoder;->f:I

    :cond_33
    iget v0, p0, Llzma/sdk/rangecoder/Encoder;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llzma/sdk/rangecoder/Encoder;->e:I

    iget-wide v0, p0, Llzma/sdk/rangecoder/Encoder;->c:J

    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    iput-wide v0, p0, Llzma/sdk/rangecoder/Encoder;->c:J

    return-void
.end method
