###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.Encoder (com.gameloft.android.ANMP.GloftAGHM.GLUtils.Encoder)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Blob2String(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    mul-int/lit8 v1, v1, 0x6

    const/16 v3, 0x8

    div-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    new-array v4, v1, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v1, :cond_1f

    aput-byte v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_1f
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_4e

    aget-byte v8, v0, v6

    invoke-static {v8}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encoder;->SSEncDec_GetKeyFromChar(B)B

    move-result v8

    aget-byte v9, v4, v7

    rsub-int/lit8 v10, v3, 0x8

    shl-int v10, v8, v10

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v4, v7

    if-le v3, v2, :cond_3c

    add-int/lit8 v3, v3, -0x6

    goto :goto_4b

    :cond_3c
    add-int/lit8 v9, v1, -0x2

    if-ge v7, v9, :cond_4b

    add-int/lit8 v7, v7, 0x1

    aget-byte v9, v4, v7

    shr-int/2addr v8, v3

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    add-int/lit8 v3, v3, 0x2

    :cond_4b
    :goto_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_4e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v5, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static SSEncDec_GetCharFromKeyByIndex(B)B
    .registers 2

    const/16 v0, 0x1a

    if-ge p0, v0, :cond_8

    add-int/lit8 p0, p0, 0x61

    :goto_6
    int-to-byte p0, p0

    return p0

    :cond_8
    const/16 v0, 0x34

    if-ge p0, v0, :cond_f

    add-int/lit8 p0, p0, 0x27

    goto :goto_6

    :cond_f
    const/16 v0, 0x3e

    if-ge p0, v0, :cond_16

    add-int/lit8 p0, p0, -0x4

    goto :goto_6

    :cond_16
    if-ne p0, v0, :cond_1b

    const/16 p0, 0x5f

    return p0

    :cond_1b
    const/16 p0, 0x2d

    return p0
.end method

.method private static SSEncDec_GetKeyFromChar(B)B
    .registers 2

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_7

    const/16 p0, 0x3f

    return p0

    :cond_7
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_e

    const/16 p0, 0x3e

    return p0

    :cond_e
    const/16 v0, 0x3a

    if-ge p0, v0, :cond_16

    add-int/lit8 p0, p0, 0x4

    :goto_14
    int-to-byte p0, p0

    return p0

    :cond_16
    const/16 v0, 0x5b

    if-ge p0, v0, :cond_1d

    add-int/lit8 p0, p0, -0x27

    goto :goto_14

    :cond_1d
    add-int/lit8 p0, p0, -0x61

    goto :goto_14
.end method

.method public static String2Blob(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    mul-int/lit8 v1, v1, 0x8

    const/4 v3, 0x6

    div-int/2addr v1, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    rem-int/2addr v4, v3

    if-eqz v4, :cond_1a

    add-int/lit8 v1, v1, 0x2

    goto :goto_1c

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    :goto_1c
    new-array v4, v1, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_20
    if-ge v6, v1, :cond_27

    aput-byte v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_27
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_58

    aget-byte v7, v0, v1

    and-int/lit8 v7, v7, 0x7f

    int-to-byte v7, v7

    rsub-int/lit8 v8, v2, 0x8

    shr-int/2addr v7, v8

    int-to-byte v7, v7

    if-ge v2, v3, :cond_4a

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_4c

    aget-byte v8, v0, v1

    shl-int/2addr v8, v2

    or-int/2addr v7, v8

    int-to-byte v7, v7

    add-int/lit8 v2, v2, 0x2

    goto :goto_4c

    :cond_4a
    add-int/lit8 v2, v2, -0x6

    :cond_4c
    :goto_4c
    and-int/lit8 v7, v7, 0x3f

    int-to-byte v7, v7

    invoke-static {v7}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encoder;->SSEncDec_GetCharFromKeyByIndex(B)B

    move-result v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_58
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    return-object p0
.end method
