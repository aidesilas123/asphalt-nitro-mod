###### Class com.applovin.impl.sdk.utils.p (com.applovin.impl.sdk.utils.p)
.class public Lcom/applovin/impl/sdk/utils/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/utils/p$a;
    }
.end annotation


# static fields
.field private static final aVS:[B

.field private static final aVT:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_1a

    sput-object v1, Lcom/applovin/impl/sdk/utils/p;->aVS:[B

    new-array v0, v0, [B

    sput-object v0, Lcom/applovin/impl/sdk/utils/p;->aVT:[B

    const/16 v1, 0x15

    new-array v2, v1, [B

    fill-array-data v2, :array_2e

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    nop

    :array_1a
    .array-data 1
        -0x53t
        -0x62t
        -0x35t
        -0x70t
        -0x1dt
        -0x76t
        0x37t
        0x75t
        0x3bt
        0x8t
        -0xct
        -0xft
        0x49t
        0x6et
        -0x43t
        0x39t
        0x75t
        0x4t
        -0x1at
        0x61t
        0x42t
        -0xct
        0x7dt
        0x5bt
        -0x77t
        -0x67t
        -0x1et
        0x72t
        0x7bt
        0x36t
        0x33t
        -0x4dt
    .end array-data

    :array_2e
    .array-data 1
        0x12t
        0xct
        0x1ct
        0x14t
        0x11t
        0x17t
        0x1at
        0x9t
        0x15t
        0x3t
        0xet
        0x1dt
        0x4t
        0x0t
        0x2t
        0x7t
        0xat
        0x1dt
        0x6t
        0x14t
        0x1t
    .end array-data
.end method

.method public static N([B)Lcom/applovin/impl/sdk/utils/p$a;
    .registers 2

    if-eqz p0, :cond_1b

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_1b

    :cond_6
    const/4 v0, 0x0

    aget-byte p0, p0, v0

    int-to-char p0, p0

    const/16 v0, 0x32

    if-ne p0, v0, :cond_11

    sget-object p0, Lcom/applovin/impl/sdk/utils/p$a;->aVW:Lcom/applovin/impl/sdk/utils/p$a;

    return-object p0

    :cond_11
    const/16 v0, 0x7b

    if-ne p0, v0, :cond_18

    sget-object p0, Lcom/applovin/impl/sdk/utils/p$a;->aVU:Lcom/applovin/impl/sdk/utils/p$a;

    return-object p0

    :cond_18
    sget-object p0, Lcom/applovin/impl/sdk/utils/p$a;->aVV:Lcom/applovin/impl/sdk/utils/p$a;

    return-object p0

    :cond_1b
    :goto_1b
    sget-object p0, Lcom/applovin/impl/sdk/utils/p$a;->aVU:Lcom/applovin/impl/sdk/utils/p$a;

    return-object p0
.end method

.method private static O([B)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/p;->P([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static P([B)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 p0, 0x2b

    const/16 v1, 0x2d

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3d

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([BB)I
    .registers 5

    const/4 v0, -0x1

    if-eqz p0, :cond_13

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_13

    :cond_7
    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    aget-byte v2, p0, v1

    if-ne v2, p1, :cond_10

    return v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    :goto_13
    return v0
.end method

.method public static a(Ljava/lang/String;JLcom/applovin/impl/sdk/utils/p$a;Ljava/lang/String;Lcom/applovin/impl/sdk/n;)Ljava/lang/String;
    .registers 13

    if-eqz p4, :cond_3a

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-lt v0, v1, :cond_32

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p0

    :cond_11
    sget-object v0, Lcom/applovin/impl/sdk/utils/p$a;->aVU:Lcom/applovin/impl/sdk/utils/p$a;

    if-ne v0, p3, :cond_16

    return-object p0

    :cond_16
    sget-object v0, Lcom/applovin/impl/sdk/utils/p$a;->aVW:Lcom/applovin/impl/sdk/utils/p$a;

    if-ne v0, p3, :cond_24

    const/4 v4, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;JZLjava/lang/String;Lcom/applovin/impl/sdk/n;)[B

    move-result-object p0

    goto :goto_28

    :cond_24
    invoke-static {p0, p1, p2, p4, p5}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;JLjava/lang/String;Lcom/applovin/impl/sdk/n;)[B

    move-result-object p0

    :goto_28
    if-eqz p0, :cond_30

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :cond_30
    const/4 p0, 0x0

    return-object p0

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SDK key is too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No SDK key specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a([BLcom/applovin/impl/sdk/n;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object p1

    const-string v0, "AppLovinSdk"

    const-string v1, "SHA1"

    invoke-virtual {p1, v0, v1, p0}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "SHA-1 algorithm not found"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a([BLjava/lang/String;Lcom/applovin/impl/sdk/n;)Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-lt v0, v1, :cond_35

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    array-length v0, p0

    if-nez v0, :cond_14

    const-string p0, ""

    return-object p0

    :cond_14
    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/p;->N([B)Lcom/applovin/impl/sdk/utils/p$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/utils/p$a;->aVU:Lcom/applovin/impl/sdk/utils/p$a;

    if-ne v1, v0, :cond_22

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :cond_22
    sget-object v1, Lcom/applovin/impl/sdk/utils/p$a;->aVW:Lcom/applovin/impl/sdk/utils/p$a;

    if-ne v0, v1, :cond_2b

    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/p;->b([BLjava/lang/String;Lcom/applovin/impl/sdk/n;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/p;->b(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/n;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SDK key is too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No SDK key specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/String;JLjava/lang/String;Lcom/applovin/impl/sdk/n;)[B
    .registers 27

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, ":"

    const-string v3, "UTF-8"

    const/16 v4, 0x20

    :try_start_a
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, p0

    invoke-virtual {v7, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    sget-object v8, Lcom/applovin/impl/sdk/utils/p;->aVS:[B

    invoke-static {v0, v8, v1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;[BLcom/applovin/impl/sdk/n;)[B

    move-result-object v0

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    shr-long v9, p1, v6

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v10, v9

    int-to-byte v9, v10

    aget-byte v10, v0, v6

    xor-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v9, 0x8

    shr-long v13, p1, v9

    and-long/2addr v13, v11

    long-to-int v10, v13

    int-to-byte v10, v10

    const/4 v13, 0x1

    aget-byte v13, v0, v13

    xor-int/2addr v10, v13

    invoke-virtual {v8, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v10, 0x10

    shr-long v13, p1, v10

    and-long/2addr v13, v11

    long-to-int v14, v13

    int-to-byte v13, v14

    const/4 v14, 0x2

    aget-byte v14, v0, v14

    xor-int/2addr v13, v14

    invoke-virtual {v8, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v13, 0x18

    shr-long v14, p1, v13

    and-long/2addr v14, v11

    long-to-int v15, v14

    int-to-byte v14, v15

    const/4 v15, 0x3

    aget-byte v15, v0, v15

    xor-int/2addr v14, v15

    invoke-virtual {v8, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-long v14, p1, v4

    and-long/2addr v14, v11

    long-to-int v15, v14

    int-to-byte v14, v15

    const/4 v15, 0x4

    aget-byte v15, v0, v15

    xor-int/2addr v14, v15

    invoke-virtual {v8, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v14, 0x28

    shr-long v15, p1, v14

    and-long v14, v15, v11

    long-to-int v15, v14

    int-to-byte v14, v15

    const/4 v15, 0x5

    aget-byte v15, v0, v15

    xor-int/2addr v14, v15

    invoke-virtual {v8, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v14, 0x30

    shr-long v15, p1, v14

    and-long v14, v15, v11

    long-to-int v15, v14

    int-to-byte v14, v15

    const/4 v15, 0x6

    aget-byte v15, v0, v15

    xor-int/2addr v14, v15

    invoke-virtual {v8, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v14, 0x38

    shr-long v15, p1, v14

    and-long v14, v15, v11

    long-to-int v15, v14

    int-to-byte v14, v15

    const/4 v15, 0x7

    aget-byte v15, v0, v15

    xor-int/2addr v14, v15

    invoke-virtual {v8, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v14, 0x0

    :goto_95
    array-length v15, v7

    if-ge v14, v15, :cond_1a3

    int-to-long v9, v14

    add-long v9, p1, v9

    const/16 v17, 0x21

    shr-long v17, v9, v17

    xor-long v9, v9, v17

    const-wide v17, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v9, v9, v17

    const/16 v17, 0x1d

    shr-long v17, v9, v17

    xor-long v9, v9, v17

    const-wide v17, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    mul-long v9, v9, v17

    shr-long v17, v9, v4

    xor-long v9, v9, v17

    add-int/lit8 v15, v14, 0x0

    array-length v4, v7

    if-lt v15, v4, :cond_c0

    const/4 v4, 0x0

    goto :goto_c2

    :cond_c0
    aget-byte v4, v7, v15

    :goto_c2
    array-length v13, v0

    rem-int/2addr v15, v13

    aget-byte v13, v0, v15

    xor-int/2addr v4, v13

    move-object v13, v3

    int-to-long v3, v4

    shr-long v20, v9, v6

    and-long v20, v20, v11

    xor-long v3, v3, v20

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v14, 0x1

    array-length v4, v7

    if-lt v3, v4, :cond_db

    const/4 v4, 0x0

    goto :goto_dd

    :cond_db
    aget-byte v4, v7, v3

    :goto_dd
    array-length v15, v0

    rem-int/2addr v3, v15

    aget-byte v3, v0, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    const/16 v15, 0x8

    shr-long v20, v9, v15

    and-long v20, v20, v11

    xor-long v3, v3, v20

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v14, 0x2

    array-length v4, v7

    if-lt v3, v4, :cond_f7

    const/4 v4, 0x0

    goto :goto_f9

    :cond_f7
    aget-byte v4, v7, v3

    :goto_f9
    array-length v6, v0

    rem-int/2addr v3, v6

    aget-byte v3, v0, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    const/16 v6, 0x10

    shr-long v20, v9, v6

    and-long v20, v20, v11

    xor-long v3, v3, v20

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v14, 0x3

    array-length v4, v7

    if-lt v3, v4, :cond_113

    const/4 v4, 0x0

    goto :goto_115

    :cond_113
    aget-byte v4, v7, v3

    :goto_115
    array-length v6, v0

    rem-int/2addr v3, v6

    aget-byte v3, v0, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    const/16 v6, 0x18

    shr-long v19, v9, v6

    and-long v19, v19, v11

    xor-long v3, v3, v19

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v14, 0x4

    array-length v4, v7

    if-lt v3, v4, :cond_12f

    const/4 v4, 0x0

    goto :goto_131

    :cond_12f
    aget-byte v4, v7, v3

    :goto_131
    array-length v6, v0

    rem-int/2addr v3, v6

    aget-byte v3, v0, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    const/16 v6, 0x20

    shr-long v20, v9, v6

    and-long v20, v20, v11

    xor-long v3, v3, v20

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v14, 0x5

    array-length v4, v7

    if-lt v3, v4, :cond_14b

    const/4 v4, 0x0

    goto :goto_14d

    :cond_14b
    aget-byte v4, v7, v3

    :goto_14d
    array-length v6, v0

    rem-int/2addr v3, v6

    aget-byte v3, v0, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    const/16 v6, 0x28

    shr-long v20, v9, v6

    and-long v20, v20, v11

    xor-long v3, v3, v20

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v14, 0x6

    array-length v4, v7

    if-lt v3, v4, :cond_167

    const/4 v4, 0x0

    goto :goto_169

    :cond_167
    aget-byte v4, v7, v3

    :goto_169
    array-length v6, v0

    rem-int/2addr v3, v6

    aget-byte v3, v0, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    const/16 v6, 0x30

    shr-long v20, v9, v6

    and-long v20, v20, v11

    xor-long v3, v3, v20

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v14, 0x7

    array-length v4, v7

    if-lt v3, v4, :cond_183

    const/4 v4, 0x0

    goto :goto_185

    :cond_183
    aget-byte v4, v7, v3

    :goto_185
    array-length v6, v0

    rem-int/2addr v3, v6

    aget-byte v3, v0, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    const/16 v6, 0x38

    shr-long/2addr v9, v6

    and-long/2addr v9, v11

    xor-long/2addr v3, v9

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v14, v14, 0x8

    move-object v3, v13

    const/16 v4, 0x20

    const/4 v6, 0x0

    const/16 v9, 0x8

    const/16 v10, 0x10

    const/16 v13, 0x18

    goto/16 :goto_95

    :cond_1a3
    move-object v13, v3

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/p;->O([B)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/applovin/impl/sdk/utils/p;->aVS:[B

    invoke-static {v3, v1}, Lcom/applovin/impl/sdk/utils/p;->a([BLcom/applovin/impl/sdk/n;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v13

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1d4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_1d4} :catch_1d5

    return-object v0

    :catch_1d5
    move-exception v0

    invoke-virtual/range {p4 .. p4}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    const-string v2, "AppLovinSdk"

    const-string v3, "encode"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Ljava/lang/String;JZLjava/lang/String;Lcom/applovin/impl/sdk/n;)[B
    .registers 16

    const-string v0, "encode2"

    const-string v1, "AppLovinSdk"

    :try_start_4
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length v2, p0

    const/16 v3, 0x20

    invoke-virtual {p4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    sget-object v3, Lcom/applovin/impl/sdk/utils/p;->aVT:[B

    invoke-static {p4, v3, p5}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;[BLcom/applovin/impl/sdk/n;)[B

    move-result-object p4

    invoke-static {p4}, Lcom/applovin/impl/sdk/utils/u;->T([B)J

    move-result-wide v6

    xor-long/2addr v6, p1

    invoke-static {v3, p5}, Lcom/applovin/impl/sdk/utils/p;->a([BLcom/applovin/impl/sdk/n;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "2:%s:%s:"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v5

    const/4 v3, 0x1

    aput-object v4, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-long v8, v2

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/u;->R([B)[B

    move-result-object p0

    invoke-static {p0, p1, p2, p4}, Lcom/applovin/impl/sdk/utils/p;->a([BJ[B)[B

    move-result-object p0

    if-eqz p3, :cond_7d

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/p;->O([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/p;->O([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p2, v3

    array-length p3, p1

    add-int/2addr p2, p3

    array-length p3, p0

    add-int/2addr p2, p3

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_92

    :cond_7d
    array-length p1, v3

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    add-int/2addr p1, p2

    array-length p2, p0

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_92
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0
    :try_end_99
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_99} :catch_a4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_99} :catch_9a

    return-object p0

    :catch_9a
    move-exception p0

    invoke-virtual {p5}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object p1

    invoke-virtual {p1, v1, v0, p0}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :catch_a4
    move-exception p0

    invoke-virtual {p5}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object p1

    invoke-virtual {p1, v1, v0, p0}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "UTF-8 encoding not found"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Ljava/lang/String;[BLcom/applovin/impl/sdk/n;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object p1

    const-string p2, "AppLovinSdk"

    const-string v0, "SHA256"

    invoke-virtual {p1, p2, v0, p0}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SHA-256 algorithm not found"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a([BJ[B)[B
    .registers 15

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/4 v1, 0x0

    move-wide v2, p1

    :goto_7
    array-length v4, p0

    if-ge v1, v4, :cond_47

    rem-int/lit8 v4, v1, 0x8

    if-nez v4, :cond_2d

    int-to-long v2, v1

    add-long/2addr v2, p1

    const/16 v5, 0x21

    ushr-long v5, v2, v5

    xor-long/2addr v2, v5

    const-wide v5, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v2, v2, v5

    const/16 v5, 0x1d

    ushr-long v5, v2, v5

    xor-long/2addr v2, v5

    const-wide v5, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    mul-long v2, v2, v5

    const/16 v5, 0x20

    ushr-long v5, v2, v5

    xor-long/2addr v2, v5

    :cond_2d
    mul-int/lit8 v4, v4, 0x8

    aget-byte v5, v0, v1

    array-length v6, p3

    rem-int v6, v1, v6

    aget-byte v6, p3, v6

    shr-long v7, v2, v4

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    int-to-long v9, v6

    xor-long v6, v7, v9

    int-to-long v4, v5

    xor-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_47
    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/n;)Ljava/lang/String;
    .registers 38

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "decode"

    const-string v3, "AppLovinSdk"

    const-string v4, ":"

    move-object/from16 v5, p0

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v6, v4, v5

    const/4 v7, 0x0

    :try_start_14
    const-string v8, "1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d9

    array-length v6, v4

    const/4 v8, 0x4

    if-eq v6, v8, :cond_21

    return-object v7

    :cond_21
    const/4 v6, 0x1

    aget-object v9, v4, v6

    const/4 v10, 0x2

    aget-object v11, v4, v10

    const/4 v12, 0x3

    aget-object v4, v4, v12

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/p;->dB(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_35

    return-object v7

    :cond_35
    sget-object v11, Lcom/applovin/impl/sdk/utils/p;->aVS:[B

    invoke-static {v11, v1}, Lcom/applovin/impl/sdk/utils/p;->a([BLcom/applovin/impl/sdk/n;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d7

    const/16 v9, 0x20

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11, v1}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;[BLcom/applovin/impl/sdk/n;)[B

    move-result-object v0

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v11}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    aget-byte v13, v0, v5

    xor-int/2addr v4, v13

    and-int/lit16 v4, v4, 0xff

    int-to-long v13, v4

    shl-long/2addr v13, v5

    invoke-virtual {v11}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    aget-byte v15, v0, v6
    :try_end_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_61} :catch_1ea
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_61} :catch_1db

    xor-int/2addr v4, v15

    and-int/lit16 v4, v4, 0xff

    int-to-long v6, v4

    const/16 v4, 0x8

    shl-long/2addr v6, v4

    or-long/2addr v6, v13

    :try_start_69
    invoke-virtual {v11}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    aget-byte v14, v0, v10

    xor-int/2addr v13, v14

    and-int/lit16 v13, v13, 0xff

    int-to-long v13, v13

    const/16 v16, 0x10

    shl-long v13, v13, v16

    or-long/2addr v6, v13

    invoke-virtual {v11}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    aget-byte v14, v0, v12

    xor-int/2addr v13, v14

    and-int/lit16 v13, v13, 0xff

    int-to-long v13, v13

    const/16 v17, 0x18

    shl-long v13, v13, v17

    or-long/2addr v6, v13

    invoke-virtual {v11}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    aget-byte v14, v0, v8

    xor-int/2addr v13, v14

    and-int/lit16 v13, v13, 0xff

    int-to-long v13, v13

    shl-long/2addr v13, v9

    or-long/2addr v6, v13

    invoke-virtual {v11}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    const/4 v14, 0x5

    aget-byte v18, v0, v14

    xor-int v13, v13, v18

    and-int/lit16 v13, v13, 0xff

    int-to-long v14, v13

    const/16 v13, 0x28

    shl-long/2addr v14, v13

    or-long/2addr v6, v14

    invoke-virtual {v11}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    const/4 v15, 0x6

    aget-byte v19, v0, v15

    xor-int v14, v14, v19

    and-int/lit16 v14, v14, 0xff

    int-to-long v13, v14

    const/16 v20, 0x30

    shl-long v13, v13, v20

    or-long/2addr v6, v13

    invoke-virtual {v11}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    const/4 v14, 0x7

    aget-byte v21, v0, v14

    xor-int v13, v13, v21

    and-int/lit16 v13, v13, 0xff

    int-to-long v14, v13

    const/16 v13, 0x38

    shl-long/2addr v14, v13

    or-long/2addr v6, v14

    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v15, v4, [B

    invoke-virtual {v11, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v22

    const/4 v13, 0x0

    :goto_d0
    if-ltz v22, :cond_1c4

    move-object/from16 v23, v11

    int-to-long v10, v13

    add-long/2addr v10, v6

    const/16 v24, 0x21

    shr-long v24, v10, v24

    xor-long v10, v10, v24

    const-wide v24, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v10, v10, v24

    const/16 v24, 0x1d

    shr-long v24, v10, v24

    xor-long v10, v10, v24

    const-wide v24, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    mul-long v10, v10, v24

    shr-long v24, v10, v9

    xor-long v10, v10, v24

    aget-byte v24, v15, v5

    add-int/lit8 v25, v13, 0x0

    array-length v9, v0

    rem-int v25, v25, v9

    aget-byte v9, v0, v25

    xor-int v9, v24, v9

    int-to-long v8, v9

    shr-long v27, v10, v5

    const-wide/16 v29, 0xff

    and-long v27, v27, v29

    xor-long v8, v8, v27

    long-to-int v9, v8

    int-to-byte v8, v9

    invoke-virtual {v14, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x1

    aget-byte v9, v15, v8

    add-int/lit8 v25, v13, 0x1

    array-length v5, v0

    rem-int v25, v25, v5

    aget-byte v5, v0, v25

    xor-int/2addr v5, v9

    int-to-long v8, v5

    shr-long v31, v10, v4

    and-long v31, v31, v29

    xor-long v8, v8, v31

    long-to-int v5, v8

    int-to-byte v5, v5

    invoke-virtual {v14, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x2

    aget-byte v8, v15, v5

    add-int/lit8 v9, v13, 0x2

    array-length v4, v0

    rem-int/2addr v9, v4

    aget-byte v4, v0, v9

    xor-int/2addr v4, v8

    int-to-long v8, v4

    shr-long v31, v10, v16

    and-long v31, v31, v29

    xor-long v8, v8, v31

    long-to-int v4, v8

    int-to-byte v4, v4

    invoke-virtual {v14, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    aget-byte v4, v15, v12

    add-int/lit8 v8, v13, 0x3

    array-length v9, v0

    rem-int/2addr v8, v9

    aget-byte v8, v0, v8

    xor-int/2addr v4, v8

    int-to-long v8, v4

    shr-long v31, v10, v17

    and-long v31, v31, v29

    xor-long v8, v8, v31

    long-to-int v4, v8

    int-to-byte v4, v4

    invoke-virtual {v14, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x4

    aget-byte v8, v15, v4

    add-int/lit8 v9, v13, 0x4

    array-length v4, v0

    rem-int/2addr v9, v4

    aget-byte v4, v0, v9

    xor-int/2addr v4, v8

    int-to-long v8, v4

    const/16 v4, 0x20

    shr-long v25, v10, v4

    and-long v25, v25, v29

    xor-long v8, v8, v25

    long-to-int v9, v8

    int-to-byte v8, v9

    invoke-virtual {v14, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x5

    aget-byte v9, v15, v8

    add-int/lit8 v18, v13, 0x5

    array-length v4, v0

    rem-int v18, v18, v4

    aget-byte v4, v0, v18

    xor-int/2addr v4, v9

    move-wide/from16 v31, v6

    int-to-long v5, v4

    const/16 v4, 0x28

    shr-long v18, v10, v4

    and-long v18, v18, v29

    xor-long v5, v5, v18

    long-to-int v6, v5

    int-to-byte v5, v6

    invoke-virtual {v14, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x6

    aget-byte v6, v15, v5

    add-int/lit8 v9, v13, 0x6

    array-length v4, v0

    rem-int/2addr v9, v4

    aget-byte v4, v0, v9

    xor-int/2addr v4, v6

    int-to-long v5, v4

    shr-long v33, v10, v20

    and-long v33, v33, v29

    xor-long v4, v5, v33

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v14, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x7

    aget-byte v5, v15, v4

    add-int/lit8 v6, v13, 0x7

    array-length v9, v0

    rem-int/2addr v6, v9

    aget-byte v6, v0, v6

    xor-int/2addr v5, v6

    int-to-long v5, v5

    const/16 v9, 0x38

    shr-long/2addr v10, v9

    and-long v10, v10, v29

    xor-long/2addr v5, v10

    long-to-int v6, v5

    int-to-byte v5, v6

    invoke-virtual {v14, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v5, v23

    invoke-virtual {v5, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v6

    add-int/lit8 v13, v13, 0x8

    move-object v11, v5

    move/from16 v22, v6

    move-wide/from16 v6, v31

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v8, 0x4

    const/16 v9, 0x20

    const/4 v10, 0x2

    goto/16 :goto_d0

    :cond_1c4
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1d3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_69 .. :try_end_1d3} :catch_1ea
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_1d3} :catch_1d4

    return-object v0

    :catch_1d4
    move-exception v0

    const/4 v4, 0x0

    goto :goto_1dd

    :cond_1d7
    move-object v4, v7

    return-object v4

    :cond_1d9
    move-object v4, v7

    return-object v4

    :catch_1db
    move-exception v0

    move-object v4, v7

    :goto_1dd
    const-string v5, "Failed to read bytes"

    invoke-static {v3, v5, v0}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual/range {p2 .. p2}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v0}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    :catch_1ea
    move-exception v0

    invoke-virtual/range {p2 .. p2}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v0}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 encoding not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b([BLjava/lang/String;Lcom/applovin/impl/sdk/n;)Ljava/lang/String;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "decode2"

    const-string v1, "AppLovinSdk"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/utils/p;->c([BLjava/lang/String;Lcom/applovin/impl/sdk/n;)I

    move-result v3

    if-nez v3, :cond_c

    return-object v2

    :cond_c
    array-length v4, p0

    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    array-length v3, p0

    const/16 v4, 0x10

    if-ge v3, v4, :cond_17

    return-object v2

    :cond_17
    const/16 v3, 0x8

    invoke-static {p0, v3}, Lcom/applovin/impl/sdk/utils/u;->n([BI)J

    move-result-wide v5

    const/4 v3, 0x0

    const/16 v7, 0x20

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/applovin/impl/sdk/utils/p;->aVT:[B

    invoke-static {p1, v3, p2}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;[BLcom/applovin/impl/sdk/n;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/u;->T([B)J

    move-result-wide v7

    xor-long/2addr v5, v7

    array-length v3, p0

    invoke-static {p0, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0, v5, v6, p1}, Lcom/applovin/impl/sdk/utils/p;->a([BJ[B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/u;->S([B)[B

    move-result-object p0

    const-string v3, "UTF-8"

    invoke-direct {p1, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_43} :catch_52
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_43} :catch_44

    return-object p1

    :catch_44
    move-exception p0

    const-string p1, "Failed to ungzip decode"

    invoke-static {v1, p1, p0}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object p1

    invoke-virtual {p1, v1, v0, p0}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :catch_52
    move-exception p0

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object p1

    invoke-virtual {p1, v1, v0, p0}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "UTF-8 encoding not found"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b(Ljava/lang/String;JLcom/applovin/impl/sdk/utils/p$a;Ljava/lang/String;Lcom/applovin/impl/sdk/n;)[B
    .registers 13

    if-eqz p4, :cond_39

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-lt v0, v1, :cond_31

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_15
    sget-object v0, Lcom/applovin/impl/sdk/utils/p$a;->aVU:Lcom/applovin/impl/sdk/utils/p$a;

    if-ne v0, p3, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_1e
    sget-object v0, Lcom/applovin/impl/sdk/utils/p$a;->aVW:Lcom/applovin/impl/sdk/utils/p$a;

    if-ne v0, p3, :cond_2c

    const/4 v4, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;JZLjava/lang/String;Lcom/applovin/impl/sdk/n;)[B

    move-result-object p0

    return-object p0

    :cond_2c
    invoke-static {p0, p1, p2, p4, p5}, Lcom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;JLjava/lang/String;Lcom/applovin/impl/sdk/n;)[B

    move-result-object p0

    return-object p0

    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SDK key is too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No SDK key specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c([BLjava/lang/String;Lcom/applovin/impl/sdk/n;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_4e

    array-length v1, p0

    if-eqz v1, :cond_4e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4e

    :cond_d
    const/16 p1, 0x3a

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/utils/p;->a([BB)I

    move-result v1

    if-gez v1, :cond_16

    return v0

    :cond_16
    sget-object v2, Lcom/applovin/impl/sdk/utils/p;->aVT:[B

    invoke-static {v2, p2}, Lcom/applovin/impl/sdk/utils/p;->a([BLcom/applovin/impl/sdk/n;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    array-length v2, p2

    add-int/2addr v2, v1

    array-length v3, p0

    if-le v3, v2, :cond_4e

    aget-byte v3, p0, v2

    if-eq v3, p1, :cond_2c

    goto :goto_4e

    :cond_2c
    add-int/lit8 v2, v2, 0x36

    add-int/lit8 v2, v2, 0x1

    array-length v3, p0

    if-le v3, v2, :cond_4e

    aget-byte v3, p0, v2

    if-eq v3, p1, :cond_38

    goto :goto_4e

    :cond_38
    array-length p1, p2

    add-int/2addr p1, v1

    invoke-static {p0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_45

    return v0

    :cond_45
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, v2, 0x8

    array-length p0, p0

    if-le p1, p0, :cond_4d

    return v0

    :cond_4d
    return v2

    :cond_4e
    :goto_4e
    return v0
.end method

.method private static dB(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/p;->dC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static dC(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2d

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2a

    const/16 v1, 0x3d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.applovin.impl.sdk.utils.p.a (com.applovin.impl.sdk.utils.p$a)
.class public final enum Lcom/applovin/impl/sdk/utils/p$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/utils/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/sdk/utils/p$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aVU:Lcom/applovin/impl/sdk/utils/p$a;

.field public static final enum aVV:Lcom/applovin/impl/sdk/utils/p$a;

.field public static final enum aVW:Lcom/applovin/impl/sdk/utils/p$a;

.field private static final synthetic aVX:[Lcom/applovin/impl/sdk/utils/p$a;


# instance fields
.field private final ahF:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/applovin/impl/sdk/utils/p$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/p$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/impl/sdk/utils/p$a;->aVU:Lcom/applovin/impl/sdk/utils/p$a;

    new-instance v1, Lcom/applovin/impl/sdk/utils/p$a;

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/applovin/impl/sdk/utils/p$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/applovin/impl/sdk/utils/p$a;->aVV:Lcom/applovin/impl/sdk/utils/p$a;

    new-instance v3, Lcom/applovin/impl/sdk/utils/p$a;

    const-string v5, "V2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/applovin/impl/sdk/utils/p$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/applovin/impl/sdk/utils/p$a;->aVW:Lcom/applovin/impl/sdk/utils/p$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/applovin/impl/sdk/utils/p$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/applovin/impl/sdk/utils/p$a;->aVX:[Lcom/applovin/impl/sdk/utils/p$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/applovin/impl/sdk/utils/p$a;->ahF:I

    return-void
.end method

.method public static gW(I)Lcom/applovin/impl/sdk/utils/p$a;
    .registers 2

    if-nez p0, :cond_5

    sget-object p0, Lcom/applovin/impl/sdk/utils/p$a;->aVV:Lcom/applovin/impl/sdk/utils/p$a;

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    sget-object p0, Lcom/applovin/impl/sdk/utils/p$a;->aVW:Lcom/applovin/impl/sdk/utils/p$a;

    return-object p0

    :cond_b
    sget-object p0, Lcom/applovin/impl/sdk/utils/p$a;->aVV:Lcom/applovin/impl/sdk/utils/p$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/p$a;
    .registers 2

    const-class v0, Lcom/applovin/impl/sdk/utils/p$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/sdk/utils/p$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/sdk/utils/p$a;
    .registers 1

    sget-object v0, Lcom/applovin/impl/sdk/utils/p$a;->aVX:[Lcom/applovin/impl/sdk/utils/p$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/sdk/utils/p$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/sdk/utils/p$a;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/utils/p$a;->ahF:I

    return v0
.end method
