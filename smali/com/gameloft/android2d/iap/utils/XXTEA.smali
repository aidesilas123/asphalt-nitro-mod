###### Class com.gameloft.android2d.iap.utils.XXTEA (com.gameloft.android2d.iap.utils.XXTEA)
.class public Lcom/gameloft/android2d/iap/utils/XXTEA;
.super Ljava/lang/Object;
.source "XXTEA.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/a;


# static fields
.field static final f:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/gameloft/android2d/iap/utils/XXTEA;->f:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DecryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const v0, 0x7f1203b9

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetIAPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/utils/XXTEA;->DecryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static DecryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/XXTEA;->GetByteArrayFromHexString(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Decrypt([BLjava/lang/String;)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static EncryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const v0, 0x7f1203b9

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetIAPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/utils/XXTEA;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Encrypt([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/XXTEA;->GetHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetByteArrayFromHexString(Ljava/lang/String;)[B
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_21

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_22

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    return-object v1

    :catch_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public static GetHexString([B)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_25

    sget-object v2, Lcom/gameloft/android2d/iap/utils/XXTEA;->f:[C

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static MD5Decryp([BLjava/lang/String;)[B
    .registers 9

    const-string v0, "ISO-8859-1"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Decrypt([BLjava/lang/String;Z)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_43

    if-nez p0, :cond_b

    return-object v2

    :cond_b
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/SUtils;->Mem_GetInt([BI)I

    move-result v1

    array-length v3, p0

    sub-int/2addr v3, v1

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    add-int/lit8 v5, v1, 0x4

    invoke-static {p0, v5, v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->Mem_GetArray([BI[B)I

    :try_start_1b
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_43

    new-array v3, v5, [B

    invoke-static {p0, p1, v3, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_Init()V

    :try_start_28
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_Update(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_28 .. :try_end_30} :catch_31

    goto :goto_32

    :catch_31
    nop

    :goto_32
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_AsHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    return-object v2

    :cond_3d
    new-array p0, v1, [B

    invoke-static {v3, v4, p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->Mem_GetArray([BI[B)I

    return-object p0

    :catch_43
    return-object v2
.end method

.method public static MD5Encrypt([BLjava/lang/String;)[B
    .registers 10

    const-string v0, "ISO-8859-1"

    array-length v1, p0

    add-int/lit8 v2, v1, 0x4

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->Mem_SetInt([BII)I

    const/4 v5, 0x4

    invoke-static {v3, v5, p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->Mem_SetArray([BI[B)I

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_Init()V

    const/4 v6, 0x0

    :try_start_13
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v7, v0}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_Update(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_1b} :catch_37

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MD5;->MD5_AsHex()Ljava/lang/String;

    move-result-object v3

    :try_start_1f
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_37

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {v2, v4, v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->Mem_SetInt([BII)I

    invoke-static {v2, v5, p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->Mem_SetArray([BI[B)I

    add-int/2addr v5, v1

    invoke-static {v2, v5, v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->Mem_SetArray([BI[B)I

    const/4 p0, 0x1

    :try_start_32
    invoke-static {v2, p1, p0}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Encrypt([BLjava/lang/String;Z)[B

    move-result-object p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_37

    return-object p0

    :catch_37
    return-object v6
.end method

.method public static ToByteArray([I)[B
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToByteArray([IZ[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static ToByteArray([IZ[B)[B
    .registers 6

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    if-eqz p1, :cond_f

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget p1, p0, p1

    if-le p1, v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    move v0, p1

    :cond_f
    if-nez p2, :cond_13

    new-array p2, v0, [B

    :cond_13
    const/4 p1, 0x0

    :goto_14
    if-ge p1, v0, :cond_27

    ushr-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    and-int/lit8 v2, p1, 0x3

    shl-int/lit8 v2, v2, 0x3

    ushr-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    :cond_27
    return-object p2
.end method

.method public static ToIntArray([B)[I
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToIntArray([BZ[I)[I

    move-result-object p0

    return-object p0
.end method

.method public static ToIntArray([BZ[I)[I
    .registers 8

    array-length v0, p0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_9

    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    goto :goto_e

    :cond_9
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_e
    if-eqz p1, :cond_1b

    if-nez p2, :cond_17

    add-int/lit8 p1, v0, 0x1

    new-array p1, p1, [I

    move-object p2, p1

    :cond_17
    array-length p1, p0

    aput p1, p2, v0

    goto :goto_1f

    :cond_1b
    if-nez p2, :cond_1f

    new-array p2, v0, [I

    :cond_1f
    :goto_1f
    array-length p1, p0

    const/4 v0, 0x0

    :goto_21
    if-ge v0, p1, :cond_36

    ushr-int/lit8 v1, v0, 0x2

    aget v2, p2, v1

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v4, v0, 0x3

    shl-int/lit8 v4, v4, 0x3

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_36
    return-object p2
.end method

.method public static XXTEA_Decrypt([BLjava/lang/String;)[B
    .registers 3

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Decrypt([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static XXTEA_Decrypt([BLjava/lang/String;Z)[B
    .registers 4

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-static {p0, p1, p2}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Decrypt([B[BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static XXTEA_Decrypt([B[B)[B
    .registers 4

    if-eqz p0, :cond_19

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_19

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToIntArray([BZ[I)[I

    move-result-object p0

    invoke-static {p1, v0, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToIntArray([BZ[I)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Decrypt([I[I)[I

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToByteArray([IZ[B)[B

    move-result-object p0

    :cond_19
    :goto_19
    return-object p0
.end method

.method public static XXTEA_Decrypt([B[BZ)[B
    .registers 5

    if-eqz p0, :cond_18

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_18

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToIntArray([BZ[I)[I

    move-result-object p0

    invoke-static {p1, v0, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToIntArray([BZ[I)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Decrypt([I[I)[I

    move-result-object p0

    invoke-static {p0, p2, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToByteArray([IZ[B)[B

    move-result-object p0

    :cond_18
    :goto_18
    return-object p0
.end method

.method public static XXTEA_Decrypt([ILjava/lang/String;)[I
    .registers 3

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToIntArray([B)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Decrypt([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public static XXTEA_Decrypt([I[I)[I
    .registers 14

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v0, v1, :cond_6

    return-object p0

    :cond_6
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ge v1, v3, :cond_12

    new-array v1, v3, [I

    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    :cond_12
    aget v1, p0, v0

    aget v1, p0, v2

    const v3, -0x61c88647

    const/16 v4, 0x34

    add-int/lit8 v5, v0, 0x1

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    mul-int v4, v4, v3

    :goto_22
    if-eqz v4, :cond_6a

    ushr-int/lit8 v5, v4, 0x2

    and-int/lit8 v5, v5, 0x3

    move v6, v0

    :goto_29
    if-lez v6, :cond_4c

    add-int/lit8 v7, v6, -0x1

    aget v7, p0, v7

    aget v8, p0, v6

    ushr-int/lit8 v9, v7, 0x5

    shl-int/lit8 v10, v1, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v1, 0x3

    shl-int/lit8 v11, v7, 0x4

    xor-int/2addr v10, v11

    add-int/2addr v9, v10

    xor-int/2addr v1, v4

    and-int/lit8 v10, v6, 0x3

    xor-int/2addr v10, v5

    aget v10, p1, v10

    xor-int/2addr v7, v10

    add-int/2addr v1, v7

    xor-int/2addr v1, v9

    sub-int v1, v8, v1

    aput v1, p0, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_29

    :cond_4c
    aget v7, p0, v0

    aget v8, p0, v2

    ushr-int/lit8 v9, v7, 0x5

    shl-int/lit8 v10, v1, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v1, 0x3

    shl-int/lit8 v11, v7, 0x4

    xor-int/2addr v10, v11

    add-int/2addr v9, v10

    xor-int/2addr v1, v4

    and-int/lit8 v6, v6, 0x3

    xor-int/2addr v5, v6

    aget v5, p1, v5

    xor-int/2addr v5, v7

    add-int/2addr v1, v5

    xor-int/2addr v1, v9

    sub-int v1, v8, v1

    aput v1, p0, v2

    sub-int/2addr v4, v3

    goto :goto_22

    :cond_6a
    return-object p0
.end method

.method public static XXTEA_Encrypt([BLjava/lang/String;)[B
    .registers 3

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Encrypt([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static XXTEA_Encrypt([BLjava/lang/String;Z)[B
    .registers 4

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-static {p0, p1, p2}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Encrypt([B[BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static XXTEA_Encrypt([B[B)[B
    .registers 4

    array-length v0, p0

    if-nez v0, :cond_4

    return-object p0

    :cond_4
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToIntArray([BZ[I)[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToIntArray([BZ[I)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Encrypt([I[I)[I

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToByteArray([IZ[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static XXTEA_Encrypt([B[BZ)[B
    .registers 4

    array-length v0, p0

    if-nez v0, :cond_4

    return-object p0

    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToIntArray([BZ[I)[I

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToIntArray([BZ[I)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Encrypt([I[I)[I

    move-result-object p0

    invoke-static {p0, p2, v0}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToByteArray([IZ[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static XXTEA_Encrypt([ILjava/lang/String;)[I
    .registers 3

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->ToIntArray([B)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Encrypt([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public static XXTEA_Encrypt([I[I)[I
    .registers 16

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v0, v1, :cond_6

    return-object p0

    :cond_6
    array-length v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ge v1, v2, :cond_12

    new-array v1, v2, [I

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    :cond_12
    aget v1, p0, v0

    aget v2, p0, v3

    const v2, -0x61c88647

    const/16 v4, 0x34

    add-int/lit8 v5, v0, 0x1

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    const/4 v5, 0x0

    :goto_21
    add-int/lit8 v6, v4, -0x1

    if-lez v4, :cond_6b

    add-int/2addr v5, v2

    ushr-int/lit8 v4, v5, 0x2

    and-int/lit8 v4, v4, 0x3

    const/4 v7, 0x0

    :goto_2b
    if-ge v7, v0, :cond_4d

    add-int/lit8 v8, v7, 0x1

    aget v9, p0, v8

    aget v10, p0, v7

    ushr-int/lit8 v11, v1, 0x5

    shl-int/lit8 v12, v9, 0x2

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v9, 0x3

    shl-int/lit8 v13, v1, 0x4

    xor-int/2addr v12, v13

    add-int/2addr v11, v12

    xor-int/2addr v9, v5

    and-int/lit8 v12, v7, 0x3

    xor-int/2addr v12, v4

    aget v12, p1, v12

    xor-int/2addr v1, v12

    add-int/2addr v9, v1

    xor-int v1, v11, v9

    add-int/2addr v1, v10

    aput v1, p0, v7

    move v7, v8

    goto :goto_2b

    :cond_4d
    aget v8, p0, v3

    aget v9, p0, v0

    ushr-int/lit8 v10, v1, 0x5

    shl-int/lit8 v11, v8, 0x2

    xor-int/2addr v10, v11

    ushr-int/lit8 v11, v8, 0x3

    shl-int/lit8 v12, v1, 0x4

    xor-int/2addr v11, v12

    add-int/2addr v10, v11

    xor-int/2addr v8, v5

    and-int/lit8 v7, v7, 0x3

    xor-int/2addr v4, v7

    aget v4, p1, v4

    xor-int/2addr v1, v4

    add-int/2addr v8, v1

    xor-int v1, v10, v8

    add-int/2addr v1, v9

    aput v1, p0, v0

    move v4, v6

    goto :goto_21

    :cond_6b
    return-object p0
.end method
