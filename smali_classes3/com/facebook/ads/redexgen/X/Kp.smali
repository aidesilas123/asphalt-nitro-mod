.class public final Lcom/facebook/ads/redexgen/X/Kp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ko;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 42902
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kp;->A05()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Kp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Z)Lcom/facebook/ads/redexgen/X/Ko;
    .registers 6

    .line 42904
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kp;->A07()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 42905
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kp;->A06()Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v2, 0x3b

    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 42906
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kp;->A08(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 42907
    .local v0, "isRooted":Z
    :goto_1d
    if-eqz v0, :cond_22

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ko;->A04:Lcom/facebook/ads/redexgen/X/Ko;

    goto :goto_24

    :cond_22
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ko;->A06:Lcom/facebook/ads/redexgen/X/Ko;

    :goto_24
    return-object v0
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_25

    .line 42908
    .end local v0    # "isRooted":Z
    :catchall_25
    move-exception v4

    .line 42909
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz p0, :cond_37

    .line 42910
    sget-object v3, Lcom/facebook/ads/redexgen/X/Kp;->A01:Ljava/lang/String;

    const/16 v2, 0x1f

    const/16 v1, 0x13

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42911
    :cond_37
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ko;->A05:Lcom/facebook/ads/redexgen/X/Ko;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kp;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 42912
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kp;->A03(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    .line 42913
    .local p0, "e":Ljava/lang/Exception;
    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static A03(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 42914
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 42915
    .local v0, "signatures":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 42916
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x40

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 42917
    .local v1, "certs":[Landroid/content/pm/Signature;
    array-length v4, v5

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v4, :cond_4a

    aget-object p0, v5, v3

    .line 42918
    .local v4, "cert":Landroid/content/pm/Signature;
    const/16 v2, 0x32

    const/4 v1, 0x4

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 42919
    .local v5, "md":Ljava/security/MessageDigest;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kp;->A04(Landroid/content/pm/Signature;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 42920
    .local v6, "publicKey":[B
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kx;->A04([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42921
    const/16 v2, 0x1a

    const/4 v1, 0x1

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42922
    .end local v4    # "cert":Landroid/content/pm/Signature;
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "publicKey":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 42923
    :cond_4a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Landroid/content/pm/Signature;)Ljava/security/PublicKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 42924
    const/16 v2, 0x36

    const/4 v1, 0x5

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 42925
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 42926
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 42927
    .local v2, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static A05()V
    .registers 1

    const/16 v0, 0x46

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kp;->A00:[B

    return-void

    :array_a
    .array-data 1
        0x73t
        -0x49t
        -0x43t
        -0x49t
        -0x48t
        -0x57t
        -0x4ft
        0x73t
        -0x5bt
        -0x4ct
        -0x4ct
        0x73t
        -0x69t
        -0x47t
        -0x4ct
        -0x57t
        -0x4at
        -0x47t
        -0x49t
        -0x57t
        -0x4at
        0x72t
        -0x5bt
        -0x4ct
        -0x51t
        -0x41t
        -0x6ct
        -0x4bt
        -0x5at
        -0x47t
        -0x53t
        0x0t
        0x1dt
        0x1dt
        0x22t
        0x13t
        0x12t
        -0x32t
        0x11t
        0x16t
        0x13t
        0x11t
        0x19t
        -0x32t
        0x14t
        0xft
        0x17t
        0x1at
        0x13t
        0x12t
        -0x34t
        -0x3ft
        -0x46t
        -0x56t
        -0x59t
        0x7dt
        -0x7ct
        0x7ft
        -0x78t
        -0x5dt
        -0x5bt
        0x6t
        -0x9t
        0x5t
        0x6t
        -0x41t
        -0x3t
        -0x9t
        0xbt
        0x5t
    .end array-data
.end method

.method public static A06()Z
    .registers 4

    .line 42928
    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 42929
    .local v0, "buildTags":Ljava/lang/String;
    if-eqz v3, :cond_16

    const/16 v2, 0x3d

    const/16 v1, 0x9

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static A07()Z
    .registers 3

    .line 42930
    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42931
    .local v0, "superUserApk":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static A08(Ljava/lang/String;)Z
    .registers 9

    .line 42932
    const/16 v2, 0x1b

    const/4 v1, 0x4

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x19

    const/4 v1, 0x1

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 42933
    .local v0, "paths":[Ljava/lang/String;
    array-length v6, v7

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v6, :cond_51

    aget-object v0, v7, v4

    .line 42934
    .local v4, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42935
    .local v5, "pathDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_35

    .line 42936
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "pathDir":Ljava/io/File;
    .end local v6
    :cond_32
    :goto_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 42937
    :cond_35
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 42938
    .local v6, "pathDirFiles":[Ljava/io/File;
    if-nez v3, :cond_3c

    goto :goto_32

    .line 42939
    :cond_3c
    array-length v2, v3

    const/4 v1, 0x0

    :goto_3e
    if-ge v1, v2, :cond_32

    aget-object v0, v3, v1

    .line 42940
    .local p1, "fileInPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 42941
    const/4 v0, 0x1

    return v0

    .line 42942
    .end local p1
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 42943
    :cond_51
    return v5
.end method
