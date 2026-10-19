###### Class com.facebook.ads.redexgen.X.C1610bA (com.facebook.ads.redexgen.X.bA)
.class public final Lcom/facebook/ads/redexgen/X/bA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/00;


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/08;

.field public final A03:Lcom/facebook/ads/redexgen/X/0A;

.field public final A04:Lcom/facebook/ads/redexgen/X/0L;

.field public final A05:Lcom/facebook/ads/redexgen/X/7S;

.field public final A06:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2hmAfzTadn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1uDqsMr9wv4o5ZghfCOZg4FuDp7sllqp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nT1KYDstdBBAZ5nN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UVqk4rMzzgqbiyaJgpoGMOUy0jQCoEBq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ewXxsmpHr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rT44HeCpkJQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C3kiv90mrVS0BL1BSM5Dfu9lHf0n3Csl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "grgxNBq6hb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bA;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bA;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/bA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/08;Lcom/facebook/ads/redexgen/X/0L;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A06:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bA;->A05:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/08;->A02()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/08;->A00()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    new-instance v0, Lcom/facebook/ads/redexgen/X/0A;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0A;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A03:Lcom/facebook/ads/redexgen/X/0A;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/08;->A01()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A01:I

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bA;->A02:Lcom/facebook/ads/redexgen/X/08;

    return-void
.end method

