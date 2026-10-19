###### Class io.didomi.iabtcf.decoder.utils.Base64.DecInputStream (io.didomi.iabtcf.decoder.utils.Base64$DecInputStream)
.class Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;
.super Ljava/io/InputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecInputStream"
.end annotation


# instance fields
.field private final base64:[I

.field private bits:I

.field private closed:Z

.field private eof:Z

.field private final is:Ljava/io/InputStream;

.field private final isMIME:Z

.field private nextin:I

.field private nextout:I

.field private sbBuf:[B


# direct methods
.method constructor <init>(Ljava/io/InputStream;[IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    const/16 v1, 0x12

    iput v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    const/4 v1, -0x8

    iput v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->eof:Z

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->closed:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->sbBuf:[B

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->is:Ljava/io/InputStream;

    iput-object p2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->base64:[I

    iput-boolean p3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->isMIME:Z

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->closed:Z

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_c
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->sbBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    :cond_c
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->sbBuf:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :goto_12
    return v2
.end method

.method public read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_131

    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    if-gez v0, :cond_e

    return v1

    :cond_e
    if-ltz p2, :cond_12b

    if-ltz p3, :cond_12b

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_12b

    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    const/4 v2, 0x0

    if-ltz v0, :cond_37

    move v0, p2

    :goto_1c
    if-nez p3, :cond_20

    sub-int/2addr v0, p2

    return v0

    :cond_20
    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    iget v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v5, v5, -0x8

    iput v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    if-gez v5, :cond_35

    iput v2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    goto :goto_38

    :cond_35
    move v0, v3

    goto :goto_1c

    :cond_37
    move v3, p2

    :goto_38
    if-lez p3, :cond_129

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v4, 0xc

    const/16 v5, 0x12

    const/4 v6, 0x1

    if-ne v0, v1, :cond_7b

    iput-boolean v6, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->eof:Z

    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    if-eq v0, v5, :cond_76

    if-eq v0, v4, :cond_6e

    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    shr-int/lit8 v6, v5, 0x10

    int-to-byte v6, v6

    aput-byte v6, p1, v3

    add-int/2addr p3, v1

    if-nez v0, :cond_6c

    if-nez p3, :cond_64

    shr-int/lit8 p1, v5, 0x8

    iput p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    iput v2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    goto :goto_6c

    :cond_64
    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 p3, v5, 0x8

    int-to-byte p3, p3

    aput-byte p3, p1, v4

    goto :goto_76

    :cond_6c
    :goto_6c
    move v3, v4

    goto :goto_76

    :cond_6e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Base64 stream has one un-decoded dangling byte."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_76
    :goto_76
    if-ne v3, p2, :cond_79

    return v1

    :cond_79
    sub-int/2addr v3, p2

    return v3

    :cond_7b
    const/16 v7, 0x3d

    if-ne v0, v7, :cond_ce

    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    if-eq v0, v5, :cond_b5

    if-eq v0, v4, :cond_b5

    const/4 v4, 0x6

    if-ne v0, v4, :cond_90

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v7, :cond_b5

    :cond_90
    add-int/lit8 v0, v3, 0x1

    iget v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    shr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    add-int/2addr p3, v1

    iget v1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    if-nez v1, :cond_b0

    if-nez p3, :cond_a7

    shr-int/lit8 p1, v4, 0x8

    iput p1, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    iput v2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    goto :goto_b0

    :cond_a7
    add-int/lit8 p3, v0, 0x1

    shr-int/lit8 v1, v4, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    move v3, p3

    goto :goto_b1

    :cond_b0
    :goto_b0
    move v3, v0

    :goto_b1
    iput-boolean v6, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->eof:Z

    goto/16 :goto_129

    :cond_b5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal base64 ending sequence:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ce
    iget-object v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->base64:[I

    aget v0, v4, v0

    const/16 v4, 0x10

    if-ne v0, v1, :cond_f7

    iget-boolean v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->isMIME:Z

    if-eqz v5, :cond_dc

    goto/16 :goto_38

    :cond_dc
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal base64 character "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f7
    iget v6, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    iget v7, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    shl-int/2addr v0, v7

    or-int/2addr v0, v6

    iput v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    if-nez v7, :cond_123

    iput v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    iput v4, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    :goto_105
    iget v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    if-ltz v0, :cond_11f

    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    shr-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextout:I

    if-nez p3, :cond_11d

    if-ltz v0, :cond_11d

    sub-int/2addr v4, p2

    return v4

    :cond_11d
    move v3, v4

    goto :goto_105

    :cond_11f
    iput v2, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->bits:I

    goto/16 :goto_38

    :cond_123
    add-int/lit8 v7, v7, -0x6

    iput v7, p0, Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;->nextin:I

    goto/16 :goto_38

    :cond_129
    :goto_129
    sub-int/2addr v3, p2

    return v3

    :cond_12b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_131
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
