###### Class com.google.zxing.pdf417.encoder.f (com.google.zxing.pdf417.encoder.f)
.class final Lcom/google/zxing/pdf417/encoder/f;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/encoder/f$b;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x1e

    new-array v1, v0, [B

    fill-array-data v1, :array_4c

    sput-object v1, Lcom/google/zxing/pdf417/encoder/f;->a:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_60

    sput-object v0, Lcom/google/zxing/pdf417/encoder/f;->b:[B

    const/16 v0, 0x80

    new-array v1, v0, [B

    sput-object v1, Lcom/google/zxing/pdf417/encoder/f;->c:[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/zxing/pdf417/encoder/f;->d:[B

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/zxing/pdf417/encoder/f;->e:Ljava/nio/charset/Charset;

    const/4 v0, -0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_24
    sget-object v3, Lcom/google/zxing/pdf417/encoder/f;->a:[B

    array-length v4, v3

    if-ge v2, v4, :cond_35

    aget-byte v3, v3, v2

    if-lez v3, :cond_32

    sget-object v4, Lcom/google/zxing/pdf417/encoder/f;->c:[B

    int-to-byte v5, v2

    aput-byte v5, v4, v3

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_35
    sget-object v2, Lcom/google/zxing/pdf417/encoder/f;->d:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    :goto_3a
    sget-object v0, Lcom/google/zxing/pdf417/encoder/f;->b:[B

    array-length v2, v0

    if-ge v1, v2, :cond_4b

    aget-byte v0, v0, v1

    if-lez v0, :cond_48

    sget-object v2, Lcom/google/zxing/pdf417/encoder/f;->d:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_4b
    return-void

    :array_4c
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_60
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private static a(Lcom/google/zxing/common/e;ILjava/nio/charset/Charset;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    :goto_8
    invoke-interface {p0}, Lcom/google/zxing/common/e;->length()I

    move-result v0

    move v1, p1

    :goto_d
    if-ge v1, v0, :cond_67

    const/4 v2, 0x0

    move v3, v1

    :cond_11
    const/16 v4, 0xd

    if-ge v2, v4, :cond_2b

    invoke-interface {p0, v3}, Lcom/google/zxing/common/e;->a(I)Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-interface {p0, v3}, Lcom/google/zxing/common/e;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/f;->l(C)Z

    move-result v3

    if-eqz v3, :cond_2b

    add-int/lit8 v2, v2, 0x1

    add-int v3, v1, v2

    if-lt v3, v0, :cond_11

    :cond_2b
    if-lt v2, v4, :cond_2f

    sub-int/2addr v1, p1

    return v1

    :cond_2f
    if-eqz p2, :cond_64

    invoke-interface {p0, v1}, Lcom/google/zxing/common/e;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v2}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_64

    :cond_3c
    invoke-interface {p0, v1}, Lcom/google/zxing/common/e;->charAt(I)C

    move-result p0

    new-instance p1, Lcom/google/zxing/g;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non-encodable character detected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " (Unicode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_64
    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_67
    sub-int/2addr v1, p1

    return v1
.end method

.method private static b(Lcom/google/zxing/common/e;I)I
    .registers 5

    invoke-interface {p0}, Lcom/google/zxing/common/e;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1e

    :goto_7
    if-ge p1, v0, :cond_1e

    invoke-interface {p0, p1}, Lcom/google/zxing/common/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-interface {p0, p1}, Lcom/google/zxing/common/e;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/f;->l(C)Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_1e
    return v1
.end method

.method private static c(Lcom/google/zxing/common/e;I)I
    .registers 7

    invoke-interface {p0}, Lcom/google/zxing/common/e;->length()I

    move-result v0

    move v1, p1

    :goto_5
    if-ge v1, v0, :cond_3f

    const/4 v2, 0x0

    :goto_8
    const/16 v3, 0xd

    if-ge v2, v3, :cond_23

    if-ge v1, v0, :cond_23

    invoke-interface {p0, v1}, Lcom/google/zxing/common/e;->a(I)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-interface {p0, v1}, Lcom/google/zxing/common/e;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/pdf417/encoder/f;->l(C)Z

    move-result v4

    if-eqz v4, :cond_23

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_23
    if-lt v2, v3, :cond_28

    sub-int/2addr v1, p1

    sub-int/2addr v1, v2

    return v1

    :cond_28
    if-lez v2, :cond_2b

    goto :goto_5

    :cond_2b
    invoke-interface {p0, v1}, Lcom/google/zxing/common/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-interface {p0, v1}, Lcom/google/zxing/common/e;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/f;->o(C)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_3f

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3f
    :goto_3f
    sub-int/2addr v1, p1

    return v1
.end method

.method private static d([BIIILjava/lang/StringBuilder;)V
    .registers 15

    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    if-nez p3, :cond_b

    const/16 p3, 0x391

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_b
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_15

    const/16 p3, 0x39c

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_15
    const/16 p3, 0x385

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1a
    const/4 p3, 0x6

    if-lt p2, p3, :cond_56

    const/4 v0, 0x5

    new-array v1, v0, [C

    move v2, p1

    :goto_21
    add-int v3, p1, p2

    sub-int/2addr v3, v2

    if-lt v3, p3, :cond_57

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2a
    if-ge v6, p3, :cond_3a

    const/16 v7, 0x8

    shl-long/2addr v3, v7

    add-int v7, v2, v6

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    add-long/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_3a
    :goto_3a
    if-ge v5, v0, :cond_48

    const-wide/16 v6, 0x384

    rem-long v8, v3, v6

    long-to-int v9, v8

    int-to-char v8, v9

    aput-char v8, v1, v5

    div-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    :cond_48
    const/4 v3, 0x4

    :goto_49
    if-ltz v3, :cond_53

    aget-char v4, v1, v3

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_49

    :cond_53
    add-int/lit8 v2, v2, 0x6

    goto :goto_21

    :cond_56
    move v2, p1

    :cond_57
    :goto_57
    add-int p3, p1, p2

    if-ge v2, p3, :cond_66

    aget-byte p3, p0, v2

    and-int/lit16 p3, p3, 0xff

    int-to-char p3, p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_66
    return-void
.end method

.method static e(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_142

    const/4 v0, 0x0

    if-nez p2, :cond_49

    if-nez p3, :cond_49

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_49

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xff

    if-gt v2, v3, :cond_1d

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1d
    new-instance p1, Lcom/google/zxing/g;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Non-encodable character detected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " (Unicode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "). Consider specifying EncodeHintType.PDF417_AUTO_ECI and/or EncodeTypeHint.CHARACTER_SET."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_5c

    new-instance v3, Lcom/google/zxing/common/g;

    const/4 v4, -0x1

    invoke-direct {v3, p0, p2, v4}, Lcom/google/zxing/common/g;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    goto :goto_7b

    :cond_5c
    new-instance v3, Lcom/google/zxing/pdf417/encoder/f$b;

    invoke-direct {v3, p0, v2}, Lcom/google/zxing/pdf417/encoder/f$b;-><init>(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/f$a;)V

    if-nez p2, :cond_66

    sget-object p2, Lcom/google/zxing/pdf417/encoder/f;->e:Ljava/nio/charset/Charset;

    goto :goto_7b

    :cond_66
    sget-object p0, Lcom/google/zxing/pdf417/encoder/f;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7b

    invoke-static {p2}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object p0

    if-eqz p0, :cond_7b

    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->f()I

    move-result p0

    invoke-static {p0, v1}, Lcom/google/zxing/pdf417/encoder/f;->i(ILjava/lang/StringBuilder;)V

    :cond_7b
    :goto_7b
    invoke-interface {v3}, Lcom/google/zxing/common/e;->length()I

    move-result p0

    sget-object v4, Lcom/google/zxing/pdf417/encoder/f$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/4 v4, 0x1

    if-eq p1, v4, :cond_13a

    const/4 v5, 0x2

    if-eq p1, v5, :cond_123

    const/4 v6, 0x3

    const/16 v7, 0x386

    if-eq p1, v6, :cond_11c

    const/4 p1, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_95
    if-ge p1, p0, :cond_13d

    :goto_97
    if-ge p1, p0, :cond_a9

    invoke-interface {v3, p1}, Lcom/google/zxing/common/e;->a(I)Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v3, p1}, Lcom/google/zxing/common/e;->b(I)I

    move-result v9

    invoke-static {v9, v1}, Lcom/google/zxing/pdf417/encoder/f;->i(ILjava/lang/StringBuilder;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_97

    :cond_a9
    if-lt p1, p0, :cond_ad

    goto/16 :goto_13d

    :cond_ad
    invoke-static {v3, p1}, Lcom/google/zxing/pdf417/encoder/f;->b(Lcom/google/zxing/common/e;I)I

    move-result v9

    const/16 v10, 0xd

    if-lt v9, v10, :cond_bf

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3, p1, v9, v1}, Lcom/google/zxing/pdf417/encoder/f;->g(Lcom/google/zxing/common/e;IILjava/lang/StringBuilder;)V

    add-int/2addr p1, v9

    const/4 v6, 0x0

    const/4 v8, 0x2

    goto :goto_95

    :cond_bf
    invoke-static {v3, p1}, Lcom/google/zxing/pdf417/encoder/f;->c(Lcom/google/zxing/common/e;I)I

    move-result v10

    const/4 v11, 0x5

    if-ge v10, v11, :cond_10c

    if-ne v9, p0, :cond_c9

    goto :goto_10c

    :cond_c9
    if-eqz p3, :cond_cd

    move-object v9, v2

    goto :goto_ce

    :cond_cd
    move-object v9, p2

    :goto_ce
    invoke-static {v3, p1, v9}, Lcom/google/zxing/pdf417/encoder/f;->a(Lcom/google/zxing/common/e;ILjava/nio/charset/Charset;)I

    move-result v9

    if-nez v9, :cond_d5

    const/4 v9, 0x1

    :cond_d5
    if-eqz p3, :cond_d9

    move-object v10, v2

    goto :goto_e7

    :cond_d9
    add-int v10, p1, v9

    invoke-interface {v3, p1, v10}, Lcom/google/zxing/common/e;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    :goto_e7
    if-nez v10, :cond_eb

    if-eq v9, v4, :cond_f0

    :cond_eb
    if-eqz v10, :cond_fc

    array-length v11, v10

    if-ne v11, v4, :cond_fc

    :cond_f0
    if-nez v8, :cond_fc

    if-eqz p3, :cond_f8

    invoke-static {v3, p1, v4, v0, v1}, Lcom/google/zxing/pdf417/encoder/f;->f(Lcom/google/zxing/common/e;IIILjava/lang/StringBuilder;)V

    goto :goto_10a

    :cond_f8
    invoke-static {v10, v0, v4, v0, v1}, Lcom/google/zxing/pdf417/encoder/f;->d([BIIILjava/lang/StringBuilder;)V

    goto :goto_10a

    :cond_fc
    if-eqz p3, :cond_104

    add-int v6, p1, v9

    invoke-static {v3, p1, v6, v8, v1}, Lcom/google/zxing/pdf417/encoder/f;->f(Lcom/google/zxing/common/e;IIILjava/lang/StringBuilder;)V

    goto :goto_108

    :cond_104
    array-length v6, v10

    invoke-static {v10, v0, v6, v8, v1}, Lcom/google/zxing/pdf417/encoder/f;->d([BIIILjava/lang/StringBuilder;)V

    :goto_108
    const/4 v6, 0x0

    const/4 v8, 0x1

    :goto_10a
    add-int/2addr p1, v9

    goto :goto_95

    :cond_10c
    :goto_10c
    if-eqz v8, :cond_115

    const/16 v6, 0x384

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/4 v8, 0x0

    :cond_115
    invoke-static {v3, p1, v10, v1, v6}, Lcom/google/zxing/pdf417/encoder/f;->h(Lcom/google/zxing/common/e;IILjava/lang/StringBuilder;I)I

    move-result v6

    add-int/2addr p1, v10

    goto/16 :goto_95

    :cond_11c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3, v0, p0, v1}, Lcom/google/zxing/pdf417/encoder/f;->g(Lcom/google/zxing/common/e;IILjava/lang/StringBuilder;)V

    goto :goto_13d

    :cond_123
    if-eqz p3, :cond_12d

    invoke-interface {v3}, Lcom/google/zxing/common/e;->length()I

    move-result p0

    invoke-static {v3, v0, p0, v0, v1}, Lcom/google/zxing/pdf417/encoder/f;->f(Lcom/google/zxing/common/e;IIILjava/lang/StringBuilder;)V

    goto :goto_13d

    :cond_12d
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p1, p0

    invoke-static {p0, v0, p1, v4, v1}, Lcom/google/zxing/pdf417/encoder/f;->d([BIIILjava/lang/StringBuilder;)V

    goto :goto_13d

    :cond_13a
    invoke-static {v3, v0, p0, v1, v0}, Lcom/google/zxing/pdf417/encoder/f;->h(Lcom/google/zxing/common/e;IILjava/lang/StringBuilder;I)I

    :cond_13d
    :goto_13d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_142
    new-instance p0, Lcom/google/zxing/g;

    const-string p1, "Empty message not allowed"

    invoke-direct {p0, p1}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static f(Lcom/google/zxing/common/e;IIILjava/lang/StringBuilder;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    add-int/2addr p2, p1

    invoke-interface {p0}, Lcom/google/zxing/common/e;->length()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v0, p1

    :goto_a
    if-ge v0, p2, :cond_1c

    invoke-interface {p0, v0}, Lcom/google/zxing/common/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0, v0}, Lcom/google/zxing/common/e;->b(I)I

    move-result v1

    invoke-static {v1, p4}, Lcom/google/zxing/pdf417/encoder/f;->i(ILjava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    move v1, v0

    :goto_1d
    if-ge v1, p2, :cond_28

    invoke-interface {p0, v1}, Lcom/google/zxing/common/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_28

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_28
    sub-int v2, v1, v0

    if-gtz v2, :cond_2d

    return-void

    :cond_2d
    invoke-static {p0, v0, v1}, Lcom/google/zxing/pdf417/encoder/f;->p(Lcom/google/zxing/common/e;II)[B

    move-result-object v3

    const/4 v4, 0x0

    if-ne v0, p1, :cond_36

    move v0, p3

    goto :goto_37

    :cond_36
    const/4 v0, 0x1

    :goto_37
    invoke-static {v3, v4, v2, v0, p4}, Lcom/google/zxing/pdf417/encoder/f;->d([BIIILjava/lang/StringBuilder;)V

    move v0, v1

    goto :goto_a
.end method

.method private static g(Lcom/google/zxing/common/e;IILjava/lang/StringBuilder;)V
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    div-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-wide/16 v1, 0x384

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_17
    if-ge v4, p2, :cond_6c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v5, 0x2c

    sub-int v6, p2, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v7, p1, v4

    add-int v8, v7, v5

    invoke-interface {p0, v7, v8}, Lcom/google/zxing/common/e;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_42
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_5e
    if-ltz v6, :cond_6a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    goto :goto_5e

    :cond_6a
    add-int/2addr v4, v5

    goto :goto_17

    :cond_6c
    return-void
.end method

.method private static h(Lcom/google/zxing/common/e;IILjava/lang/StringBuilder;I)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v7, p4

    const/4 v8, 0x0

    :cond_11
    :goto_11
    add-int v9, p1, v8

    invoke-interface {v0, v9}, Lcom/google/zxing/common/e;->a(I)Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-interface {v0, v9}, Lcom/google/zxing/common/e;->b(I)I

    move-result v9

    invoke-static {v9, v2}, Lcom/google/zxing/pdf417/encoder/f;->i(ILjava/lang/StringBuilder;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_23
    invoke-interface {v0, v9}, Lcom/google/zxing/common/e;->charAt(I)C

    move-result v10

    const/16 v11, 0x1a

    const/16 v12, 0x20

    const/16 v13, 0x1c

    const/16 v14, 0x1b

    const/16 v15, 0x1d

    if-eqz v7, :cond_d2

    if-eq v7, v6, :cond_99

    if-eq v7, v4, :cond_4c

    invoke-static {v10}, Lcom/google/zxing/pdf417/encoder/f;->n(C)Z

    move-result v9

    if-eqz v9, :cond_47

    sget-object v9, Lcom/google/zxing/pdf417/encoder/f;->d:[B

    aget-byte v9, v9, v10

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_108

    :cond_47
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4a
    const/4 v7, 0x0

    goto :goto_11

    :cond_4c
    invoke-static {v10}, Lcom/google/zxing/pdf417/encoder/f;->m(C)Z

    move-result v11

    if-eqz v11, :cond_5c

    sget-object v9, Lcom/google/zxing/pdf417/encoder/f;->c:[B

    aget-byte v9, v9, v10

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_108

    :cond_5c
    invoke-static {v10}, Lcom/google/zxing/pdf417/encoder/f;->k(C)Z

    move-result v11

    if-eqz v11, :cond_66

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4a

    :cond_66
    invoke-static {v10}, Lcom/google/zxing/pdf417/encoder/f;->j(C)Z

    move-result v11

    if-eqz v11, :cond_71

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_ee

    :cond_71
    add-int/lit8 v9, v9, 0x1

    if-ge v9, v1, :cond_8c

    invoke-interface {v0, v9}, Lcom/google/zxing/common/e;->a(I)Z

    move-result v11

    if-nez v11, :cond_8c

    invoke-interface {v0, v9}, Lcom/google/zxing/common/e;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/google/zxing/pdf417/encoder/f;->n(C)Z

    move-result v9

    if-eqz v9, :cond_8c

    const/4 v7, 0x3

    const/16 v9, 0x19

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_8c
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/zxing/pdf417/encoder/f;->d:[B

    aget-byte v9, v9, v10

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_108

    :cond_99
    invoke-static {v10}, Lcom/google/zxing/pdf417/encoder/f;->j(C)Z

    move-result v9

    if-eqz v9, :cond_ac

    if-ne v10, v12, :cond_a5

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_108

    :cond_a5
    add-int/lit8 v10, v10, -0x61

    int-to-char v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_108

    :cond_ac
    invoke-static {v10}, Lcom/google/zxing/pdf417/encoder/f;->k(C)Z

    move-result v9

    if-eqz v9, :cond_bc

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, -0x41

    int-to-char v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_108

    :cond_bc
    invoke-static {v10}, Lcom/google/zxing/pdf417/encoder/f;->m(C)Z

    move-result v9

    if-eqz v9, :cond_c6

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fa

    :cond_c6
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/zxing/pdf417/encoder/f;->d:[B

    aget-byte v9, v9, v10

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_108

    :cond_d2
    invoke-static {v10}, Lcom/google/zxing/pdf417/encoder/f;->k(C)Z

    move-result v9

    if-eqz v9, :cond_e5

    if-ne v10, v12, :cond_de

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_108

    :cond_de
    add-int/lit8 v10, v10, -0x41

    int-to-char v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_108

    :cond_e5
    invoke-static {v10}, Lcom/google/zxing/pdf417/encoder/f;->j(C)Z

    move-result v9

    if-eqz v9, :cond_f1

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_ee
    const/4 v7, 0x1

    goto/16 :goto_11

    :cond_f1
    invoke-static {v10}, Lcom/google/zxing/pdf417/encoder/f;->m(C)Z

    move-result v9

    if-eqz v9, :cond_fd

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_fa
    const/4 v7, 0x2

    goto/16 :goto_11

    :cond_fd
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/zxing/pdf417/encoder/f;->d:[B

    aget-byte v9, v9, v10

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_108
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v1, :cond_11

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_112
    if-ge v1, v0, :cond_130

    rem-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_11a

    const/4 v9, 0x1

    goto :goto_11b

    :cond_11a
    const/4 v9, 0x0

    :goto_11b
    if-eqz v9, :cond_129

    mul-int/lit8 v8, v8, 0x1e

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    add-int/2addr v8, v9

    int-to-char v8, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12d

    :cond_129
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    :goto_12d
    add-int/lit8 v1, v1, 0x1

    goto :goto_112

    :cond_130
    rem-int/2addr v0, v4

    if-eqz v0, :cond_13a

    mul-int/lit8 v8, v8, 0x1e

    add-int/2addr v8, v15

    int-to-char v0, v8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13a
    return v7
.end method

.method private static i(ILjava/lang/StringBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/g;
        }
    .end annotation

    const/16 v0, 0x384

    if-ltz p0, :cond_10

    if-ge p0, v0, :cond_10

    const/16 v0, 0x39f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_10
    const v1, 0xc5f94

    if-ge p0, v1, :cond_28

    const/16 v1, 0x39e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit16 v1, p0, 0x384

    add-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/2addr p0, v0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_28
    const v0, 0xc6318

    if-ge p0, v0, :cond_38

    const/16 v0, 0x39d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v1, p0

    int-to-char p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_37
    return-void

    :cond_38
    new-instance p1, Lcom/google/zxing/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ECI number not in valid range from 0..811799, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static j(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_f

    const/16 v0, 0x61

    if-lt p0, v0, :cond_d

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static k(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_f

    const/16 v0, 0x41

    if-lt p0, v0, :cond_d

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static l(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static m(C)Z
    .registers 2

    sget-object v0, Lcom/google/zxing/pdf417/encoder/f;->c:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private static n(C)Z
    .registers 2

    sget-object v0, Lcom/google/zxing/pdf417/encoder/f;->d:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private static o(C)Z
    .registers 2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    const/16 v0, 0xa

    if-eq p0, v0, :cond_17

    const/16 v0, 0xd

    if-eq p0, v0, :cond_17

    const/16 v0, 0x20

    if-lt p0, v0, :cond_15

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method static p(Lcom/google/zxing/common/e;II)[B
    .registers 7

    sub-int v0, p2, p1

    new-array v0, v0, [B

    move v1, p1

    :goto_5
    if-ge v1, p2, :cond_15

    sub-int v2, v1, p1

    invoke-interface {p0, v1}, Lcom/google/zxing/common/e;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    return-object v0
.end method
