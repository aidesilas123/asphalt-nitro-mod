###### Class com.google.zxing.pdf417.decoder.DecodedBitStreamParser (com.google.zxing.pdf417.decoder.DecodedBitStreamParser)
.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a:[C

    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->b:[C

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v1, 0x384

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v0, 0x2

    :goto_25
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v0, v3, :cond_37

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_37
    return-void
.end method

.method private static a(I[IILcom/google/zxing/common/f;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    aget v3, p1, v1

    if-ge p2, v3, :cond_8d

    if-nez v2, :cond_8d

    :goto_9
    aget v3, p1, v1

    const/16 v4, 0x39f

    if-ge p2, v3, :cond_1c

    aget v3, p1, p2

    if-ne v3, v4, :cond_1c

    add-int/lit8 p2, p2, 0x1

    aget v3, p1, p2

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/f;->d(I)V

    add-int/2addr p2, v0

    goto :goto_9

    :cond_1c
    aget v3, p1, v1

    if-ge p2, v3, :cond_8a

    aget v3, p1, p2

    const/16 v5, 0x384

    if-lt v3, v5, :cond_28

    goto/16 :goto_8a

    :cond_28
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    :goto_2b
    const-wide/16 v8, 0x384

    mul-long v6, v6, v8

    add-int/lit8 v8, p2, 0x1

    aget p2, p1, p2

    int-to-long v9, p2

    add-long/2addr v6, v9

    add-int/2addr v3, v0

    const/4 p2, 0x5

    if-ge v3, p2, :cond_44

    aget v9, p1, v1

    if-ge v8, v9, :cond_44

    aget v9, p1, v8

    if-lt v9, v5, :cond_42

    goto :goto_44

    :cond_42
    move p2, v8

    goto :goto_2b

    :cond_44
    :goto_44
    if-ne v3, p2, :cond_64

    const/16 p2, 0x39c

    if-eq p0, p2, :cond_52

    aget p2, p1, v1

    if-ge v8, p2, :cond_64

    aget p2, p1, v8

    if-ge p2, v5, :cond_64

    :cond_52
    const/4 p2, 0x0

    :goto_53
    const/4 v3, 0x6

    if-ge p2, v3, :cond_87

    rsub-int/lit8 v3, p2, 0x5

    mul-int/lit8 v3, v3, 0x8

    shr-long v3, v6, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/f;->a(B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_53

    :cond_64
    sub-int/2addr v8, v3

    :goto_65
    aget p2, p1, v1

    if-ge v8, p2, :cond_87

    if-nez v2, :cond_87

    add-int/lit8 p2, v8, 0x1

    aget v3, p1, v8

    if-ge v3, v5, :cond_77

    int-to-byte v3, v3

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/f;->a(B)V

    move v8, p2

    goto :goto_65

    :cond_77
    if-ne v3, v4, :cond_82

    add-int/lit8 v3, p2, 0x1

    aget p2, p1, p2

    invoke-virtual {p3, p2}, Lcom/google/zxing/common/f;->d(I)V

    move v8, v3

    goto :goto_65

    :cond_82
    add-int/lit8 p2, p2, -0x1

    move v8, p2

    const/4 v2, 0x1

    goto :goto_65

    :cond_87
    move p2, v8

    goto/16 :goto_3

    :cond_8a
    :goto_8a
    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_8d
    return p2
.end method

.method static b([ILjava/lang/String;)Lcom/google/zxing/common/b;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    new-instance v0, Lcom/google/zxing/common/f;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/zxing/common/f;-><init>(I)V

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->g([IILcom/google/zxing/common/f;)I

    move-result v1

    new-instance v2, Lcom/google/zxing/pdf417/a;

    invoke-direct {v2}, Lcom/google/zxing/pdf417/a;-><init>()V

    :goto_12
    const/4 v3, 0x0

    aget v3, p0, v3

    if-ge v1, v3, :cond_5d

    add-int/lit8 v3, v1, 0x1

    aget v1, p0, v1

    const/16 v4, 0x391

    if-eq v1, v4, :cond_54

    packed-switch v1, :pswitch_data_7e

    packed-switch v1, :pswitch_data_88

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->g([IILcom/google/zxing/common/f;)I

    move-result v1

    goto :goto_12

    :pswitch_2c
    invoke-static {p0, v3, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->d([IILcom/google/zxing/pdf417/a;)I

    move-result v1

    goto :goto_12

    :pswitch_31
    add-int/lit8 v1, v3, 0x1

    aget v3, p0, v3

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/f;->d(I)V

    goto :goto_12

    :pswitch_39
    add-int/lit8 v3, v3, 0x2

    goto :goto_3e

    :pswitch_3c
    add-int/lit8 v3, v3, 0x1

    :goto_3e
    move v1, v3

    goto :goto_12

    :pswitch_40
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_45
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->f([IILcom/google/zxing/common/f;)I

    move-result v1

    goto :goto_12

    :pswitch_4a
    invoke-static {v1, p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a(I[IILcom/google/zxing/common/f;)I

    move-result v1

    goto :goto_12

    :pswitch_4f
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->g([IILcom/google/zxing/common/f;)I

    move-result v1

    goto :goto_12

    :cond_54
    add-int/lit8 v1, v3, 0x1

    aget v3, p0, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/f;->b(C)V

    goto :goto_12

    :cond_5d
    invoke-virtual {v0}, Lcom/google/zxing/common/f;->f()Z

    move-result p0

    if-eqz p0, :cond_6f

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/a;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6a

    goto :goto_6f

    :cond_6a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_6f
    :goto_6f
    new-instance p0, Lcom/google/zxing/common/b;

    invoke-virtual {v0}, Lcom/google/zxing/common/f;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/b;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/b;->c(Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_7e
    .packed-switch 0x384
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x39a
        :pswitch_40
        :pswitch_40
        :pswitch_4a
        :pswitch_3c
        :pswitch_39
        :pswitch_31
        :pswitch_2c
    .end packed-switch
.end method

.method private static c([II)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x1

    if-ge v2, p1, :cond_20

    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:[Ljava/math/BigInteger;

    sub-int v5, p1, v2

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_20
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_31

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method static d([IILcom/google/zxing/pdf417/a;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    aget v2, p0, v1

    if-gt v0, v2, :cond_15f

    const/4 v0, 0x2

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_16

    aget v4, p0, p1

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_16
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {p2, v1}, Lcom/google/zxing/pdf417/a;->k(I)V

    goto :goto_2b

    :cond_24
    :try_start_24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/a;->k(I)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2b} :catch_15a

    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_30
    aget v2, p0, v1

    const/16 v3, 0x39a

    const/16 v4, 0x39b

    const/4 v5, 0x1

    if-ge p1, v2, :cond_5a

    array-length v2, p0

    if-ge p1, v2, :cond_5a

    aget v2, p0, p1

    if-eq v2, v3, :cond_5a

    aget v2, p0, p1

    if-eq v2, v4, :cond_5a

    new-array v2, v5, [Ljava/lang/Object;

    aget v3, p0, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "%03d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_30

    :cond_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_155

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/a;->e(Ljava/lang/String;)V

    aget v0, p0, p1

    const/4 v2, -0x1

    if-ne v0, v4, :cond_6f

    add-int/lit8 v0, p1, 0x1

    goto :goto_70

    :cond_6f
    const/4 v0, -0x1

    :goto_70
    aget v6, p0, v1

    if-ge p1, v6, :cond_13e

    aget v6, p0, p1

    if-eq v6, v3, :cond_137

    if-ne v6, v4, :cond_132

    add-int/lit8 p1, p1, 0x1

    aget v6, p0, p1

    packed-switch v6, :pswitch_data_164

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_86
    new-instance v6, Lcom/google/zxing/common/f;

    invoke-direct {v6}, Lcom/google/zxing/common/f;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->f([IILcom/google/zxing/common/f;)I

    move-result p1

    :try_start_91
    invoke-virtual {v6}, Lcom/google/zxing/common/f;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/a;->d(I)V
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_9c} :catch_9d

    goto :goto_70

    :catch_9d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_a2
    new-instance v6, Lcom/google/zxing/common/f;

    invoke-direct {v6}, Lcom/google/zxing/common/f;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->f([IILcom/google/zxing/common/f;)I

    move-result p1

    :try_start_ad
    invoke-virtual {v6}, Lcom/google/zxing/common/f;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lcom/google/zxing/pdf417/a;->g(J)V
    :try_end_b8
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_b8} :catch_b9

    goto :goto_70

    :catch_b9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_be
    new-instance v6, Lcom/google/zxing/common/f;

    invoke-direct {v6}, Lcom/google/zxing/common/f;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->g([IILcom/google/zxing/common/f;)I

    move-result p1

    invoke-virtual {v6}, Lcom/google/zxing/common/f;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/a;->c(Ljava/lang/String;)V

    goto :goto_70

    :pswitch_d1
    new-instance v6, Lcom/google/zxing/common/f;

    invoke-direct {v6}, Lcom/google/zxing/common/f;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->g([IILcom/google/zxing/common/f;)I

    move-result p1

    invoke-virtual {v6}, Lcom/google/zxing/common/f;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/a;->l(Ljava/lang/String;)V

    goto :goto_70

    :pswitch_e4
    new-instance v6, Lcom/google/zxing/common/f;

    invoke-direct {v6}, Lcom/google/zxing/common/f;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->f([IILcom/google/zxing/common/f;)I

    move-result p1

    :try_start_ef
    invoke-virtual {v6}, Lcom/google/zxing/common/f;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lcom/google/zxing/pdf417/a;->m(J)V
    :try_end_fa
    .catch Ljava/lang/NumberFormatException; {:try_start_ef .. :try_end_fa} :catch_fc

    goto/16 :goto_70

    :catch_fc
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_101
    new-instance v6, Lcom/google/zxing/common/f;

    invoke-direct {v6}, Lcom/google/zxing/common/f;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->f([IILcom/google/zxing/common/f;)I

    move-result p1

    :try_start_10c
    invoke-virtual {v6}, Lcom/google/zxing/common/f;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/a;->j(I)V
    :try_end_117
    .catch Ljava/lang/NumberFormatException; {:try_start_10c .. :try_end_117} :catch_119

    goto/16 :goto_70

    :catch_119
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_11e
    new-instance v6, Lcom/google/zxing/common/f;

    invoke-direct {v6}, Lcom/google/zxing/common/f;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->g([IILcom/google/zxing/common/f;)I

    move-result p1

    invoke-virtual {v6}, Lcom/google/zxing/common/f;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/a;->f(Ljava/lang/String;)V

    goto/16 :goto_70

    :cond_132
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_137
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/a;->h(Z)V

    goto/16 :goto_70

    :cond_13e
    if-eq v0, v2, :cond_154

    sub-int v1, p1, v0

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/a;->b()Z

    move-result v2

    if-eqz v2, :cond_14a

    add-int/lit8 v1, v1, -0x1

    :cond_14a
    if-lez v1, :cond_154

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/a;->i([I)V

    :cond_154
    return p1

    :cond_155
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :catch_15a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_15f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_11e
        :pswitch_101
        :pswitch_e4
        :pswitch_d1
        :pswitch_be
        :pswitch_a2
        :pswitch_86
    .end packed-switch
.end method

.method private static e([I[IILcom/google/zxing/common/f;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    .registers 20

    move-object/from16 v0, p3

    const/4 v1, 0x0

    move/from16 v5, p2

    move-object/from16 v2, p4

    move-object v3, v2

    move-object v4, v3

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_f2

    aget v7, p0, v6

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/16 v9, 0x20

    const/16 v10, 0x1d

    const/16 v11, 0x1a

    const/16 v12, 0x391

    const/16 v13, 0x384

    packed-switch v8, :pswitch_data_f4

    :goto_23
    move-object v7, v4

    move-object v4, v3

    :goto_25
    const/4 v3, 0x0

    goto/16 :goto_e7

    :pswitch_28
    if-ge v7, v10, :cond_2f

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a:[C

    aget-char v3, v3, v7

    goto :goto_46

    :cond_2f
    if-eq v7, v10, :cond_3e

    if-eq v7, v13, :cond_3e

    if-eq v7, v12, :cond_36

    goto :goto_3c

    :cond_36
    aget v3, p1, v6

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/f;->b(C)V

    :goto_3c
    move-object v7, v4

    goto :goto_25

    :cond_3e
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_23

    :pswitch_41
    if-ge v7, v11, :cond_49

    add-int/lit8 v7, v7, 0x41

    int-to-char v3, v7

    :goto_46
    move-object v7, v4

    goto/16 :goto_e7

    :cond_49
    if-eq v7, v11, :cond_54

    if-eq v7, v13, :cond_50

    move-object v3, v4

    goto/16 :goto_df

    :cond_50
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_df

    :cond_54
    move-object v3, v4

    goto/16 :goto_e4

    :pswitch_57
    if-ge v7, v10, :cond_5f

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a:[C

    aget-char v7, v8, v7

    goto/16 :goto_be

    :cond_5f
    if-eq v7, v10, :cond_6d

    if-eq v7, v13, :cond_6d

    if-eq v7, v12, :cond_66

    goto :goto_23

    :cond_66
    aget v7, p1, v6

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/f;->b(C)V

    goto :goto_23

    :cond_6d
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v3, v2

    goto :goto_23

    :pswitch_71
    const/16 v8, 0x19

    if-ge v7, v8, :cond_7a

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->b:[C

    aget-char v7, v8, v7

    goto :goto_be

    :cond_7a
    if-eq v7, v13, :cond_95

    if-eq v7, v12, :cond_8e

    packed-switch v7, :pswitch_data_104

    goto/16 :goto_df

    :pswitch_83
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->f:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_cd

    :pswitch_86
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->b:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_8b

    :pswitch_89
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->d:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_8b
    move-object v3, v2

    goto/16 :goto_df

    :cond_8e
    aget v7, p1, v6

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/f;->b(C)V

    goto :goto_df

    :cond_95
    :pswitch_95
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_8b

    :pswitch_98
    if-ge v7, v11, :cond_9d

    add-int/lit8 v7, v7, 0x61

    goto :goto_bd

    :cond_9d
    if-eq v7, v13, :cond_b6

    if-eq v7, v12, :cond_af

    packed-switch v7, :pswitch_data_112

    goto :goto_df

    :pswitch_a5
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->f:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_cd

    :pswitch_a8
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->c:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_aa
    move-object v3, v2

    goto :goto_df

    :pswitch_ac
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->e:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_cd

    :cond_af
    aget v7, p1, v6

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/f;->b(C)V

    goto :goto_df

    :cond_b6
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_aa

    :pswitch_b9
    if-ge v7, v11, :cond_c3

    add-int/lit8 v7, v7, 0x41

    :goto_bd
    int-to-char v7, v7

    :goto_be
    move-object v14, v4

    move-object v4, v3

    move v3, v7

    move-object v7, v14

    goto :goto_e7

    :cond_c3
    if-eq v7, v13, :cond_e1

    if-eq v7, v12, :cond_d9

    packed-switch v7, :pswitch_data_11e

    goto :goto_df

    :pswitch_cb
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->f:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_cd
    const/4 v9, 0x0

    move-object v14, v4

    move-object v4, v3

    move-object v3, v14

    goto :goto_e4

    :pswitch_d2
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->c:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_d7

    :pswitch_d5
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->b:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_d7
    move-object v3, v2

    goto :goto_df

    :cond_d9
    aget v7, p1, v6

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/f;->b(C)V

    :goto_df
    const/4 v9, 0x0

    goto :goto_e4

    :cond_e1
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_d7

    :goto_e4
    :pswitch_e4
    move-object v7, v4

    move-object v4, v3

    move v3, v9

    :goto_e7
    if-eqz v3, :cond_ec

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/f;->b(C)V

    :cond_ec
    add-int/lit8 v6, v6, 0x1

    move-object v3, v4

    move-object v4, v7

    goto/16 :goto_a

    :cond_f2
    return-object v2

    nop

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_98
        :pswitch_71
        :pswitch_57
        :pswitch_41
        :pswitch_28
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x19
        :pswitch_89
        :pswitch_e4
        :pswitch_86
        :pswitch_95
        :pswitch_83
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0x1a
        :pswitch_e4
        :pswitch_ac
        :pswitch_a8
        :pswitch_a5
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x1a
        :pswitch_e4
        :pswitch_d5
        :pswitch_d2
        :pswitch_cb
    .end packed-switch
.end method

.method private static f([IILcom/google/zxing/common/f;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    aget v4, p0, v1

    if-ge p1, v4, :cond_4b

    if-nez v2, :cond_4b

    add-int/lit8 v4, p1, 0x1

    aget p1, p0, p1

    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_17

    const/4 v2, 0x1

    :cond_17
    const/16 v5, 0x384

    if-ge p1, v5, :cond_20

    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_20
    if-eq p1, v5, :cond_32

    const/16 v5, 0x385

    if-eq p1, v5, :cond_32

    const/16 v5, 0x39f

    if-eq p1, v5, :cond_32

    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_32

    packed-switch p1, :pswitch_data_4c

    goto :goto_35

    :cond_32
    :pswitch_32
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    :goto_35
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_3f

    const/16 v5, 0x386

    if-eq p1, v5, :cond_3f

    if-eqz v2, :cond_49

    :cond_3f
    if-lez v3, :cond_49

    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/zxing/common/f;->c(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_49
    move p1, v4

    goto :goto_7

    :cond_4b
    return p1

    :pswitch_data_4c
    .packed-switch 0x39a
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method private static g([IILcom/google/zxing/common/f;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    aget v2, p0, v0

    sub-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->a:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    aget v6, p0, v0

    if-ge p1, v6, :cond_80

    if-nez v4, :cond_80

    add-int/lit8 v6, p1, 0x1

    aget p1, p0, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_2e

    div-int/lit8 v7, p1, 0x1e

    aput v7, v1, v5

    add-int/lit8 v7, v5, 0x1

    rem-int/lit8 p1, p1, 0x1e

    aput p1, v1, v7

    add-int/lit8 v5, v5, 0x2

    goto :goto_40

    :cond_2e
    const/16 v8, 0x391

    if-eq p1, v8, :cond_75

    const/16 v8, 0x39f

    if-eq p1, v8, :cond_4c

    const/16 v8, 0x3a0

    if-eq p1, v8, :cond_48

    packed-switch p1, :pswitch_data_84

    packed-switch p1, :pswitch_data_8e

    :goto_40
    move p1, v6

    goto :goto_13

    :pswitch_42
    add-int/lit8 p1, v5, 0x1

    aput v7, v1, v5

    move v5, p1

    goto :goto_40

    :cond_48
    :pswitch_48
    add-int/lit8 v6, v6, -0x1

    const/4 v4, 0x1

    goto :goto_40

    :cond_4c
    invoke-static {v1, v2, v5, p2, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->e([I[IILcom/google/zxing/common/f;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-result-object p1

    add-int/lit8 v1, v6, 0x1

    aget v2, p0, v6

    invoke-virtual {p2, v2}, Lcom/google/zxing/common/f;->d(I)V

    aget v2, p0, v0

    if-gt v1, v2, :cond_70

    aget v2, p0, v0

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    aget v3, p0, v0

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    const/4 v5, 0x0

    move-object v9, v3

    move-object v3, p1

    move p1, v1

    move-object v1, v2

    move-object v2, v9

    goto :goto_13

    :cond_70
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_75
    aput v8, v1, v5

    add-int/lit8 p1, v6, 0x1

    aget v6, p0, v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_80
    invoke-static {v1, v2, v5, p2, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->e([I[IILcom/google/zxing/common/f;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    return p1

    :pswitch_data_84
    .packed-switch 0x384
        :pswitch_42
        :pswitch_48
        :pswitch_48
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x39a
        :pswitch_48
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method
