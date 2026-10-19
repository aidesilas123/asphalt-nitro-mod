###### Class com.facebook.ads.redexgen.X.HA (com.facebook.ads.redexgen.X.HA)
.class public final Lcom/facebook/ads/redexgen/X/HA;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ho;

.field public A01:Z

.field public final A02:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/HK;

.field public final A04:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/H9;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljavax/crypto/Cipher;

.field public final A06:Ljavax/crypto/spec/SecretKeySpec;

.field public final A07:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tUmPyJA995IehdlgYh1M2HtFJdqk2qFq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MsgCzq1VVfM7rzT56hJDHksvV5yXe4gF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4HQ7m4N6DkH9M0uOuKNVPqKigOQvjf6k"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "N6cNHUUPL7Fh24xE6qmpU0ogNc5efwpW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "s0cCARPqV4C670oPtvU1gEMcVzhG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NrezJK25om3nHdODHZffKD7POu79MIOp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "J5KrgCJUtsnBlTAtkJ9UTDt78OFQHXma"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "N8WE0W2EMF4cGNiI42Wit4NkXIy23rap"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HA;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HA;->A05()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[BZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/HA;->A07:Z

    if-eqz p2, :cond_32

    array-length v1, p2

    const/16 v0, 0x10

    if-ne v1, v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_d

    :goto_13
    :try_start_13
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HA;->A03()Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A05:Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A06:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_3c
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_29} :catch_29
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_13 .. :try_end_29} :catch_2b

    :catch_29
    move-exception v1

    goto :goto_2c

    :catch_2b
    move-exception v1

    :goto_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_32
    xor-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A05:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A06:Ljavax/crypto/spec/SecretKeySpec;

    :goto_3c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A04:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A02:Landroid/util/SparseArray;

    const/16 v2, 0x19

    const/16 v1, 0x18

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/HK;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HK;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A03:Lcom/facebook/ads/redexgen/X/HK;

    return-void
.end method

