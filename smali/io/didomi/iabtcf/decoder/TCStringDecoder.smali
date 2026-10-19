###### Class io.didomi.iabtcf.decoder.TCStringDecoder (io.didomi.iabtcf.decoder.TCStringDecoder)
.class Lio/didomi/iabtcf/decoder/TCStringDecoder;
.super Ljava/lang/Object;
.source "TCStringDecoder.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs decode(Ljava/lang/String;[Lio/didomi/iabtcf/decoder/DecoderOption;)Lio/didomi/iabtcf/decoder/TCString;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lio/didomi/iabtcf/decoder/exceptions/ByteParseException;,
            Lio/didomi/iabtcf/decoder/exceptions/UnsupportedVersionException;
        }
    .end annotation

    const-class v0, Lio/didomi/iabtcf/decoder/DecoderOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_13

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    const-string p1, "\\."

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p1, p0, v2

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/TCStringDecoder;->vectorFromString(Ljava/lang/String;)Lio/didomi/iabtcf/decoder/utils/BitReader;

    move-result-object p1

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {p1, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits6(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)B

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_75

    const/4 v4, 0x2

    if-ne v1, v4, :cond_59

    array-length v1, p0

    if-le v1, v3, :cond_47

    array-length v1, p0

    sub-int/2addr v1, v3

    new-array v1, v1, [Lio/didomi/iabtcf/decoder/utils/BitReader;

    :goto_32
    array-length v2, p0

    if-ge v3, v2, :cond_42

    add-int/lit8 v2, v3, -0x1

    aget-object v4, p0, v3

    invoke-static {v4}, Lio/didomi/iabtcf/decoder/TCStringDecoder;->vectorFromString(Ljava/lang/String;)Lio/didomi/iabtcf/decoder/utils/BitReader;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_42
    invoke-static {p1, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fromBitVector(Lio/didomi/iabtcf/decoder/utils/BitReader;[Lio/didomi/iabtcf/decoder/utils/BitReader;)Lio/didomi/iabtcf/decoder/TCStringV2;

    move-result-object p0

    goto :goto_4d

    :cond_47
    new-array p0, v2, [Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-static {p1, p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->fromBitVector(Lio/didomi/iabtcf/decoder/utils/BitReader;[Lio/didomi/iabtcf/decoder/utils/BitReader;)Lio/didomi/iabtcf/decoder/TCStringV2;

    move-result-object p0

    :goto_4d
    sget-object p1, Lio/didomi/iabtcf/decoder/DecoderOption;->LAZY:Lio/didomi/iabtcf/decoder/DecoderOption;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    :cond_58
    return-object p0

    :cond_59
    new-instance p0, Lio/didomi/iabtcf/decoder/exceptions/UnsupportedVersionException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Version "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "is unsupported yet"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/didomi/iabtcf/decoder/exceptions/UnsupportedVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    invoke-static {p1}, Lio/didomi/iabtcf/decoder/TCStringV1;->fromBitVector(Lio/didomi/iabtcf/decoder/utils/BitReader;)Lio/didomi/iabtcf/decoder/TCStringV1;

    move-result-object p0

    return-object p0
.end method

.method static vectorFromString(Ljava/lang/String;)Lio/didomi/iabtcf/decoder/utils/BitReader;
    .registers 2

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Base64;->getUrlDecoder()Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/decoder/utils/BitReader;-><init>([B)V

    return-object v0
.end method
