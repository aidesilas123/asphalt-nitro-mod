###### Class lzma.sdk.rangecoder.BitTreeDecoder (lzma.sdk.rangecoder.BitTreeDecoder)
.class public Llzma/sdk/rangecoder/BitTreeDecoder;
.super Ljava/lang/Object;


# instance fields
.field private final a:[S

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llzma/sdk/rangecoder/BitTreeDecoder;->b:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    new-array p1, p1, [S

    iput-object p1, p0, Llzma/sdk/rangecoder/BitTreeDecoder;->a:[S

    return-void
.end method

.method public static reverseDecode([SILlzma/sdk/rangecoder/Decoder;I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_4
    if-ge v0, p3, :cond_13

    add-int v4, p1, v3

    invoke-virtual {p2, p0, v4}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v4

    shl-int/2addr v3, v1

    add-int/2addr v3, v4

    shl-int/2addr v4, v0

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_13
    return v2
.end method


# virtual methods
.method public a(Llzma/sdk/rangecoder/Decoder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Llzma/sdk/rangecoder/BitTreeDecoder;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_4
    if-eqz v0, :cond_12

    shl-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Llzma/sdk/rangecoder/BitTreeDecoder;->a:[S

    invoke-virtual {p1, v4, v2}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v2

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_12
    iget p1, p0, Llzma/sdk/rangecoder/BitTreeDecoder;->b:I

    shl-int p1, v1, p1

    sub-int/2addr v2, p1

    return v2
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Llzma/sdk/rangecoder/BitTreeDecoder;->a:[S

    invoke-static {v0}, Llzma/sdk/rangecoder/Decoder;->initBitModels([S)V

    return-void
.end method

.method public c(Llzma/sdk/rangecoder/Decoder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_4
    iget v4, p0, Llzma/sdk/rangecoder/BitTreeDecoder;->b:I

    if-ge v0, v4, :cond_15

    iget-object v4, p0, Llzma/sdk/rangecoder/BitTreeDecoder;->a:[S

    invoke-virtual {p1, v4, v3}, Llzma/sdk/rangecoder/Decoder;->a([SI)I

    move-result v4

    shl-int/2addr v3, v1

    add-int/2addr v3, v4

    shl-int/2addr v4, v0

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_15
    return v2
.end method