.method public static A00(Landroid/util/SparseArray;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_16

    const/4 v1, 0x0

    :goto_7
    if-gez v1, :cond_12

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_12

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-eq v1, v0, :cond_13

    :cond_12
    return v1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    goto :goto_7
.end method

.method private A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A02:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HA;->A00(Landroid/util/SparseArray;)I

    move-result v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/H9;

    invoke-direct {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/H9;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/HA;->A06(Lcom/facebook/ads/redexgen/X/H9;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A01:Z

    return-object v1
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/HA;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x32

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()Ljavax/crypto/Cipher;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget v5, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v4, 0x12

    const/4 v2, 0x3

    const/16 v1, 0x14

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-ne v5, v4, :cond_1d

    :try_start_f
    const/16 v2, 0x17

    const/4 v1, 0x2

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1d

    :catchall_1d
    :cond_1d
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method private A04()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A03:Lcom/facebook/ads/redexgen/X/HK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HK;->A03()Lcom/facebook/ads/redexgen/X/HJ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A00:Lcom/facebook/ads/redexgen/X/Ho;

    if-nez v0, :cond_24

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ho;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ho;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A00:Lcom/facebook/ads/redexgen/X/Ho;

    :goto_12
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HA;->A00:Lcom/facebook/ads/redexgen/X/Ho;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A07:Z

    const/4 v5, 0x1

    if-eqz v0, :cond_2a

    goto :goto_28

    :cond_24
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ho;->A00(Ljava/io/OutputStream;)V

    goto :goto_12

    :goto_28
    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A07:Z

    if-eqz v0, :cond_69

    const/16 v0, 0x10

    new-array v1, v0, [B

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_46} :catch_9f
    .catchall {:try_start_1 .. :try_end_46} :catchall_a6

    :try_start_46
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HA;->A05:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A06:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v5, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_4d
    .catch Ljava/security/InvalidKeyException; {:try_start_46 .. :try_end_4d} :catch_62
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_46 .. :try_end_4d} :catch_60
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4d} :catch_9f
    .catchall {:try_start_46 .. :try_end_4d} :catchall_a6

    :try_start_4d
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/HA;->A00:Lcom/facebook/ads/redexgen/X/Ho;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A05:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, v2, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    goto :goto_69
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_60} :catch_9f
    .catchall {:try_start_4d .. :try_end_60} :catchall_a6

    :catch_60
    move-exception v1

    goto :goto_63

    :catch_62
    move-exception v1

    :goto_63
    :try_start_63
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H9;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/H9;->A0A(Ljava/io/DataOutputStream;)V

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/H9;->A03(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_7d

    :cond_92
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A03:Lcom/facebook/ads/redexgen/X/HK;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/HK;->A06(Ljava/io/OutputStream;)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_9a} :catch_9f
    .catchall {:try_start_63 .. :try_end_9a} :catchall_a6

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    return-void

    :catch_9f
    move-exception v1

    :try_start_a0
    new-instance v0, Lcom/facebook/ads/redexgen/X/H0;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/H0;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_a6
    .catchall {:try_start_a0 .. :try_end_a6} :catchall_a6

    :catchall_a6
    move-exception v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static A05()V
    .registers 1

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/HA;->A08:[B

    return-void

    :array_a
    .array-data 1
        -0x5at
        -0x56t
        -0x48t
        -0x24t
        -0x20t
        -0x12t
        -0x36t
        -0x22t
        -0x23t
        -0x22t
        -0x36t
        -0x15t
        -0x1at
        -0x22t
        -0x12t
        -0x30t
        -0x15t
        -0x24t
        -0x21t
        -0x21t
        -0x1ct
        -0x17t
        -0x1et
        -0x2dt
        -0x2ct
        -0x4et
        -0x50t
        -0x4et
        -0x49t
        -0x4ct
        -0x4dt
        -0x52t
        -0x4et
        -0x42t
        -0x43t
        -0x3dt
        -0x4ct
        -0x43t
        -0x3dt
        -0x52t
        -0x48t
        -0x43t
        -0x4dt
        -0x4ct
        -0x39t
        0x7dt
        -0x4ct
        -0x39t
        -0x48t
    .end array-data
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/H9;)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HA;->A04:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H9;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/HA;->A02:Landroid/util/SparseArray;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/H9;->A02:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H9;->A03:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private A07()Z
    .registers 10

    const/4 v4, 0x0

    const/4 v8, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A03:Lcom/facebook/ads/redexgen/X/HK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HK;->A04()Ljava/io/InputStream;

    move-result-object v0

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    if-ltz v6, :cond_32
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_19} :catch_b5
    .catchall {:try_start_2 .. :try_end_19} :catchall_ae

    const/4 v7, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HA;->A09:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_a8

    sget-object v2, Lcom/facebook/ads/redexgen/X/HA;->A09:[Ljava/lang/String;

    const-string v1, "8D0UmEy2ZnW8UG7osX1W3JX0L9oaaEfw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-le v6, v7, :cond_36

    :cond_32
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    return v8

    :cond_36
    :try_start_36
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A05:Ljavax/crypto/Cipher;

    if-nez v0, :cond_47
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_43} :catch_b5
    .catchall {:try_start_36 .. :try_end_43} :catchall_ae

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    return v8

    :cond_47
    const/16 v0, 0x10

    :try_start_49
    new-array v0, v0, [B

    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_53} :catch_b5
    .catchall {:try_start_49 .. :try_end_53} :catchall_ae

    :try_start_53
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HA;->A05:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A06:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v7, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_5a
    .catch Ljava/security/InvalidKeyException; {:try_start_53 .. :try_end_5a} :catch_6a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_53 .. :try_end_5a} :catch_68
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5a} :catch_b5
    .catchall {:try_start_53 .. :try_end_5a} :catchall_ae

    :try_start_5a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A05:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, v3, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    goto :goto_77
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_68} :catch_b5
    .catchall {:try_start_5a .. :try_end_68} :catchall_ae

    :catch_68
    move-exception v1

    goto :goto_6b

    :catch_6a
    move-exception v1

    :goto_6b
    :try_start_6b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_71
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A07:Z

    if-eqz v0, :cond_77

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/HA;->A01:Z

    :cond_77
    :goto_77
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_7d
    if-ge v1, v2, :cond_8e

    invoke-static {v6, v4}, Lcom/facebook/ads/redexgen/X/H9;->A00(ILjava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HA;->A06(Lcom/facebook/ads/redexgen/X/H9;)V

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/H9;->A03(I)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    :cond_8e
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_9b

    const/4 v0, 0x1

    goto :goto_9c

    :cond_9b
    const/4 v0, 0x0

    :goto_9c
    if-ne v2, v3, :cond_a0

    if-nez v0, :cond_a4
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_a0} :catch_b5
    .catchall {:try_start_6b .. :try_end_a0} :catchall_ae

    :cond_a0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    return v8

    :cond_a4
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    return v5

    :cond_a8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catchall_ae
    move-exception v0

    if-eqz v4, :cond_b4

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    :cond_b4
    throw v0

    :catch_b5
    if-eqz v4, :cond_ba

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    :cond_ba
    return v8
.end method


# virtual methods
.method public final A08(Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/HA;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/H9;->A02:I

    return v0
.end method

.method public final A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H9;

    return-object v0
.end method

.method public final A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H9;

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/HA;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public final A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/HC;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/HA;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H9;->A05()Lcom/facebook/ads/redexgen/X/Ux;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ux;->A04:Lcom/facebook/ads/redexgen/X/Ux;

    goto :goto_a
.end method

.method public final A0C(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0D()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/ads/redexgen/X/H9;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final A0E()V
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A01:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HA;->A07()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A03:Lcom/facebook/ads/redexgen/X/HK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HK;->A05()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1c
    return-void
.end method

.method public final A0F()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A04:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v2, :cond_1d

    aget-object v0, v3, v1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HA;->A0H(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1d
    return-void
.end method

.method public final A0G()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A01:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HA;->A04()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A01:Z

    return-void
.end method

.method public final A0H(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/H9;

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/H9;->A0C()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/H9;->A0D()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A04:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HA;->A02:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/H9;->A02:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/HA;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_37

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_37
    sget-object v2, Lcom/facebook/ads/redexgen/X/HA;->A09:[Ljava/lang/String;

    const-string v1, "jdWRL72EOrbCMRK3hJiACfcup0he26HP"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/HA;->A01:Z

    :cond_40
    return-void
.end method

.method public final A0I(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/HE;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/HA;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/H9;->A0F(Lcom/facebook/ads/redexgen/X/HE;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HA;->A01:Z

    :cond_d
    return-void
.end method