.method public static A00(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/b8;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/0H;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v3, v0, [B

    :goto_11
    array-length v0, v3

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1e

    invoke-virtual {p0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_11

    :cond_1e
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/b8;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/b8;-><init>([B)V

    return-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_28

    :catch_28
    move-exception v3

    const/16 v2, 0x83

    const/16 v1, 0x12

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/0H;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/0H;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A01(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/16 v2, 0x13e

    const/16 v1, 0xf

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/06;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/09;)Ljava/io/File;
    .registers 22

    move-object/from16 v0, p0

    const/16 v3, 0xde

    const/16 v2, 0x16

    const/16 v1, 0x44

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    :try_start_d
    move-object/from16 v5, p1

    move-object/from16 v10, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A05:Lcom/facebook/ads/redexgen/X/7S;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/bA;->A01(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    move-object/from16 v2, p3

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A05:Lcom/facebook/ads/redexgen/X/7S;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IP;->A0N(Landroid/content/Context;)J

    move-result-wide v1

    new-instance v6, Lcom/facebook/ads/redexgen/X/FU;

    invoke-direct {v6, v1, v2}, Lcom/facebook/ads/redexgen/X/FU;-><init>(J)V

    new-instance v9, Lcom/facebook/ads/redexgen/X/b6;

    invoke-direct {v9, v3, v6}, Lcom/facebook/ads/redexgen/X/b6;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0B;)V

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/b6;->A09()Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_6b

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v1, :cond_5d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x31

    const/16 v2, 0x16

    const/16 v1, 0x6a

    invoke-static {v7, v2, v1}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/b6;->A00:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_5d
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A06:Ljava/util/Map;

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/b6;->A06()V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    invoke-interface {v1, v10, v6, v5}, Lcom/facebook/ads/redexgen/X/0L;->AEI(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/06;)V

    return-object v3

    :cond_6b
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v1, :cond_8f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x47

    const/16 v2, 0x1a

    const/16 v1, 0x75

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/b6;->A00:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_8f
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/09;->A04()Z

    move-result v1

    if-nez v1, :cond_96

    return-object v8

    :cond_96
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    const/4 v1, 0x0

    invoke-interface {v2, v10, v1, v5}, Lcom/facebook/ads/redexgen/X/0L;->AEI(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/06;)V

    const/4 v12, 0x0

    :goto_9d
    iget v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A00:I

    if-ge v12, v1, :cond_cc
    :try_end_a1
    .catch Lcom/facebook/ads/redexgen/X/b7; {:try_start_d .. :try_end_a1} :catch_114
    .catch Lcom/facebook/ads/redexgen/X/b4; {:try_start_d .. :try_end_a1} :catch_fa

    :try_start_a1
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/bA;->A05:Lcom/facebook/ads/redexgen/X/7S;

    move-object/from16 v7, p0

    move-object v10, v10

    move-object v6, v9
    :try_end_a7
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_a1 .. :try_end_a7} :catch_af
    .catch Lcom/facebook/ads/redexgen/X/b7; {:try_start_a1 .. :try_end_a7} :catch_114
    .catch Lcom/facebook/ads/redexgen/X/b4; {:try_start_a1 .. :try_end_a7} :catch_fa

    :try_start_a7
    move/from16 v11, p4

    invoke-direct/range {v7 .. v14}, Lcom/facebook/ads/redexgen/X/bA;->A05(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/b6;Ljava/lang/String;IIJ)V

    goto :goto_cd
    :try_end_ad
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_a7 .. :try_end_ad} :catch_ad
    .catch Lcom/facebook/ads/redexgen/X/b7; {:try_start_a7 .. :try_end_ad} :catch_114
    .catch Lcom/facebook/ads/redexgen/X/b4; {:try_start_a7 .. :try_end_ad} :catch_fa

    :catch_ad
    move-exception v2

    goto :goto_b1

    :catch_af
    move-exception v2

    move-object v6, v9

    :goto_b1
    :try_start_b1
    iget v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A00:I

    add-int/lit8 v1, v1, -0x1

    if-ne v12, v1, :cond_c2

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/bA;->A06(Lcom/facebook/ads/redexgen/X/b6;)V

    instance-of v1, v2, Lcom/facebook/ads/redexgen/X/b7;

    if-nez v1, :cond_c9

    instance-of v1, v2, Lcom/facebook/ads/redexgen/X/b4;

    if-nez v1, :cond_c6

    :cond_c2
    add-int/lit8 v12, v12, 0x1

    move-object v9, v6

    goto :goto_9d

    :cond_c6
    check-cast v2, Lcom/facebook/ads/redexgen/X/b4;

    throw v2

    :cond_c9
    check-cast v2, Lcom/facebook/ads/redexgen/X/b7;

    throw v2

    :cond_cc
    move-object v6, v9

    :goto_cd
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/b6;->A03()I

    move-result v8

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/b6;->A06()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v13

    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/09;->A00()Lcom/facebook/ads/redexgen/X/03;

    move-result-object v2

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    invoke-interface {v2, v3, v1}, Lcom/facebook/ads/redexgen/X/03;->A4R(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0L;)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A06:Ljava/util/Map;

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    const/16 v11, 0x840

    const/4 v12, 0x0

    int-to-long v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v15, v5

    invoke-interface/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/0L;->AEH(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/facebook/ads/redexgen/X/06;)V

    return-object v3
    :try_end_fa
    .catch Lcom/facebook/ads/redexgen/X/b7; {:try_start_b1 .. :try_end_fa} :catch_114
    .catch Lcom/facebook/ads/redexgen/X/b4; {:try_start_b1 .. :try_end_fa} :catch_fa

    :catch_fa
    move-exception v1

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    const/16 v11, 0x841

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/b4;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v15, v5

    invoke-interface/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/0L;->AEH(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/facebook/ads/redexgen/X/06;)V

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v0, :cond_112

    sget-object v0, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_112
    const/4 v0, 0x0

    return-object v0

    :catch_114
    move-exception v1

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    const/16 v11, 0x847

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/b7;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v15, v5

    invoke-interface/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/0L;->AEH(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/facebook/ads/redexgen/X/06;)V

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v0, :cond_12c

    sget-object v0, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/bA;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length v0, v3

    if-ge p0, v0, :cond_3b

    aget-byte p1, v3, p0

    sub-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/bA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_35

    sget-object v2, Lcom/facebook/ads/redexgen/X/bA;->A0A:[Ljava/lang/String;

    const-string v1, "m9U6X0moZlc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "IfCNkNm6kG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 v0, p1, -0x4c

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .registers 3

    const/16 v0, 0x16c

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/facebook/ads/redexgen/X/bA;->A09:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/bA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_24

    sget-object v2, Lcom/facebook/ads/redexgen/X/bA;->A0A:[Ljava/lang/String;

    const-string v1, "1YrvosXM8zHw8wsMUb3ulJ8Xgx5scBHO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_2a
    .array-data 1
        -0x69t
        -0x21t
        -0x28t
        -0x16t
        -0x69t
        -0x27t
        -0x24t
        -0x24t
        -0x1bt
        -0x69t
        -0x20t
        -0x1bt
        -0x15t
        -0x24t
        -0x17t
        -0x17t
        -0x14t
        -0x19t
        -0x15t
        -0x24t
        -0x25t
        -0x5bt
        -0x3ft
        -0x4bt
        -0x5t
        -0x2t
        0x1t
        -0x6t
        -0x4bt
        -0x8t
        0x1t
        -0x6t
        -0xat
        0x3t
        -0x6t
        -0x7t
        -0x31t
        -0x4bt
        -0x7dt
        0x75t
        -0x6at
        -0x37t
        -0x37t
        -0x46t
        -0x3et
        -0x3bt
        -0x37t
        -0x71t
        0x75t
        -0x7t
        0x17t
        0x19t
        0x1et
        0x1ft
        0x24t
        0x1dt
        -0x2at
        0x1ct
        0x1ft
        0x22t
        0x1bt
        -0x2at
        0x19t
        0x25t
        0x23t
        0x26t
        0x22t
        0x1bt
        0x2at
        0x1bt
        -0x2at
        0x4t
        0x22t
        0x24t
        0x29t
        0x2at
        0x2ft
        0x28t
        -0x1ft
        0x27t
        0x2at
        0x2dt
        0x26t
        -0x1ft
        0x2ft
        0x30t
        0x35t
        -0x1ft
        0x24t
        0x30t
        0x2et
        0x31t
        0x2dt
        0x26t
        0x35t
        0x26t
        -0x1ft
        -0x5bt
        -0x3dt
        -0x3bt
        -0x36t
        -0x35t
        -0x30t
        -0x37t
        -0x7et
        -0x2ft
        -0x38t
        -0x7et
        -0x20t
        -0x2t
        0xbt
        -0x3ct
        0x11t
        -0x43t
        0x0t
        0x9t
        0xct
        0x10t
        0x2t
        -0x43t
        0x0t
        -0x2t
        0x0t
        0x5t
        0x2t
        -0x43t
        0x3t
        0x6t
        0x9t
        0x2t
        -0x35t
        -0x50t
        -0x32t
        -0x25t
        -0x6ct
        -0x1ft
        -0x73t
        -0x21t
        -0x2et
        -0x32t
        -0x2ft
        -0x73t
        -0x32t
        -0x20t
        -0x20t
        -0x2et
        -0x1ft
        -0x20t
        -0x65t
        -0x45t
        -0x27t
        -0x1at
        -0x61t
        -0x14t
        -0x68t
        -0x16t
        -0x23t
        -0x27t
        -0x24t
        -0x68t
        -0x1ct
        -0x23t
        -0x1at
        -0x21t
        -0x14t
        -0x20t
        -0x68t
        -0x19t
        -0x22t
        -0x68t
        -0x48t
        -0x27t
        -0x20t
        -0x27t
        -0x18t
        -0x23t
        -0x1et
        -0x25t
        -0x6ct
        -0x29t
        -0x2bt
        -0x29t
        -0x24t
        -0x27t
        -0x6ct
        -0x26t
        -0x23t
        -0x20t
        -0x27t
        -0x6ct
        -0x2bt
        -0x26t
        -0x18t
        -0x27t
        -0x1at
        -0x6ct
        -0x27t
        -0x14t
        -0x29t
        -0x27t
        -0x27t
        -0x28t
        -0x23t
        -0x1et
        -0x25t
        -0x6ct
        -0x1at
        -0x27t
        -0x18t
        -0x1at
        -0x13t
        -0x6ct
        -0x2bt
        -0x18t
        -0x18t
        -0x27t
        -0x1ft
        -0x1ct
        -0x18t
        -0x19t
        -0x52t
        -0x6ct
        -0x2bt
        0x2t
        0x2t
        -0x1t
        0x2t
        -0x50t
        -0xdt
        -0xft
        -0xdt
        -0x8t
        -0x7t
        -0x2t
        -0x9t
        -0x50t
        0x4t
        -0x8t
        -0xbt
        -0x50t
        -0xat
        -0x7t
        -0x4t
        -0xbt
        -0x36t
        -0x9t
        -0x9t
        -0xct
        -0x9t
        -0x5bt
        -0x18t
        -0xft
        -0x16t
        -0x1at
        -0xdt
        -0x12t
        -0xdt
        -0x14t
        -0x5bt
        -0x15t
        -0x12t
        -0xft
        -0x16t
        -0x48t
        -0x1bt
        -0x1bt
        -0x1et
        -0x1bt
        -0x6dt
        -0x2at
        -0x21t
        -0x1et
        -0x1at
        -0x24t
        -0x1ft
        -0x26t
        -0x6dt
        -0x1at
        -0x1et
        -0x18t
        -0x1bt
        -0x2at
        -0x28t
        -0x48t
        -0x23t
        -0x2et
        -0x22t
        -0x24t
        -0x21t
        -0x25t
        -0x2ct
        -0x1dt
        -0x2ct
        -0x71t
        -0x1ft
        -0x2ct
        -0x1et
        -0x21t
        -0x22t
        -0x23t
        -0x1et
        -0x2ct
        -0x63t
        -0x41t
        -0x23t
        -0x1ct
        -0x2ct
        -0x27t
        -0x2et
        -0x75t
        -0x21t
        -0x26t
        -0x75t
        -0x23t
        -0x30t
        -0x34t
        -0x31t
        -0x75t
        -0x49t
        -0x46t
        -0x3ct
        -0x33t
        -0x7dt
        -0x44t
        -0x41t
        -0x3et
        -0x45t
        -0x7dt
        -0x47t
        -0x49t
        -0x47t
        -0x42t
        -0x45t
        -0x12t
        0x0t
        0x0t
        -0xet
        0x1t
        -0x39t
        -0x44t
        -0x44t
        -0x44t
        0x5t
        0x8t
        0xbt
        0x4t
        -0x27t
        -0x32t
        -0x32t
        -0x32t
        0x0t
        0xdt
        0x3t
        0x11t
        0xet
        0x8t
        0x3t
        -0x2t
        0x0t
        0x12t
        0x12t
        0x4t
        0x13t
        -0x32t
    .end array-data
.end method

.method private A05(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/b6;Ljava/lang/String;IIJ)V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/0H;
        }
    .end annotation

    move-object/from16 v1, p0

    const/16 v3, 0x107

    const/16 v2, 0x14

    const/16 v0, 0x27

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x156

    const/16 v3, 0x16

    const/16 v0, 0x53

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v11, p3

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v5, p1

    if-eqz v0, :cond_2d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/bA;->A00(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/b8;

    move-result-object v0

    goto :goto_51

    :cond_2d
    const/16 v4, 0x14d

    const/16 v3, 0x9

    const/16 v0, 0x41

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/bA;->A00(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/b8;

    move-result-object v0

    goto :goto_51

    :cond_4a
    new-instance v0, Lcom/facebook/ads/redexgen/X/b5;

    move/from16 v3, p4

    invoke-direct {v0, v11, v3}, Lcom/facebook/ads/redexgen/X/b5;-><init>(Ljava/lang/String;I)V

    :goto_51
    :try_start_51
    move-wide/from16 v13, p6

    iget-boolean v3, v1, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v3, :cond_89
    :try_end_57
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_51 .. :try_end_57} :catch_165
    .catchall {:try_start_51 .. :try_end_57} :catchall_163

    :try_start_57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x12f

    const/16 v4, 0xf

    const/16 v3, 0x1f

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v5, 0x26

    const/16 v4, 0xb

    const/16 v3, 0x9

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_7c
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_57 .. :try_end_7c} :catch_167
    .catchall {:try_start_57 .. :try_end_7c} :catchall_86

    :try_start_7c
    move/from16 v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_89
    :try_end_86
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_7c .. :try_end_86} :catch_123
    .catchall {:try_start_7c .. :try_end_86} :catchall_121

    :catchall_86
    move-exception v6

    goto/16 :goto_190

    :cond_89
    :goto_89
    :try_start_89
    move-object/from16 v5, p2

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/b6;->A03()I

    move-result v9

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0K;->length()I
    :try_end_92
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_89 .. :try_end_92} :catch_165
    .catchall {:try_start_89 .. :try_end_92} :catchall_163

    move-result v7

    sget-object v4, Lcom/facebook/ads/redexgen/X/bA;->A0A:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x10

    if-eq v4, v3, :cond_a6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a6
    sget-object v6, Lcom/facebook/ads/redexgen/X/bA;->A0A:[Ljava/lang/String;

    const-string v4, "eTbeym3Ey2TfwhNFyBG6ZkfAKtzQxWab"

    const/4 v3, 0x1

    aput-object v4, v6, v3

    const-string v4, "sd4JUTjhNLXLgefrlj4RQDt9w4Pjz5Uj"

    const/4 v3, 0x3

    aput-object v4, v6, v3

    if-gez v7, :cond_b8

    const/4 v12, 0x1

    :goto_b5
    if-eqz v12, :cond_ee

    goto :goto_ba

    :cond_b8
    const/4 v12, 0x0

    goto :goto_b5

    :goto_ba
    :try_start_ba
    invoke-direct {v1, v5}, Lcom/facebook/ads/redexgen/X/bA;->A07(Lcom/facebook/ads/redexgen/X/b6;)Z

    move-result v10

    iget-boolean v3, v1, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v3, :cond_ee

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x95

    const/16 v4, 0x15

    const/16 v3, 0x2c

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v6, 0x16

    const/16 v4, 0x10

    const/16 v3, 0x49

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_ee
    if-nez v12, :cond_f2

    if-ge v9, v7, :cond_104
    :try_end_f2
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_ba .. :try_end_f2} :catch_123
    .catchall {:try_start_ba .. :try_end_f2} :catchall_121

    :cond_f2
    :try_start_f2
    invoke-interface {v0, v9}, Lcom/facebook/ads/redexgen/X/0K;->ADc(I)V

    const/16 v3, 0x2000

    new-array v6, v3, [B

    :goto_f9
    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/0K;->read([B)I

    move-result v4

    const/4 v3, -0x1

    if-eq v4, v3, :cond_104
    :try_end_100
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_f2 .. :try_end_100} :catch_165
    .catchall {:try_start_f2 .. :try_end_100} :catchall_163

    :try_start_100
    invoke-virtual {v5, v6, v4}, Lcom/facebook/ads/redexgen/X/b6;->A08([BI)V

    goto :goto_f9

    :cond_104
    if-eqz v12, :cond_10a

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/b6;->A07()V

    goto :goto_113
    :try_end_10a
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_100 .. :try_end_10a} :catch_123
    .catchall {:try_start_100 .. :try_end_10a} :catchall_121

    :cond_10a
    :try_start_10a
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/b6;->A03()I

    move-result v3

    if-ne v3, v7, :cond_14f

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/b6;->A07()V

    :goto_113
    const/16 v21, 0x0

    instance-of v3, v0, Lcom/facebook/ads/redexgen/X/b5;

    if-eqz v3, :cond_125
    :try_end_119
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_10a .. :try_end_119} :catch_165
    .catchall {:try_start_10a .. :try_end_119} :catchall_163

    :try_start_119
    move-object v3, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/b5;->A06()I

    move-result v21

    goto :goto_125
    :try_end_121
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_119 .. :try_end_121} :catch_123
    .catchall {:try_start_119 .. :try_end_121} :catchall_121

    :catchall_121
    move-exception v6

    goto :goto_190

    :catch_123
    move-exception v4

    goto :goto_168

    :cond_125
    :goto_125
    :try_start_125
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/bA;->A05:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/b6;->A03()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v19, 0x0

    const/16 v22, 0x0
    :try_end_139
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_125 .. :try_end_139} :catch_165
    .catchall {:try_start_125 .. :try_end_139} :catchall_163

    :try_start_139
    move-wide/from16 v17, v3

    invoke-interface/range {v12 .. v22}, Lcom/facebook/ads/redexgen/X/7w;->A9X(JJJJILjava/lang/Exception;)V
    :try_end_13e
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_139 .. :try_end_13e} :catch_161
    .catchall {:try_start_139 .. :try_end_13e} :catchall_15f

    :try_start_13e
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0K;->close()V

    goto :goto_14e
    :try_end_142
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_13e .. :try_end_142} :catch_142
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13e .. :try_end_142} :catch_144

    :catch_142
    move-exception v3

    goto :goto_145

    :catch_144
    move-exception v3

    :goto_145
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v0, :cond_14e

    sget-object v0, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14e
    :goto_14e
    return-void

    :cond_14f
    :try_start_14f
    const/16 v5, 0x11b

    const/16 v4, 0x14

    const/16 v3, 0x23

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/b7;

    invoke-direct {v3, v4}, Lcom/facebook/ads/redexgen/X/b7;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_15f
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_14f .. :try_end_15f} :catch_161
    .catchall {:try_start_14f .. :try_end_15f} :catchall_15f

    :catchall_15f
    move-exception v6

    goto :goto_190

    :catch_161
    move-exception v4

    goto :goto_168

    :catchall_163
    move-exception v6

    goto :goto_190

    :catch_165
    move-exception v4

    goto :goto_168

    :catch_167
    move-exception v4

    :goto_168
    const/16 v21, 0x0

    :try_start_16a
    instance-of v3, v0, Lcom/facebook/ads/redexgen/X/b5;

    if-eqz v3, :cond_178
    :try_end_16e
    .catchall {:try_start_16a .. :try_end_16e} :catchall_18f

    :try_start_16e
    move-object v3, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/b5;->A06()I

    move-result v21

    goto :goto_178
    :try_end_176
    .catchall {:try_start_16e .. :try_end_176} :catchall_176

    :catchall_176
    move-exception v6

    goto :goto_190

    :cond_178
    :goto_178
    :try_start_178
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/bA;->A05:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0
    :try_end_189
    .catchall {:try_start_178 .. :try_end_189} :catchall_18f

    :try_start_189
    invoke-interface/range {v12 .. v22}, Lcom/facebook/ads/redexgen/X/7w;->A9X(JJJJILjava/lang/Exception;)V

    throw v4
    :try_end_18d
    .catchall {:try_start_189 .. :try_end_18d} :catchall_18d

    :catchall_18d
    move-exception v6

    goto :goto_190

    :catchall_18f
    move-exception v6

    :goto_190
    :try_start_190
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0K;->close()V

    goto :goto_1b9
    :try_end_194
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_190 .. :try_end_194} :catch_194
    .catch Ljava/lang/IllegalArgumentException; {:try_start_190 .. :try_end_194} :catch_196

    :catch_194
    move-exception v5

    goto :goto_197

    :catch_196
    move-exception v5

    :goto_197
    iget-boolean v4, v1, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    sget-object v3, Lcom/facebook/ads/redexgen/X/bA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v3, v0

    const/4 v0, 0x7

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1ba

    sget-object v3, Lcom/facebook/ads/redexgen/X/bA;->A0A:[Ljava/lang/String;

    const-string v1, "T9HhHUPHmRtDRYih6csTBmWckuigXZik"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    if-eqz v4, :cond_1b9

    :goto_1b4
    sget-object v0, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b9
    :goto_1b9
    throw v6

    :cond_1ba
    if-eqz v4, :cond_1b9

    goto :goto_1b4
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/b6;)V
    .registers 8

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b6;->A04()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b6;->A06()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v0, :cond_4a

    sget-object v4, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xaa

    const/16 v1, 0x34

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_36

    :catch_36
    move-exception v4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v0, :cond_4a

    sget-object v3, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    const/16 v2, 0x6c

    const/16 v1, 0x17

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    :goto_4a
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/b6;)Z
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b6;->A05()V

    const/4 v0, 0x1

    return v0
    :try_end_5
    .catch Lcom/facebook/ads/redexgen/X/b4; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    move-exception v4

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/bA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_30

    sget-object v2, Lcom/facebook/ads/redexgen/X/bA;->A0A:[Ljava/lang/String;

    const-string v1, "AEs2mSbxTVyMZvMH4XlDgcN9VznTkYzp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2e

    sget-object v3, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    const/16 v2, 0xf4

    const/16 v1, 0x13

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    const/4 v0, 0x0

    return v0

    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A08(Lcom/facebook/ads/redexgen/X/06;Lcom/facebook/ads/redexgen/X/09;)Lcom/facebook/ads/redexgen/X/02;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/06;",
            "Lcom/facebook/ads/redexgen/X/09<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/02<",
            "TT;>;"
        }
    .end annotation

    move-object v12, p2

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/09;->A03()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v8, p1

    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A06:Ljava/util/Map;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/06;->A09:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_29

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/06;->A09:Ljava/lang/String;

    invoke-interface {v1, v0, v3, v8}, Lcom/facebook/ads/redexgen/X/0L;->AEI(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/06;)V

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/09;->A00()Lcom/facebook/ads/redexgen/X/03;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/03;->A3I(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0L;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    return-object v0

    :cond_29
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/06;->A09:Ljava/lang/String;

    invoke-interface {v1, v0, v5, v8}, Lcom/facebook/ads/redexgen/X/0L;->AEI(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/06;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/02;

    invoke-direct {v0, v5, v6}, Lcom/facebook/ads/redexgen/X/02;-><init>(ZLjava/lang/Object;)V

    return-object v0

    :cond_36
    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/06;->A09:Ljava/lang/String;

    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/06;->A04:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A03:Lcom/facebook/ads/redexgen/X/0A;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/0A;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    monitor-enter v1

    :try_start_54
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Semaphore;

    if-nez v4, :cond_68

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    invoke-interface {v0, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_54 .. :try_end_69} :catchall_f5

    :try_start_69
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget v11, p0, Lcom/facebook/ads/redexgen/X/bA;->A01:I

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/bA;->A02(Lcom/facebook/ads/redexgen/X/06;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/09;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_8f

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/09;->A00()Lcom/facebook/ads/redexgen/X/03;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/03;->A3I(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0L;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v2
    :try_end_7f
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_7f} :catch_a4
    .catchall {:try_start_69 .. :try_end_7f} :catchall_e4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    monitor-enter v1

    :try_start_85
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v2

    :catchall_8c
    move-exception v0

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_8c

    throw v0

    :cond_8f
    :try_start_8f
    new-instance v2, Lcom/facebook/ads/redexgen/X/02;

    invoke-direct {v2, v5, v6}, Lcom/facebook/ads/redexgen/X/02;-><init>(ZLjava/lang/Object;)V
    :try_end_94
    .catch Ljava/lang/InterruptedException; {:try_start_8f .. :try_end_94} :catch_a4
    .catchall {:try_start_8f .. :try_end_94} :catchall_e4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    monitor-enter v1

    :try_start_9a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v2

    :catchall_a1
    move-exception v0

    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_9a .. :try_end_a3} :catchall_a1

    throw v0

    :catch_a4
    :try_start_a4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v0, :cond_cf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x61

    const/16 v1, 0xb

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_cf
    new-instance v2, Lcom/facebook/ads/redexgen/X/02;

    invoke-direct {v2, v5, v6}, Lcom/facebook/ads/redexgen/X/02;-><init>(ZLjava/lang/Object;)V
    :try_end_d4
    .catchall {:try_start_a4 .. :try_end_d4} :catchall_e4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    monitor-enter v1

    :try_start_da
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v2

    :catchall_e1
    move-exception v0

    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_da .. :try_end_e3} :catchall_e1

    throw v0

    :catchall_e4
    move-exception v2

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    monitor-enter v1

    :try_start_eb
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_eb .. :try_end_f1} :catchall_f2

    throw v2

    :catchall_f2
    move-exception v0

    :try_start_f3
    monitor-exit v1
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw v0

    :catchall_f5
    move-exception v0

    :try_start_f6
    monitor-exit v1
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    throw v0
.end method

