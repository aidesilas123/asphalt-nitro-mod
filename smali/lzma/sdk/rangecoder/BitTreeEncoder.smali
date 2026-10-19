###### Class lzma.sdk.rangecoder.BitTreeEncoder (lzma.sdk.rangecoder.BitTreeEncoder)
.class public Llzma/sdk/rangecoder/BitTreeEncoder;
.super Ljava/lang/Object;


# direct methods
.method public static reverseEncode([SILlzma/sdk/rangecoder/Encoder;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_3
    if-ge v1, p3, :cond_12

    and-int/lit8 v3, p4, 0x1

    add-int v4, p1, v2

    invoke-virtual {p2, p0, v4, v3}, Llzma/sdk/rangecoder/Encoder;->a([SII)V

    shl-int/2addr v2, v0

    or-int/2addr v2, v3

    shr-int/2addr p4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    return-void
.end method

.method public static reverseGetPrice([SIII)I
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_3
    if-eqz p2, :cond_16

    and-int/lit8 v3, p3, 0x1

    ushr-int/2addr p3, v0

    add-int v4, p1, v2

    aget-short v4, p0, v4

    invoke-static {v4, v3}, Llzma/sdk/rangecoder/Encoder;->getPrice(II)I

    move-result v4

    add-int/2addr v1, v4

    shl-int/2addr v2, v0

    or-int/2addr v2, v3

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_16
    return v1
.end method
