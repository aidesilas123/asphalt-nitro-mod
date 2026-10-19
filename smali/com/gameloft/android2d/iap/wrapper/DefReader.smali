###### Class com.gameloft.android2d.iap.wrapper.DefReader (com.gameloft.android2d.iap.wrapper.DefReader)
.class public Lcom/gameloft/android2d/iap/wrapper/DefReader;
.super Ljava/lang/Object;
.source "DefReader.java"


# static fields
.field private static a:Lcom/gameloft/android2d/iap/wrapper/DefReader;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AES"

    iput-object v0, p0, Lcom/gameloft/android2d/iap/wrapper/DefReader;->b:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/gameloft/android2d/iap/wrapper/DefReader;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x10

    const/4 v2, 0x0

    :try_start_8
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/4 v3, 0x0

    :goto_1f
    array-length v4, p1

    if-ge v3, v4, :cond_37

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    invoke-static {v4, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_37

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :catch_37
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/gameloft/android2d/iap/wrapper/DefReader;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/DefReader;->a:Lcom/gameloft/android2d/iap/wrapper/DefReader;

    if-nez v0, :cond_b

    new-instance v0, Lcom/gameloft/android2d/iap/wrapper/DefReader;

    invoke-direct {v0}, Lcom/gameloft/android2d/iap/wrapper/DefReader;-><init>()V

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/DefReader;->a:Lcom/gameloft/android2d/iap/wrapper/DefReader;

    :cond_b
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/DefReader;->a:Lcom/gameloft/android2d/iap/wrapper/DefReader;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "AES"

    :try_start_2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, p2}, Lcom/gameloft/android2d/iap/wrapper/DefReader;->b(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v1, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/google/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    const/4 p2, 0x0

    :goto_22
    return-object p2
.end method
