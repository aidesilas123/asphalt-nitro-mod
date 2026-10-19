###### Class com.gameloft.android2d.iap.utils.GZip (com.gameloft.android2d.iap.utils.GZip)
.class public Lcom/gameloft/android2d/iap/utils/GZip;
.super Ljava/lang/Object;
.source "GZip.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Decompress([B)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/util/zip/GZIPInputStream;

    const/16 v1, 0x2000

    invoke-direct {p0, v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v3, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_15
    :goto_15
    const/4 v6, -0x1

    if-eq v5, v6, :cond_22

    invoke-virtual {p0, v3, v4, v1}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    if-eq v5, v6, :cond_15

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_15

    :cond_22
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