.method public final AEh(Lcom/facebook/ads/redexgen/X/06;Z)Lcom/facebook/ads/redexgen/X/02;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/06;",
            "Z)",
            "Lcom/facebook/ads/redexgen/X/02<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/facebook/ads/redexgen/X/bD;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/06;->A01:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/06;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A02:Lcom/facebook/ads/redexgen/X/08;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/08;->A04()Z

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A02:Lcom/facebook/ads/redexgen/X/08;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/08;->A03()Z

    move-result v5

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/bD;-><init>(IIZZZ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/09;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/09;-><init>(Lcom/facebook/ads/redexgen/X/03;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/bA;->A08(Lcom/facebook/ads/redexgen/X/06;Lcom/facebook/ads/redexgen/X/09;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    return-object v0
.end method

.method public final AEi(Lcom/facebook/ads/redexgen/X/06;)Ljava/io/File;
    .registers 4

    new-instance v0, Lcom/facebook/ads/redexgen/X/bC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bC;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/09;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/09;-><init>(Lcom/facebook/ads/redexgen/X/03;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/09;->A01(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/09;->A02(Z)V

    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/bA;->A08(Lcom/facebook/ads/redexgen/X/06;Lcom/facebook/ads/redexgen/X/09;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/02;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final AEj(Lcom/facebook/ads/redexgen/X/06;)Ljava/lang/String;
    .registers 4

    new-instance v1, Lcom/facebook/ads/redexgen/X/bB;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/bB;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/09;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/09;-><init>(Lcom/facebook/ads/redexgen/X/03;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/bA;->A08(Lcom/facebook/ads/redexgen/X/06;Lcom/facebook/ads/redexgen/X/09;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/02;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final AEk(Lcom/facebook/ads/redexgen/X/06;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/facebook/ads/redexgen/X/bB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bB;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/09;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/09;-><init>(Lcom/facebook/ads/redexgen/X/03;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/09;->A01(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/09;->A02(Z)V

    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/bA;->A08(Lcom/facebook/ads/redexgen/X/06;Lcom/facebook/ads/redexgen/X/09;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/02;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
