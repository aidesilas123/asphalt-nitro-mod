###### Class com.google.zxing.qrcode.encoder.Encoder (com.google.zxing.qrcode.encoder.Encoder)
.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final a:[I

.field static final b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->a:[I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->b:Ljava/nio/charset/Charset;

    return-void

    :array_e
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/common/a;Ljava/nio/charset/Charset;)V
    .registers 6

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p2, p0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_12

    aget-byte v1, p0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Lcom/google/zxing/common/a;->e(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method static b(Ljava/lang/CharSequence;Lcom/google/zxing/common/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_3d

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->o(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_37

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_31

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->o(I)I

    move-result v4

    if-eq v4, v3, :cond_2b

    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v4

    const/16 v3, 0xb

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->e(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_2b
    new-instance p0, Lcom/google/zxing/g;

    invoke-direct {p0}, Lcom/google/zxing/g;-><init>()V

    throw p0

    :cond_31
    const/4 v1, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/zxing/common/a;->e(II)V

    move v1, v4

    goto :goto_5

    :cond_37
    new-instance p0, Lcom/google/zxing/g;

    invoke-direct {p0}, Lcom/google/zxing/g;-><init>()V

    throw p0

    :cond_3d
    return-void
.end method

.method static c(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;Ljava/nio/charset/Charset;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2f

    const/4 p3, 0x4

    if-ne v0, p3, :cond_18

    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->e(Ljava/lang/String;Lcom/google/zxing/common/a;)V

    goto :goto_3a

    :cond_18
    new-instance p0, Lcom/google/zxing/g;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Lcom/google/zxing/common/a;Ljava/nio/charset/Charset;)V

    goto :goto_3a

    :cond_33
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->b(Ljava/lang/CharSequence;Lcom/google/zxing/common/a;)V

    goto :goto_3a

    :cond_37
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->h(Ljava/lang/CharSequence;Lcom/google/zxing/common/a;)V

    :goto_3a
    return-void
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->l(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/a;)V
    .registers 4

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->f:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->e()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/a;->e(II)V

    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->f()I

    move-result p0

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Lcom/google/zxing/common/a;->e(II)V

    return-void
.end method

.method static e(Ljava/lang/String;Lcom/google/zxing/common/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/common/StringUtils;->b:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_5e

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_56

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_55

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    const v3, 0x8140

    const/4 v4, -0x1

    if-lt v2, v3, :cond_2d

    const v5, 0x9ffc

    if-gt v2, v5, :cond_2d

    :goto_2b
    sub-int/2addr v2, v3

    goto :goto_3c

    :cond_2d
    const v3, 0xe040

    if-lt v2, v3, :cond_3b

    const v3, 0xebbf

    if-gt v2, v3, :cond_3b

    const v3, 0xc140

    goto :goto_2b

    :cond_3b
    const/4 v2, -0x1

    :goto_3c
    if-eq v2, v4, :cond_4d

    shr-int/lit8 v3, v2, 0x8

    mul-int/lit16 v3, v3, 0xc0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    const/16 v2, 0xd

    invoke-virtual {p1, v3, v2}, Lcom/google/zxing/common/a;->e(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_11

    :cond_4d
    new-instance p0, Lcom/google/zxing/g;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    return-void

    :cond_56
    new-instance p0, Lcom/google/zxing/g;

    const-string p1, "Kanji byte size not even"

    invoke-direct {p0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    new-instance p0, Lcom/google/zxing/g;

    const-string p1, "SJIS Charset not supported on this platform"

    invoke-direct {p0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1c

    sget-object v2, Lcom/google/zxing/EncodeHintType;->p:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    if-eqz p2, :cond_37

    sget-object v3, Lcom/google/zxing/EncodeHintType;->o:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    const/4 v3, 0x1

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    :goto_38
    sget-object v4, Lcom/google/zxing/qrcode/encoder/Encoder;->b:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_45

    sget-object v5, Lcom/google/zxing/EncodeHintType;->b:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    if-eqz v0, :cond_58

    :try_start_48
    sget-object v1, Lcom/google/zxing/EncodeHintType;->b:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4
    :try_end_56
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_48 .. :try_end_56} :catch_57

    goto :goto_58

    :catch_57
    nop

    :cond_58
    :goto_58
    if-eqz v3, :cond_78

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    sget-object v1, Lcom/google/zxing/qrcode/encoder/Encoder;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_66

    move-object v4, v3

    :cond_66
    invoke-static {p0, v3, v4, v2, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->i(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Version;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    move-result-object p0

    new-instance v1, Lcom/google/zxing/common/a;

    invoke-direct {v1}, Lcom/google/zxing/common/a;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->b(Lcom/google/zxing/common/a;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->e()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    goto/16 :goto_ef

    :cond_78
    invoke-static {p0, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->l(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v1

    new-instance v3, Lcom/google/zxing/common/a;

    invoke-direct {v3}, Lcom/google/zxing/common/a;-><init>()V

    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v1, v5, :cond_90

    if-eqz v0, :cond_90

    invoke-static {v4}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-static {v0, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->d(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/a;)V

    :cond_90
    if-eqz v2, :cond_97

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->h:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-static {v0, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;)V

    :cond_97
    invoke-static {v1, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;)V

    new-instance v0, Lcom/google/zxing/common/a;

    invoke-direct {v0}, Lcom/google/zxing/common/a;-><init>()V

    invoke-static {p0, v1, v0, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->c(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;Ljava/nio/charset/Charset;)V

    if-eqz p2, :cond_cf

    sget-object v2, Lcom/google/zxing/EncodeHintType;->m:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    invoke-static {v1, v3, v0, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->i(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v4

    invoke-static {v4, v2, p1}, Lcom/google/zxing/qrcode/encoder/Encoder;->u(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v4

    if-eqz v4, :cond_c7

    goto :goto_d3

    :cond_c7
    new-instance p0, Lcom/google/zxing/g;

    const-string p1, "Data too big for requested version"

    invoke-direct {p0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cf
    invoke-static {p1, v1, v3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->s(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    :goto_d3
    new-instance v4, Lcom/google/zxing/common/a;

    invoke-direct {v4}, Lcom/google/zxing/common/a;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/zxing/common/a;->d(Lcom/google/zxing/common/a;)V

    if-ne v1, v5, :cond_e2

    invoke-virtual {v0}, Lcom/google/zxing/common/a;->j()I

    move-result p0

    goto :goto_e6

    :cond_e2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_e6
    invoke-static {p0, v2, v1, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->f(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;)V

    invoke-virtual {v4, v0}, Lcom/google/zxing/common/a;->d(Lcom/google/zxing/common/a;)V

    move-object v0, v1

    move-object p0, v2

    move-object v1, v4

    :goto_ef
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/decoder/Version;->c(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->d()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$b;->d()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->t(ILcom/google/zxing/common/a;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->d()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$b;->c()I

    move-result v2

    invoke-static {v1, v4, v3, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->q(Lcom/google/zxing/common/a;III)Lcom/google/zxing/common/a;

    move-result-object v1

    new-instance v2, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct {v2}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->b(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    invoke-virtual {v2, v0}, Lcom/google/zxing/qrcode/encoder/QRCode;->e(Lcom/google/zxing/qrcode/decoder/Mode;)V

    invoke-virtual {v2, p0}, Lcom/google/zxing/qrcode/encoder/QRCode;->f(Lcom/google/zxing/qrcode/decoder/Version;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->b()I

    move-result v0

    new-instance v3, Lcom/google/zxing/qrcode/encoder/b;

    invoke-direct {v3, v0, v0}, Lcom/google/zxing/qrcode/encoder/b;-><init>(II)V

    const/4 v0, -0x1

    if-eqz p2, :cond_140

    sget-object v4, Lcom/google/zxing/EncodeHintType;->n:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_140

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v4

    if-eqz v4, :cond_140

    goto :goto_141

    :cond_140
    const/4 p2, -0x1

    :goto_141
    if-ne p2, v0, :cond_147

    invoke-static {v1, p1, p0, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->k(Lcom/google/zxing/common/a;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/b;)I

    move-result p2

    :cond_147
    invoke-virtual {v2, p2}, Lcom/google/zxing/qrcode/encoder/QRCode;->c(I)V

    invoke-static {v1, p1, p0, p2, v3}, Lcom/google/zxing/qrcode/encoder/d;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/b;)V

    invoke-virtual {v2, v3}, Lcom/google/zxing/qrcode/encoder/QRCode;->d(Lcom/google/zxing/qrcode/encoder/b;)V

    return-object v2
.end method

.method static f(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->f(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result p1

    const/4 p2, 0x1

    shl-int v0, p2, p1

    if-ge p0, v0, :cond_d

    invoke-virtual {p3, p0, p1}, Lcom/google/zxing/common/a;->e(II)V

    return-void

    :cond_d
    new-instance p1, Lcom/google/zxing/g;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static g(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->e()I

    move-result p0

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/google/zxing/common/a;->e(II)V

    return-void
.end method

.method static h(Ljava/lang/CharSequence;Lcom/google/zxing/common/a;)V
    .registers 8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_45

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_2d

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v2, v2, 0x64

    const/16 v5, 0xa

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    invoke-virtual {p1, v2, v5}, Lcom/google/zxing/common/a;->e(II)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_5

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_40

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    const/4 v1, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/google/zxing/common/a;->e(II)V

    move v1, v3

    goto :goto_5

    :cond_40
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->e(II)V

    goto :goto_5

    :cond_45
    return-void
.end method

.method private static i(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;Lcom/google/zxing/qrcode/decoder/Version;)I
    .registers 4

    invoke-virtual {p1}, Lcom/google/zxing/common/a;->i()I

    move-result p1

    invoke-virtual {p0, p3}, Lcom/google/zxing/qrcode/decoder/Mode;->f(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p2}, Lcom/google/zxing/common/a;->i()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private static j(Lcom/google/zxing/qrcode/encoder/b;)I
    .registers 3

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/c;->a(Lcom/google/zxing/qrcode/encoder/b;)I

    move-result v0

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/c;->c(Lcom/google/zxing/qrcode/encoder/b;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/c;->d(Lcom/google/zxing/qrcode/encoder/b;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/c;->e(Lcom/google/zxing/qrcode/encoder/b;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static k(Lcom/google/zxing/common/a;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/b;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_5
    const/16 v3, 0x8

    if-ge v2, v3, :cond_17

    invoke-static {p0, p1, p2, v2, p3}, Lcom/google/zxing/qrcode/encoder/d;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/b;)V

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->j(Lcom/google/zxing/qrcode/encoder/b;)I

    move-result v3

    if-ge v3, v0, :cond_14

    move v1, v2

    move v0, v3

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    return v1
.end method

.method private static l(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 7

    sget-object v0, Lcom/google/zxing/common/StringUtils;->b:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->r(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->g:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    :cond_13
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_39

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2b

    const/16 v3, 0x39

    if-gt v2, v3, :cond_2b

    const/4 v1, 0x1

    goto :goto_33

    :cond_2b
    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->o(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_36

    const/4 v0, 0x1

    :goto_33
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    :cond_36
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    :cond_39
    if-eqz v0, :cond_3e

    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->c:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    :cond_3e
    if-eqz v1, :cond_43

    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->b:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    :cond_43
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0
.end method

.method private static m(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x28

    if-gt v0, v1, :cond_13

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/google/zxing/qrcode/encoder/Encoder;->u(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    new-instance p0, Lcom/google/zxing/g;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static n([BI)[B
    .registers 7

    array-length v0, p0

    add-int v1, v0, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_12

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    new-instance p0, Lcom/google/zxing/common/h/c;

    sget-object v3, Lcom/google/zxing/common/h/a;->e:Lcom/google/zxing/common/h/a;

    invoke-direct {p0, v3}, Lcom/google/zxing/common/h/c;-><init>(Lcom/google/zxing/common/h/a;)V

    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/h/c;->b([II)V

    new-array p0, p1, [B

    :goto_1e
    if-ge v2, p1, :cond_2a

    add-int v3, v0, v2

    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2a
    return-object p0
.end method

.method static o(I)I
    .registers 3

    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->a:[I

    array-length v1, v0

    if-ge p0, v1, :cond_8

    aget p0, v0, p0

    return p0

    :cond_8
    const/4 p0, -0x1

    return p0
.end method

.method static p(IIII[I[I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    if-ge p3, p2, :cond_45

    rem-int v0, p0, p2

    sub-int v1, p2, v0

    div-int v2, p0, p2

    add-int/lit8 v3, v2, 0x1

    div-int/2addr p1, p2

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v2, p1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_3d

    add-int v5, v1, v0

    if-ne p2, v5, :cond_35

    add-int p2, p1, v2

    mul-int p2, p2, v1

    add-int v5, v4, v3

    mul-int v5, v5, v0

    add-int/2addr p2, v5

    if-ne p0, p2, :cond_2d

    const/4 p0, 0x0

    if-ge p3, v1, :cond_28

    aput p1, p4, p0

    aput v2, p5, p0

    goto :goto_2c

    :cond_28
    aput v4, p4, p0

    aput v3, p5, p0

    :goto_2c
    return-void

    :cond_2d
    new-instance p0, Lcom/google/zxing/g;

    const-string p1, "Total bytes mismatch"

    invoke-direct {p0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    new-instance p0, Lcom/google/zxing/g;

    const-string p1, "RS blocks mismatch"

    invoke-direct {p0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    new-instance p0, Lcom/google/zxing/g;

    const-string p1, "EC bytes mismatch"

    invoke-direct {p0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    new-instance p0, Lcom/google/zxing/g;

    const-string p1, "Block ID too large"

    invoke-direct {p0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static q(Lcom/google/zxing/common/a;III)Lcom/google/zxing/common/a;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/a;->j()I

    move-result v0

    if-ne v0, v7, :cond_d7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_16
    if-ge v11, v8, :cond_52

    const/4 v0, 0x1

    new-array v15, v0, [I

    new-array v5, v0, [I

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v11

    move-object v4, v15

    move-object/from16 v16, v5

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->p(IIII[I[I)V

    aget v0, v15, v10

    new-array v1, v0, [B

    mul-int/lit8 v2, v12, 0x8

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v1, v10, v0}, Lcom/google/zxing/common/a;->l(I[BII)V

    aget v2, v16, v10

    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->n([BI)[B

    move-result-object v2

    new-instance v4, Lcom/google/zxing/qrcode/encoder/a;

    invoke-direct {v4, v1, v2}, Lcom/google/zxing/qrcode/encoder/a;-><init>([B[B)V

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    array-length v0, v2

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    aget v0, v15, v10

    add-int/2addr v12, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    :cond_52
    if-ne v7, v12, :cond_cf

    new-instance v0, Lcom/google/zxing/common/a;

    invoke-direct {v0}, Lcom/google/zxing/common/a;-><init>()V

    const/4 v1, 0x0

    :goto_5a
    const/16 v2, 0x8

    if-ge v1, v13, :cond_7e

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_62
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/encoder/a;

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/encoder/a;->a()[B

    move-result-object v4

    array-length v5, v4

    if-ge v1, v5, :cond_62

    aget-byte v4, v4, v1

    invoke-virtual {v0, v4, v2}, Lcom/google/zxing/common/a;->e(II)V

    goto :goto_62

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_7e
    :goto_7e
    if-ge v10, v14, :cond_a0

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_84
    :goto_84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/encoder/a;

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/a;->b()[B

    move-result-object v3

    array-length v4, v3

    if-ge v10, v4, :cond_84

    aget-byte v3, v3, v10

    invoke-virtual {v0, v3, v2}, Lcom/google/zxing/common/a;->e(II)V

    goto :goto_84

    :cond_9d
    add-int/lit8 v10, v10, 0x1

    goto :goto_7e

    :cond_a0
    invoke-virtual {v0}, Lcom/google/zxing/common/a;->j()I

    move-result v1

    if-ne v6, v1, :cond_a7

    return-object v0

    :cond_a7
    new-instance v1, Lcom/google/zxing/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interleaving error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/zxing/common/a;->j()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_cf
    new-instance v0, Lcom/google/zxing/g;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d7
    new-instance v0, Lcom/google/zxing/g;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static r(Ljava/lang/String;)Z
    .registers 6

    sget-object v0, Lcom/google/zxing/common/StringUtils;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    return v2

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_29

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-lt v3, v4, :cond_1c

    const/16 v4, 0x9f

    if-le v3, v4, :cond_25

    :cond_1c
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_28

    const/16 v4, 0xeb

    if-le v3, v4, :cond_25

    goto :goto_28

    :cond_25
    add-int/lit8 v1, v1, 0x2

    goto :goto_e

    :cond_28
    :goto_28
    return v2

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method private static s(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->i(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    invoke-static {v0, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->m(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->i(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result p1

    invoke-static {p1, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->m(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0
.end method

.method static t(ILcom/google/zxing/common/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    mul-int/lit8 v0, p0, 0x8

    invoke-virtual {p1}, Lcom/google/zxing/common/a;->i()I

    move-result v1

    if-gt v1, v0, :cond_50

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    const/4 v3, 0x4

    if-ge v2, v3, :cond_19

    invoke-virtual {p1}, Lcom/google/zxing/common/a;->i()I

    move-result v3

    if-ge v3, v0, :cond_19

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/a;->b(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->i()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    if-lez v2, :cond_2b

    :goto_23
    if-ge v2, v3, :cond_2b

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/a;->b(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_2b
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->j()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_30
    if-ge v1, p0, :cond_41

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_39

    const/16 v2, 0xec

    goto :goto_3b

    :cond_39
    const/16 v2, 0x11

    :goto_3b
    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->e(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_41
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->i()I

    move-result p0

    if-ne p0, v0, :cond_48

    return-void

    :cond_48
    new-instance p0, Lcom/google/zxing/g;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    new-instance p0, Lcom/google/zxing/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/common/a;->i()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static u(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->d()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/zxing/qrcode/decoder/Version;->c(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version$b;->d()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    if-lt v0, p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method
