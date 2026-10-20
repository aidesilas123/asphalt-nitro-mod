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

    .line 74049
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

    .line 74050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74051
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74052
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A06:Ljava/util/Map;

    .line 74053
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    .line 74054
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bA;->A05:Lcom/facebook/ads/redexgen/X/7S;

    .line 74055
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/08;->A02()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    .line 74056
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/08;->A00()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A00:I

    .line 74057
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    .line 74058
    new-instance v0, Lcom/facebook/ads/redexgen/X/0A;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0A;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A03:Lcom/facebook/ads/redexgen/X/0A;

    .line 74059
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/08;->A01()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A01:I

    .line 74060
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bA;->A02:Lcom/facebook/ads/redexgen/X/08;

    .line 74061
    return-void
.end method

.method public static A00(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/b8;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/0H;
        }
    .end annotation

    .line 74062
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 74063
    .local v0, "is":Ljava/io/InputStream;
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74064
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0x400

    new-array v3, v0, [B

    .line 74065
    .local v2, "data":[B
    :goto_11
    array-length v0, v3

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local p1, "nRead":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1e

    .line 74066
    invoke-virtual {p0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_11

    .line 74067
    :cond_1e
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/b8;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/b8;-><init>([B)V

    .line 74068
    .end local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local p1    # "nRead":I
    .local v0, "source":Lcom/facebook/ads/redexgen/X/0K;
    return-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_28

    .line 74069
    .end local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :catch_28
    move-exception v3

    .line 74070
    .local v0, "e":Ljava/io/IOException;
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

    .line 74071
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

    .line 74072
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

    .line 74073
    .local v14, "requestTime":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A05:Lcom/facebook/ads/redexgen/X/7S;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/bA;->A01(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 74074
    .local v7, "cacheRoot":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    move-object/from16 v2, p3

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74075
    .local v6, "targetFile":Ljava/io/File;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A05:Lcom/facebook/ads/redexgen/X/7S;

    .line 74076
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IP;->A0N(Landroid/content/Context;)J

    move-result-wide v1

    new-instance v6, Lcom/facebook/ads/redexgen/X/FU;

    invoke-direct {v6, v1, v2}, Lcom/facebook/ads/redexgen/X/FU;-><init>(J)V

    new-instance v9, Lcom/facebook/ads/redexgen/X/b6;

    invoke-direct {v9, v3, v6}, Lcom/facebook/ads/redexgen/X/b6;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0B;)V

    .line 74077
    .local v5, "cache":Lcom/facebook/ads/redexgen/X/b6;
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/b6;->A09()Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_6b

    .line 74078
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v1, :cond_5d

    .line 74079
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

    .line 74080
    :cond_5d
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A06:Ljava/util/Map;

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74081
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/b6;->A06()V

    .line 74082
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    invoke-interface {v1, v10, v6, v5}, Lcom/facebook/ads/redexgen/X/0L;->AEI(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/06;)V

    .line 74083
    return-object v3

    .line 74084
    :cond_6b
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v1, :cond_8f

    .line 74085
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

    .line 74086
    :cond_8f
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/09;->A04()Z

    move-result v1

    if-nez v1, :cond_96

    .line 74087
    return-object v8

    .line 74088
    :cond_96
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    const/4 v1, 0x0

    invoke-interface {v2, v10, v1, v5}, Lcom/facebook/ads/redexgen/X/0L;->AEI(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/06;)V

    .line 74089
    const/4 v12, 0x0

    .local v3, "attempt":I
    :goto_9d
    iget v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A00:I

    if-ge v12, v1, :cond_cc
    :try_end_a1
    .catch Lcom/facebook/ads/redexgen/X/b7; {:try_start_d .. :try_end_a1} :catch_114
    .catch Lcom/facebook/ads/redexgen/X/b4; {:try_start_d .. :try_end_a1} :catch_fa

    .line 74090
    :try_start_a1
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/bA;->A05:Lcom/facebook/ads/redexgen/X/7S;

    move-object/from16 v7, p0

    .end local v3    # "attempt":I
    .local p0, "attempt":I
    move-object v10, v10

    move-object v6, v9
    :try_end_a7
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_a1 .. :try_end_a7} :catch_af
    .catch Lcom/facebook/ads/redexgen/X/b7; {:try_start_a1 .. :try_end_a7} :catch_114
    .catch Lcom/facebook/ads/redexgen/X/b4; {:try_start_a1 .. :try_end_a7} :catch_fa

    .end local v5    # "cache":Lcom/facebook/ads/redexgen/X/b6;
    .local v13, "cache":Lcom/facebook/ads/redexgen/X/b6;
    .end local v6    # "targetFile":Ljava/io/File;
    .local v10, "targetFile":Ljava/io/File;
    .end local v7    # "cacheRoot":Ljava/io/File;
    .local p2, "cacheRoot":Ljava/io/File;
    :try_start_a7
    move/from16 v11, p4

    invoke-direct/range {v7 .. v14}, Lcom/facebook/ads/redexgen/X/bA;->A05(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/b6;Ljava/lang/String;IIJ)V

    goto :goto_cd
    :try_end_ad
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_a7 .. :try_end_ad} :catch_ad
    .catch Lcom/facebook/ads/redexgen/X/b7; {:try_start_a7 .. :try_end_ad} :catch_114
    .catch Lcom/facebook/ads/redexgen/X/b4; {:try_start_a7 .. :try_end_ad} :catch_fa

    .line 74091
    :catch_ad
    move-exception v2

    goto :goto_b1

    .end local v10    # "targetFile":Ljava/io/File;
    .end local v13    # "cache":Lcom/facebook/ads/redexgen/X/b6;
    .end local p0    # "attempt":I
    .end local p2    # "cacheRoot":Ljava/io/File;
    .restart local v3    # "attempt":I
    .restart local v5    # "cache":Lcom/facebook/ads/redexgen/X/b6;
    .restart local v6    # "targetFile":Ljava/io/File;
    .restart local v7    # "cacheRoot":Ljava/io/File;
    :catch_af
    move-exception v2

    move-object v6, v9

    .line 74092
    .local v0, "proxyCacheException":Lcom/facebook/ads/redexgen/X/0H;
    :goto_b1
    :try_start_b1
    iget v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A00:I

    add-int/lit8 v1, v1, -0x1

    .end local p0
    .local v2, "attempt":I
    if-ne v12, v1, :cond_c2

    .line 74093
    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/bA;->A06(Lcom/facebook/ads/redexgen/X/b6;)V

    .line 74094
    instance-of v1, v2, Lcom/facebook/ads/redexgen/X/b7;

    if-nez v1, :cond_c9

    .line 74095
    instance-of v1, v2, Lcom/facebook/ads/redexgen/X/b4;

    if-nez v1, :cond_c6

    .line 74096
    .end local v0    # "proxyCacheException":Lcom/facebook/ads/redexgen/X/0H;
    .restart local p4    # null:I
    .restart local p5    # null:Lcom/facebook/ads/redexgen/X/09;
    .restart local p6
    .restart local p7
    .restart local p8
    :cond_c2
    add-int/lit8 v12, v12, 0x1

    move-object v9, v6

    .end local v2    # "attempt":I
    .restart local v3    # "attempt":I
    goto :goto_9d

    .line 74097
    :cond_c6
    check-cast v2, Lcom/facebook/ads/redexgen/X/b4;

    .end local p4    # null:I
    .end local p5    # null:Lcom/facebook/ads/redexgen/X/09;
    .end local p6
    .end local p7
    .end local p8
    throw v2

    .line 74098
    .restart local p4    # null:I
    .restart local p5    # null:Lcom/facebook/ads/redexgen/X/09;
    .restart local p6
    .restart local p7
    .restart local p8
    :cond_c9
    check-cast v2, Lcom/facebook/ads/redexgen/X/b7;

    .end local p4    # null:I
    .end local p5    # null:Lcom/facebook/ads/redexgen/X/09;
    .end local p6
    .end local p7
    .end local p8
    throw v2

    .line 74099
    .end local v10
    .end local v13
    .end local p2
    .restart local v5    # "cache":Lcom/facebook/ads/redexgen/X/b6;
    .restart local v6    # "targetFile":Ljava/io/File;
    .restart local v7    # "cacheRoot":Ljava/io/File;
    :cond_cc
    move-object v6, v9

    .line 74100
    .end local v3    # "attempt":I
    .end local v5    # "cache":Lcom/facebook/ads/redexgen/X/b6;
    .end local v6    # "targetFile":Ljava/io/File;
    .end local v7    # "cacheRoot":Ljava/io/File;
    .restart local v10    # "targetFile":Ljava/io/File;
    .restart local v13    # "cache":Lcom/facebook/ads/redexgen/X/b6;
    .restart local p2    # "cacheRoot":Ljava/io/File;
    :goto_cd
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/b6;->A03()I

    move-result v8

    .line 74101
    .local v0, "size":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/b6;->A06()V

    .line 74102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v13

    .line 74103
    .local p0, "loadTime":J
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/09;->A00()Lcom/facebook/ads/redexgen/X/03;

    move-result-object v2

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    invoke-interface {v2, v3, v1}, Lcom/facebook/ads/redexgen/X/03;->A4R(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0L;)V

    .line 74104
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bA;->A06:Ljava/util/Map;

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74105
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    const/16 v11, 0x840

    const/4 v12, 0x0

    int-to-long v1, v8

    .line 74106
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 74107
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 74108
    move-object v15, v5

    invoke-interface/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/0L;->AEH(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/facebook/ads/redexgen/X/06;)V

    .line 74109
    return-object v3
    :try_end_fa
    .catch Lcom/facebook/ads/redexgen/X/b7; {:try_start_b1 .. :try_end_fa} :catch_114
    .catch Lcom/facebook/ads/redexgen/X/b4; {:try_start_b1 .. :try_end_fa} :catch_fa

    .line 74110
    .end local v0    # "size":I
    .end local v10    # "targetFile":Ljava/io/File;
    .end local v13    # "cache":Lcom/facebook/ads/redexgen/X/b6;
    .end local v14    # "requestTime":J
    .end local p0    # "loadTime":J
    .end local p2    # "cacheRoot":Ljava/io/File;
    :catch_fa
    move-exception v1

    .line 74111
    .local v0, "e":Lcom/facebook/ads/redexgen/X/b4;
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    const/16 v11, 0x841

    .line 74112
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/b4;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 74113
    move-object v15, v5

    invoke-interface/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/0L;->AEH(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/facebook/ads/redexgen/X/06;)V

    .line 74114
    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v0, :cond_112

    .line 74115
    sget-object v0, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74116
    :cond_112
    const/4 v0, 0x0

    return-object v0

    .line 74117
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/b4;
    :catch_114
    move-exception v1

    .line 74118
    .local v0, "e":Lcom/facebook/ads/redexgen/X/b7;
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    const/16 v11, 0x847

    .line 74119
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/b7;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 74120
    move-object v15, v5

    invoke-interface/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/0L;->AEH(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/facebook/ads/redexgen/X/06;)V

    .line 74121
    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v0, :cond_12c

    .line 74122
    sget-object v0, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74123
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

    .line 74124
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

    .line 74125
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 74126
    .local v0, "localUrl":Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/bA;->A00(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/b8;

    move-result-object v0

    .line 74127
    .local v0, "source":Lcom/facebook/ads/redexgen/X/0K;
    goto :goto_51

    .end local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :cond_2d
    const/16 v4, 0x14d

    const/16 v3, 0x9

    const/16 v0, 0x41

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 74128
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 74129
    .local v0, "localUrl":Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/bA;->A00(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/b8;

    move-result-object v0

    .line 74130
    .local v0, "source":Lcom/facebook/ads/redexgen/X/0K;
    goto :goto_51

    .line 74131
    .end local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :cond_4a
    new-instance v0, Lcom/facebook/ads/redexgen/X/b5;

    move/from16 v3, p4

    invoke-direct {v0, v11, v3}, Lcom/facebook/ads/redexgen/X/b5;-><init>(Ljava/lang/String;I)V

    .line 74132
    .local v12, "source":Lcom/facebook/ads/redexgen/X/0K;
    :goto_51
    :try_start_51
    move-wide/from16 v13, p6

    iget-boolean v3, v1, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v3, :cond_89
    :try_end_57
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_51 .. :try_end_57} :catch_165
    .catchall {:try_start_51 .. :try_end_57} :catchall_163

    .line 74133
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

    .line 74134
    :catchall_86
    move-exception v6

    goto/16 :goto_190

    .line 74135
    :cond_89
    :goto_89
    :try_start_89
    move-object/from16 v5, p2

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/b6;->A03()I

    move-result v9

    .line 74136
    .local v0, "offset":I
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

    .line 74137
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 74138
    .local v10, "sourceLength":I
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

    .line 74139
    .local v16, "canNotReadLength":Z
    :goto_b5
    if-eqz v12, :cond_ee

    goto :goto_ba

    .line 74140
    :cond_b8
    const/4 v12, 0x0

    goto :goto_b5

    .line 74141
    :goto_ba
    :try_start_ba
    invoke-direct {v1, v5}, Lcom/facebook/ads/redexgen/X/bA;->A07(Lcom/facebook/ads/redexgen/X/b6;)Z

    move-result v10

    .line 74142
    .local v5, "cleaned":Z
    iget-boolean v3, v1, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v3, :cond_ee

    .line 74143
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

    .line 74144
    .restart local v0    # "offset":I
    .restart local v10    # "sourceLength":I
    .restart local v16    # "canNotReadLength":Z
    :cond_ee
    if-nez v12, :cond_f2

    if-ge v9, v7, :cond_104
    :try_end_f2
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_ba .. :try_end_f2} :catch_123
    .catchall {:try_start_ba .. :try_end_f2} :catchall_121

    .line 74145
    :cond_f2
    :try_start_f2
    invoke-interface {v0, v9}, Lcom/facebook/ads/redexgen/X/0K;->ADc(I)V

    .line 74146
    const/16 v3, 0x2000

    new-array v6, v3, [B

    .line 74147
    .local v5, "buffer":[B
    :goto_f9
    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/0K;->read([B)I

    move-result v4

    .local v7, "readBytes":I
    const/4 v3, -0x1

    if-eq v4, v3, :cond_104
    :try_end_100
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_f2 .. :try_end_100} :catch_165
    .catchall {:try_start_f2 .. :try_end_100} :catchall_163

    .line 74148
    :try_start_100
    invoke-virtual {v5, v6, v4}, Lcom/facebook/ads/redexgen/X/b6;->A08([BI)V

    goto :goto_f9

    .line 74149
    .end local v5    # "buffer":[B
    .end local v7    # "readBytes":I
    :cond_104
    if-eqz v12, :cond_10a

    .line 74150
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/b6;->A07()V

    goto :goto_113
    :try_end_10a
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_100 .. :try_end_10a} :catch_123
    .catchall {:try_start_100 .. :try_end_10a} :catchall_121

    .line 74151
    :cond_10a
    :try_start_10a
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/b6;->A03()I

    move-result v3

    if-ne v3, v7, :cond_14f

    .line 74152
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/b6;->A07()V

    .line 74153
    :goto_113
    const/16 v21, 0x0

    .line 74154
    .local v5, "code":I
    instance-of v3, v0, Lcom/facebook/ads/redexgen/X/b5;

    if-eqz v3, :cond_125
    :try_end_119
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_10a .. :try_end_119} :catch_165
    .catchall {:try_start_10a .. :try_end_119} :catchall_163

    .line 74155
    :try_start_119
    move-object v3, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/b5;->A06()I

    move-result v21

    goto :goto_125
    :try_end_121
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_119 .. :try_end_121} :catch_123
    .catchall {:try_start_119 .. :try_end_121} :catchall_121

    .line 74156
    .end local v0    # "offset":I
    .end local v5    # "code":I
    .end local v10    # "sourceLength":I
    .end local v16    # "canNotReadLength":Z
    :catchall_121
    move-exception v6

    goto :goto_190

    .line 74157
    :catch_123
    move-exception v4

    goto :goto_168

    .line 74158
    .end local v5
    .local v17, "code":I
    :cond_125
    :goto_125
    :try_start_125
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/bA;->A05:Lcom/facebook/ads/redexgen/X/7S;

    .line 74159
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v12

    .line 74160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    .line 74161
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/b6;->A03()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v19, 0x0

    const/16 v22, 0x0
    :try_end_139
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_125 .. :try_end_139} :catch_165
    .catchall {:try_start_125 .. :try_end_139} :catchall_163

    .line 74162
    .end local v10
    .local p0, "sourceLength":I
    .end local v12    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .local v21, "source":Lcom/facebook/ads/redexgen/X/0K;
    :try_start_139
    move-wide/from16 v17, v3

    invoke-interface/range {v12 .. v22}, Lcom/facebook/ads/redexgen/X/7w;->A9X(JJJJILjava/lang/Exception;)V
    :try_end_13e
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_139 .. :try_end_13e} :catch_161
    .catchall {:try_start_139 .. :try_end_13e} :catchall_15f

    .line 74163
    .end local v0
    .end local v16
    .end local v17    # "code":I
    .end local p0    # "sourceLength":I
    :try_start_13e
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0K;->close()V

    goto :goto_14e
    :try_end_142
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_13e .. :try_end_142} :catch_142
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13e .. :try_end_142} :catch_144

    .line 74164
    :catch_142
    move-exception v3

    goto :goto_145

    :catch_144
    move-exception v3

    .line 74165
    .local v0, "e":Ljava/lang/Exception;
    :goto_145
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v0, :cond_14e

    .line 74166
    sget-object v0, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74167
    :cond_14e
    :goto_14e
    return-void

    .line 74168
    :cond_14f
    :try_start_14f
    const/16 v5, 0x11b

    const/16 v4, 0x14

    const/16 v3, 0x23

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/b7;

    invoke-direct {v3, v4}, Lcom/facebook/ads/redexgen/X/b7;-><init>(Ljava/lang/String;)V

    .end local v21    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/b6;
    .end local p3    # null:Ljava/lang/String;
    .end local p4    # null:I
    .end local p5    # null:I
    .end local p6    # null:J
    .end local p7
    throw v3
    :try_end_15f
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_14f .. :try_end_15f} :catch_161
    .catchall {:try_start_14f .. :try_end_15f} :catchall_15f

    .line 74169
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16
    .end local p0
    .restart local v21    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local p2    # null:Lcom/facebook/ads/redexgen/X/b6;
    .restart local p3    # null:Ljava/lang/String;
    .restart local p4    # null:I
    .restart local p5    # null:I
    .restart local p6    # null:J
    .restart local p7
    :catchall_15f
    move-exception v6

    goto :goto_190

    .line 74170
    :catch_161
    move-exception v4

    goto :goto_168

    .line 74171
    .end local v21    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v12    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :catchall_163
    move-exception v6

    .end local v12    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v21    # "source":Lcom/facebook/ads/redexgen/X/0K;
    goto :goto_190

    .line 74172
    .end local v21    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v12    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :catch_165
    move-exception v4

    goto :goto_168

    :catch_167
    move-exception v4

    .line 74173
    .end local v12    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .local v0, "e":Lcom/facebook/ads/redexgen/X/0H;
    .restart local v21    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :goto_168
    const/16 v21, 0x0

    .line 74174
    .restart local v5    # "code":I
    .end local v21    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .local v15, "source":Lcom/facebook/ads/redexgen/X/0K;
    :try_start_16a
    instance-of v3, v0, Lcom/facebook/ads/redexgen/X/b5;

    if-eqz v3, :cond_178
    :try_end_16e
    .catchall {:try_start_16a .. :try_end_16e} :catchall_18f

    .line 74175
    :try_start_16e
    move-object v3, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/b5;->A06()I

    move-result v21

    goto :goto_178
    :try_end_176
    .catchall {:try_start_16e .. :try_end_176} :catchall_176

    .line 74176
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/0H;
    .end local v5    # "code":I
    :catchall_176
    move-exception v6

    goto :goto_190

    .line 74177
    .end local v5
    .local v16, "code":I
    :cond_178
    :goto_178
    :try_start_178
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/bA;->A05:Lcom/facebook/ads/redexgen/X/7S;

    .line 74178
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v12

    .line 74179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0
    :try_end_189
    .catchall {:try_start_178 .. :try_end_189} :catchall_18f

    .end local v15    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .local v18, "source":Lcom/facebook/ads/redexgen/X/0K;
    :try_start_189
    invoke-interface/range {v12 .. v22}, Lcom/facebook/ads/redexgen/X/7w;->A9X(JJJJILjava/lang/Exception;)V

    .line 74180
    .end local v18    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/b6;
    .end local p3    # null:Ljava/lang/String;
    .end local p4    # null:I
    .end local p5    # null:I
    .end local p6    # null:J
    .end local p7
    throw v4
    :try_end_18d
    .catchall {:try_start_189 .. :try_end_18d} :catchall_18d

    .line 74181
    .end local v0
    .end local v16    # "code":I
    .restart local v18    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local p2    # null:Lcom/facebook/ads/redexgen/X/b6;
    .restart local p3    # null:Ljava/lang/String;
    .restart local p4    # null:I
    .restart local p5    # null:I
    .restart local p6    # null:J
    .restart local p7
    :catchall_18d
    move-exception v6

    goto :goto_190

    .end local v18    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v15    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :catchall_18f
    move-exception v6

    .line 74182
    .end local v15    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v18    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :goto_190
    :try_start_190
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0K;->close()V

    goto :goto_1b9
    :try_end_194
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_190 .. :try_end_194} :catch_194
    .catch Ljava/lang/IllegalArgumentException; {:try_start_190 .. :try_end_194} :catch_196

    .line 74183
    :catch_194
    move-exception v5

    goto :goto_197

    :catch_196
    move-exception v5

    .line 74184
    .local v0, "e":Ljava/lang/Exception;
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

    .line 74185
    :goto_1b4
    sget-object v0, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    invoke-static {v0, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74186
    :cond_1b9
    :goto_1b9
    throw v6

    :cond_1ba
    if-eqz v4, :cond_1b9

    goto :goto_1b4
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/b6;)V
    .registers 8

    .line 74187
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b6;->A04()Ljava/io/File;

    move-result-object v1

    .line 74188
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 74189
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b6;->A06()V

    .line 74190
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    .line 74191
    .local v1, "deleted":Z
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v0, :cond_4a

    .line 74192
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

    .line 74193
    :catch_36
    move-exception v4

    .line 74194
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v0, :cond_4a

    .line 74195
    sget-object v3, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    const/16 v2, 0x6c

    const/16 v1, 0x17

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74196
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/b6;)Z
    .registers 7

    .line 74197
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b6;->A05()V

    .line 74198
    const/4 v0, 0x1

    return v0
    :try_end_5
    .catch Lcom/facebook/ads/redexgen/X/b4; {:try_start_0 .. :try_end_5} :catch_5

    .line 74199
    :catch_5
    move-exception v4

    .line 74200
    .local v0, "e":Lcom/facebook/ads/redexgen/X/b4;
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

    .line 74201
    sget-object v3, Lcom/facebook/ads/redexgen/X/bA;->A0B:Ljava/lang/String;

    const/16 v2, 0xf4

    const/16 v1, 0x13

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bA;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74202
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

    .line 74203
    .local p1, "cacheRequestConfig":Lcom/facebook/ads/redexgen/X/09;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    move-object v12, p2

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/09;->A03()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v8, p1

    if-eqz v0, :cond_36

    .line 74204
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A06:Ljava/util/Map;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/06;->A09:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 74205
    .local v0, "cachedFile":Ljava/io/File;
    if-eqz v2, :cond_29

    .line 74206
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/06;->A09:Ljava/lang/String;

    invoke-interface {v1, v0, v3, v8}, Lcom/facebook/ads/redexgen/X/0L;->AEI(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/06;)V

    .line 74207
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/09;->A00()Lcom/facebook/ads/redexgen/X/03;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/03;->A3I(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0L;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    return-object v0

    .line 74208
    :cond_29
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/06;->A09:Ljava/lang/String;

    invoke-interface {v1, v0, v5, v8}, Lcom/facebook/ads/redexgen/X/0L;->AEI(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/06;)V

    .line 74209
    new-instance v0, Lcom/facebook/ads/redexgen/X/02;

    invoke-direct {v0, v5, v6}, Lcom/facebook/ads/redexgen/X/02;-><init>(ZLjava/lang/Object;)V

    return-object v0

    .line 74210
    .end local v0    # "cachedFile":Ljava/io/File;
    :cond_36
    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/06;->A09:Ljava/lang/String;

    .line 74211
    .local v0, "baseUrl":Ljava/lang/String;
    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/06;->A04:Ljava/lang/String;

    .line 74212
    .local v10, "extension":Ljava/lang/String;
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

    .line 74213
    .local v11, "md5FileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 74214
    :try_start_54
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Semaphore;

    .line 74215
    .local v5, "semaphore":Ljava/util/concurrent/Semaphore;
    if-nez v4, :cond_68

    .line 74216
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 74217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    invoke-interface {v0, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74218
    .end local v5    # "semaphore":Ljava/util/concurrent/Semaphore;
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_54 .. :try_end_69} :catchall_f5

    .line 74219
    :try_start_69
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 74220
    iget v11, p0, Lcom/facebook/ads/redexgen/X/bA;->A01:I

    .line 74221
    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/bA;->A02(Lcom/facebook/ads/redexgen/X/06;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/09;)Ljava/io/File;

    move-result-object v2

    .line 74222
    .local v4, "cachedFile":Ljava/io/File;
    if-eqz v2, :cond_8f

    .line 74223
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/09;->A00()Lcom/facebook/ads/redexgen/X/03;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A04:Lcom/facebook/ads/redexgen/X/0L;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/03;->A3I(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0L;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v2
    :try_end_7f
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_7f} :catch_a4
    .catchall {:try_start_69 .. :try_end_7f} :catchall_e4

    .line 74224
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 74225
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 74226
    :try_start_85
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74227
    monitor-exit v1

    .line 74228
    return-object v2

    .line 74229
    :catchall_8c
    move-exception v0

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_8c

    throw v0

    .line 74230
    :cond_8f
    :try_start_8f
    new-instance v2, Lcom/facebook/ads/redexgen/X/02;

    invoke-direct {v2, v5, v6}, Lcom/facebook/ads/redexgen/X/02;-><init>(ZLjava/lang/Object;)V
    :try_end_94
    .catch Ljava/lang/InterruptedException; {:try_start_8f .. :try_end_94} :catch_a4
    .catchall {:try_start_8f .. :try_end_94} :catchall_e4

    .line 74231
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 74232
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 74233
    :try_start_9a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74234
    monitor-exit v1

    .line 74235
    return-object v2

    .line 74236
    :catchall_a1
    move-exception v0

    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_9a .. :try_end_a3} :catchall_a1

    throw v0

    .line 74237
    .local v4, "e":Ljava/lang/InterruptedException;
    :catch_a4
    :try_start_a4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A08:Z

    if-eqz v0, :cond_cf

    .line 74238
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

    .line 74239
    :cond_cf
    new-instance v2, Lcom/facebook/ads/redexgen/X/02;

    invoke-direct {v2, v5, v6}, Lcom/facebook/ads/redexgen/X/02;-><init>(ZLjava/lang/Object;)V
    :try_end_d4
    .catchall {:try_start_a4 .. :try_end_d4} :catchall_e4

    .line 74240
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 74241
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 74242
    :try_start_da
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74243
    monitor-exit v1

    .line 74244
    return-object v2

    .line 74245
    :catchall_e1
    move-exception v0

    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_da .. :try_end_e3} :catchall_e1

    throw v0

    .line 74246
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catchall_e4
    move-exception v2

    .end local v4
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 74247
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 74248
    :try_start_eb
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A07:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74249
    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_eb .. :try_end_f1} :catchall_f2

    .line 74250
    throw v2

    .line 74251
    :catchall_f2
    move-exception v0

    :try_start_f3
    monitor-exit v1
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw v0

    .line 74252
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
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

    .line 74253
    new-instance v1, Lcom/facebook/ads/redexgen/X/bD;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/06;->A01:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/06;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A02:Lcom/facebook/ads/redexgen/X/08;

    .line 74254
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/08;->A04()Z

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bA;->A02:Lcom/facebook/ads/redexgen/X/08;

    .line 74255
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/08;->A03()Z

    move-result v5

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/bD;-><init>(IIZZZ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/09;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/09;-><init>(Lcom/facebook/ads/redexgen/X/03;)V

    .line 74256
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/bA;->A08(Lcom/facebook/ads/redexgen/X/06;Lcom/facebook/ads/redexgen/X/09;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    return-object v0
.end method

.method public final AEi(Lcom/facebook/ads/redexgen/X/06;)Ljava/io/File;
    .registers 4

    .line 74257
    new-instance v0, Lcom/facebook/ads/redexgen/X/bC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bC;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/09;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/09;-><init>(Lcom/facebook/ads/redexgen/X/03;)V

    .line 74258
    .local v0, "cacheRequestConfig":Lcom/facebook/ads/redexgen/X/09;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<Ljava/io/File;>;"
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/09;->A01(Z)V

    .line 74259
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/09;->A02(Z)V

    .line 74260
    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/bA;->A08(Lcom/facebook/ads/redexgen/X/06;Lcom/facebook/ads/redexgen/X/09;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/02;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final AEj(Lcom/facebook/ads/redexgen/X/06;)Ljava/lang/String;
    .registers 4

    .line 74261
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

    .line 74262
    new-instance v0, Lcom/facebook/ads/redexgen/X/bB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bB;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/09;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/09;-><init>(Lcom/facebook/ads/redexgen/X/03;)V

    .line 74263
    .local v0, "cacheRequestConfig":Lcom/facebook/ads/redexgen/X/09;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/09;->A01(Z)V

    .line 74264
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/09;->A02(Z)V

    .line 74265
    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/bA;->A08(Lcom/facebook/ads/redexgen/X/06;Lcom/facebook/ads/redexgen/X/09;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/02;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
