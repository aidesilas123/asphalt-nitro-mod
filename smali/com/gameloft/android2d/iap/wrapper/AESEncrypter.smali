###### Class com.gameloft.android2d.iap.wrapper.AESEncrypter (com.gameloft.android2d.iap.wrapper.AESEncrypter)
.class public Lcom/gameloft/android2d/iap/wrapper/AESEncrypter;
.super Ljava/lang/Object;
.source "AESEncrypter.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/AESEncrypter;->getValue()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/AESEncrypter;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PadString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    rem-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_29

    if-ge v0, v1, :cond_29

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1b
    if-lez v0, :cond_25

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_29
    return-object p0
.end method

.method public static crypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/gameloft/android2d/iap/wrapper/AESEncrypter;->PadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/AESEncrypter;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/gameloft/android2d/iap/billings/google/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "ECB"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_25

    :catch_24
    const/4 p0, 0x0

    :goto_25
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/gameloft/android2d/iap/billings/google/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/AESEncrypter;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/gameloft/android2d/iap/billings/google/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "ECB"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {p0}, Lcom/gameloft/android2d/iap/billings/google/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    const/4 p0, 0x0

    :goto_21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static getValue()Ljava/lang/String;
    .registers 6

    const/16 v0, 0x19

    new-array v1, v0, [B

    new-array v0, v0, [B

    fill-array-data v0, :array_26

    const/4 v2, 0x0

    const/16 v3, 0x76

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    :goto_f
    const/16 v4, 0x18

    if-ge v3, v4, :cond_20

    add-int/lit8 v4, v3, -0x1

    aget-byte v4, v1, v4

    aget-byte v5, v0, v3

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :array_26
    .array-data 1
        -0x30t
        -0x25t
        0x4t
        0x1ft
        -0x27t
        -0x1bt
        0x34t
        -0x24t
        0x29t
        0xdt
        -0x20t
        0x20t
        -0x23t
        0x14t
        0x5t
        0xbt
        -0x8t
        -0x21t
        -0x5t
        -0x9t
        0x5t
        -0x6t
        -0x4t
        0x0t
        0x0t
    .end array-data
.end method
