###### Class com.gameloft.android2d.iap.utils.CRMUtils (com.gameloft.android2d.iap.utils.CRMUtils)
.class public Lcom/gameloft/android2d/iap/utils/CRMUtils;
.super Ljava/lang/Object;
.source "CRMUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckMD5Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->DecryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public static DecryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/google/util/Base64;->decode([B)[B

    move-result-object p1

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-static {p0}, Lcom/gameloft/android2d/iap/billings/google/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    return-object p1

    :catch_35
    const/4 p0, 0x0

    return-object p0
.end method

.method public static EncUrl_GetKeysFromChar(C)[C
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [C

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/16 v1, 0xf

    and-int/2addr p0, v1

    int-to-char p0, p0

    const/4 v3, 0x1

    aput-char p0, v0, v3

    aget-char p0, v0, v2

    const/16 v4, 0x9

    if-ltz p0, :cond_23

    aget-char p0, v0, v2

    if-gt p0, v4, :cond_23

    aget-char p0, v0, v2

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    aput-char p0, v0, v2

    :cond_23
    aget-char p0, v0, v2

    const/16 v5, 0xa

    if-gt v5, p0, :cond_34

    aget-char p0, v0, v2

    if-gt p0, v1, :cond_34

    aget-char p0, v0, v2

    add-int/lit8 p0, p0, 0x37

    int-to-char p0, p0

    aput-char p0, v0, v2

    :cond_34
    aget-char p0, v0, v3

    if-ltz p0, :cond_43

    aget-char p0, v0, v3

    if-gt p0, v4, :cond_43

    aget-char p0, v0, v3

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    aput-char p0, v0, v3

    :cond_43
    aget-char p0, v0, v3

    if-gt v5, p0, :cond_52

    aget-char p0, v0, v3

    if-gt p0, v1, :cond_52

    aget-char p0, v0, v3

    add-int/lit8 p0, p0, 0x37

    int-to-char p0, p0

    aput-char p0, v0, v3

    :cond_52
    return-object v0
.end method

.method public static EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    if-nez p0, :cond_a

    const-string p0, ""

    return-object p0

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_8a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-gt v4, v3, :cond_1e

    const/16 v4, 0x39

    if-le v3, v4, :cond_78

    :cond_1e
    const/16 v4, 0x41

    if-gt v4, v3, :cond_26

    const/16 v4, 0x5a

    if-le v3, v4, :cond_78

    :cond_26
    const/16 v4, 0x61

    if-gt v4, v3, :cond_2e

    const/16 v4, 0x7a

    if-le v3, v4, :cond_78

    :cond_2e
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_78

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_78

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_78

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_3f

    goto :goto_78

    :cond_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncUrl_GetKeysFromChar(C)[C

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v0, v3, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-char v0, v3, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    :cond_78
    :goto_78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_8a
    return-object v0
.end method

.method public static NounceGenerator()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    :goto_8
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2e

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x42

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-._~"

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2e
    return-object v1
.end method
