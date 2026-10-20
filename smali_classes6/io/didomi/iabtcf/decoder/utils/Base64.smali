###### Class io.didomi.iabtcf.decoder.utils.Base64 (io.didomi.iabtcf.decoder.utils.Base64)
.class public Lio/didomi/iabtcf/decoder/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/iabtcf/decoder/utils/Base64$DecInputStream;,
        Lio/didomi/iabtcf/decoder/utils/Base64$EncOutputStream;,
        Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;,
        Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoder()Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->RFC4648:Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    return-object v0
.end method

.method public static getEncoder()Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->RFC4648:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeDecoder()Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->RFC2045:Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    return-object v0
.end method

.method public static getMimeEncoder()Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->RFC2045:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeEncoder(I[B)Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;
    .registers 9

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->access$000()[I

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_34

    aget-byte v3, p1, v2

    and-int/lit16 v4, v3, 0xff

    aget v4, v0, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal base64 line separator character 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-static {v3, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    if-gtz p0, :cond_39

    sget-object p0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->RFC4648:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    return-object p0

    :cond_39
    new-instance v6, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    const/4 v1, 0x0

    shr-int/lit8 p0, p0, 0x2

    shl-int/lit8 v3, p0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;-><init>(Z[BIZLio/didomi/iabtcf/decoder/utils/Base64$1;)V

    return-object v6
.end method

.method public static getUrlDecoder()Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->RFC4648_URLSAFE:Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    return-object v0
.end method

.method public static getUrlEncoder()Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;
    .registers 1

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;->RFC4648_URLSAFE:Lio/didomi/iabtcf/decoder/utils/Base64$Encoder;

    return-object v0
.end method
