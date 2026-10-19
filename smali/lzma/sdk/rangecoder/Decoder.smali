###### Class lzma.sdk.rangecoder.Decoder (lzma.sdk.rangecoder.Decoder)
.class public Llzma/sdk/rangecoder/Decoder;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
.method public a([SI)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    aget-short v0, p1, p2

    iget v1, p0, Llzma/sdk/rangecoder/Decoder;->a:I

    ushr-int/lit8 v2, v1, 0xb

    mul-int v2, v2, v0

    iget v3, p0, Llzma/sdk/rangecoder/Decoder;->b:I

    const/high16 v4, -0x80000000

    xor-int v5, v3, v4

    xor-int/2addr v4, v2

    const/high16 v6, -0x1000000

    if-ge v5, v4, :cond_34

    iput v2, p0, Llzma/sdk/rangecoder/Decoder;->a:I

    rsub-int v1, v0, 0x800

    ushr-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p1, p2

    and-int p1, v2, v6

    if-nez p1, :cond_32

    shl-int/lit8 p1, v3, 0x8

    iget-object p2, p0, Llzma/sdk/rangecoder/Decoder;->c:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Llzma/sdk/rangecoder/Decoder;->b:I

    iget p1, p0, Llzma/sdk/rangecoder/Decoder;->a:I

    shl-int/lit8 p1, p1, 0x8

    iput p1, p0, Llzma/sdk/rangecoder/Decoder;->a:I

    :cond_32
    const/4 p1, 0x0

    return p1

    :cond_34
    sub-int/2addr v1, v2

    iput v1, p0, Llzma/sdk/rangecoder/Decoder;->a:I

    sub-int/2addr v3, v2

    iput v3, p0, Llzma/sdk/rangecoder/Decoder;->b:I

    ushr-int/lit8 v2, v0, 0x5

    sub-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, p1, p2

    and-int p1, v1, v6

    if-nez p1, :cond_55

    shl-int/lit8 p1, v3, 0x8

    iget-object p2, p0, Llzma/sdk/rangecoder/Decoder;->c:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Llzma/sdk/rangecoder/Decoder;->b:I

    iget p1, p0, Llzma/sdk/rangecoder/Decoder;->a:I

    shl-int/lit8 p1, p1, 0x8

    iput p1, p0, Llzma/sdk/rangecoder/Decoder;->a:I

    :cond_55
    const/4 p1, 0x1

    return p1
.end method

.method public final b(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_33

    iget v1, p0, Llzma/sdk/rangecoder/Decoder;->a:I

    ushr-int/lit8 v1, v1, 0x1

    iput v1, p0, Llzma/sdk/rangecoder/Decoder;->a:I

    iget v2, p0, Llzma/sdk/rangecoder/Decoder;->b:I

    sub-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1f

    add-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v1

    sub-int/2addr v2, v4

    iput v2, p0, Llzma/sdk/rangecoder/Decoder;->b:I

    shl-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v3, v3, 0x1

    or-int/2addr v0, v3

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    if-nez v1, :cond_30

    shl-int/lit8 v1, v2, 0x8

    iget-object v2, p0, Llzma/sdk/rangecoder/Decoder;->c:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Llzma/sdk/rangecoder/Decoder;->b:I

    iget v1, p0, Llzma/sdk/rangecoder/Decoder;->a:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Llzma/sdk/rangecoder/Decoder;->a:I

    :cond_30
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_33
    return v0
.end method

.method public final c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Llzma/sdk/rangecoder/Decoder;->b:I

    const/4 v1, -0x1

    iput v1, p0, Llzma/sdk/rangecoder/Decoder;->a:I

    :goto_6
    const/4 v1, 0x5

    if-ge v0, v1, :cond_19

    iget v1, p0, Llzma/sdk/rangecoder/Decoder;->b:I

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Llzma/sdk/rangecoder/Decoder;->c:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Llzma/sdk/rangecoder/Decoder;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Llzma/sdk/rangecoder/Decoder;->c:Ljava/io/InputStream;

    return-void
.end method

.method public final e(Ljava/io/InputStream;)V
    .registers 2

    iput-object p1, p0, Llzma/sdk/rangecoder/Decoder;->c:Ljava/io/InputStream;

    return-void
.end method
