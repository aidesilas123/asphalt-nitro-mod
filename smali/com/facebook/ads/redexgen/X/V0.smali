###### Class com.facebook.ads.redexgen.X.V0 (com.facebook.ads.redexgen.X.V0)
.class public final Lcom/facebook/ads/redexgen/X/V0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/H4;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/cache/CacheDataSource$CacheIgnoredReason;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/cache/CacheDataSource$Flags;
    }
.end annotation


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Landroid/net/Uri;

.field public A06:Landroid/net/Uri;

.field public A07:Lcom/facebook/ads/redexgen/X/Gc;

.field public A08:Lcom/facebook/ads/redexgen/X/H6;

.field public A09:Ljava/lang/String;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/Gc;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Gc;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Gc;

.field public final A0G:Lcom/facebook/ads/redexgen/X/H2;

.field public final A0H:Lcom/facebook/ads/redexgen/X/H4;

.field public final A0I:Z

.field public final A0J:Z

.field public final A0K:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BZiYu5nwNf87X3b9kN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UgTeeMN2jxyMd9Kylf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "PJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CPqLt3pCFfCSwfi"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XN4Dvc1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tWEaaCCiJhgiXtacO5se5vgeqa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "S002dfR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "J7ycXdK5d"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V0;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/V0;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/Gc;Lcom/facebook/ads/redexgen/X/Gc;Lcom/facebook/ads/redexgen/X/Ga;ILcom/facebook/ads/redexgen/X/H4;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V0;->A0G:Lcom/facebook/ads/redexgen/X/H2;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/V0;->A0D:Lcom/facebook/ads/redexgen/X/Gc;

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0I:Z

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0K:Z

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/V0;->A0J:Z

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/V0;->A0F:Lcom/facebook/ads/redexgen/X/Gc;

    if-eqz p4, :cond_2b

    new-instance v0, Lcom/facebook/ads/redexgen/X/V3;

    invoke-direct {v0, p2, p4}, Lcom/facebook/ads/redexgen/X/V3;-><init>(Lcom/facebook/ads/redexgen/X/Gc;Lcom/facebook/ads/redexgen/X/Ga;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0E:Lcom/facebook/ads/redexgen/X/Gc;

    :goto_28
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/V0;->A0H:Lcom/facebook/ads/redexgen/X/H4;

    return-void

    :cond_2b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0E:Lcom/facebook/ads/redexgen/X/Gc;

    goto :goto_28

    :cond_2f
    const/4 v0, 0x0

    goto :goto_14

    :cond_31
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Gg;)I
    .registers 7

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0K:Z

    if-eqz v0, :cond_4a

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/V0;->A0C:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/V0;->A0M:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_44

    sget-object v2, Lcom/facebook/ads/redexgen/X/V0;->A0M:[Ljava/lang/String;

    const-string v1, "r97zDVaaptRGknr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "AimjfMN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_4a

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/V0;->A0M:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_3c

    sget-object v2, Lcom/facebook/ads/redexgen/X/V0;->A0M:[Ljava/lang/String;

    const-string v1, "lgdHkpCnxjAeRqVRog4eGXXV3TVVS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_3c
    sget-object v2, Lcom/facebook/ads/redexgen/X/V0;->A0M:[Ljava/lang/String;

    const-string v1, "GvTYan8nqvP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :cond_44
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4a
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0J:Z

    if-eqz v0, :cond_58

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_58

    const/4 v0, 0x1

    return v0

    :cond_58
    const/4 v0, -0x1

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/H2;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3

    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/H2;->A6R(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/HC;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/HD;->A01(Lcom/facebook/ads/redexgen/X/HC;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_b

    :goto_a
    return-object p2

    :cond_b
    move-object p2, p0

    goto :goto_a
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/V0;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x23

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V0;->A07:Lcom/facebook/ads/redexgen/X/Gc;

    if-nez v1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_7
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Gc;->close()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_39

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V0;->A07:Lcom/facebook/ads/redexgen/X/Gc;

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0A:Z

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/V0;->A08:Lcom/facebook/ads/redexgen/X/H6;

    sget-object v1, Lcom/facebook/ads/redexgen/X/V0;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/V0;->A0M:[Ljava/lang/String;

    const-string v1, "f78PdfdQFRIsoy9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Xl8bArW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_38

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0G:Lcom/facebook/ads/redexgen/X/H2;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/H2;->AES(Lcom/facebook/ads/redexgen/X/H6;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V0;->A08:Lcom/facebook/ads/redexgen/X/H6;

    :cond_38
    return-void

    :catchall_39
    move-exception v2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V0;->A07:Lcom/facebook/ads/redexgen/X/Gc;

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0A:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V0;->A08:Lcom/facebook/ads/redexgen/X/H6;

    if-eqz v1, :cond_49

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0G:Lcom/facebook/ads/redexgen/X/H2;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/H2;->AES(Lcom/facebook/ads/redexgen/X/H6;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V0;->A08:Lcom/facebook/ads/redexgen/X/H6;

    :cond_49
    throw v2
.end method

.method private A04()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0H:Lcom/facebook/ads/redexgen/X/H4;

    if-eqz v0, :cond_20

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/V0;->A04:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0G:Lcom/facebook/ads/redexgen/X/H2;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/H2;->A6A()J

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/V0;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void
.end method

.method private A05()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V0;->A0C()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/V0;->A0G:Lcom/facebook/ads/redexgen/X/H2;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V0;->A09:Ljava/lang/String;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    invoke-interface {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/H2;->AFD(Ljava/lang/String;J)V

    :cond_13
    return-void
.end method

.method public static A06()V
    .registers 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/V0;->A0L:[B

    return-void

    :array_a
    .array-data 1
        -0x5ct
        -0x5dt
        0x78t
        -0x6at
        -0x68t
        -0x63t
        -0x66t
        -0x67t
        0x77t
        -0x52t
        -0x57t
        -0x66t
        -0x58t
        -0x79t
        -0x66t
        -0x6at
        -0x67t
    .end array-data
.end method

.method private A07(Ljava/io/IOException;)V
    .registers 3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V0;->A0A()Z

    move-result v0

    if-nez v0, :cond_a

    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/H0;

    if-eqz v0, :cond_d

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0C:Z

    :cond_d
    return-void
.end method

.method private A08(Z)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/V0;->A0B:Z

    if-eqz v1, :cond_ac

    const/4 v1, 0x0

    :goto_7
    const-wide/16 v9, -0x1

    if-nez v1, :cond_44

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/V0;->A0F:Lcom/facebook/ads/redexgen/X/Gc;

    new-instance v11, Lcom/facebook/ads/redexgen/X/Gg;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/V0;->A06:Landroid/net/Uri;

    iget-wide v13, v0, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    iget-wide v15, v0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/V0;->A09:Ljava/lang/String;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/V0;->A00:I

    move-object/from16 v17, v3

    move/from16 v18, v2

    invoke-direct/range {v11 .. v18}, Lcom/facebook/ads/redexgen/X/Gg;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    :goto_20
    iget-boolean v2, v0, Lcom/facebook/ads/redexgen/X/V0;->A0B:Z

    if-nez v2, :cond_3e

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/V0;->A0F:Lcom/facebook/ads/redexgen/X/Gc;

    if-ne v4, v2, :cond_3e

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    const-wide/32 v5, 0x19000

    add-long/2addr v2, v5

    :goto_2e
    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/V0;->A02:J

    if-eqz p1, :cond_d9

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/V0;->A09()Z

    move-result v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/V0;->A0F:Lcom/facebook/ads/redexgen/X/Gc;

    if-ne v4, v2, :cond_c8

    return-void

    :cond_3e
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_2e

    :cond_44
    iget-boolean v2, v1, Lcom/facebook/ads/redexgen/X/H6;->A05:Z

    if-eqz v2, :cond_74

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/H6;->A03:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    iget-wide v15, v0, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/H6;->A02:J

    sub-long/2addr v15, v2

    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/H6;->A01:J

    sub-long/2addr v2, v15

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    cmp-long v6, v4, v9

    if-eqz v6, :cond_60

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_60
    new-instance v11, Lcom/facebook/ads/redexgen/X/Gg;

    iget-wide v13, v0, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/V0;->A09:Ljava/lang/String;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/V0;->A00:I

    move-wide/from16 v17, v2

    move-object/from16 v19, v5

    move/from16 v20, v4

    invoke-direct/range {v11 .. v20}, Lcom/facebook/ads/redexgen/X/Gg;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/V0;->A0D:Lcom/facebook/ads/redexgen/X/Gc;

    goto :goto_20

    :cond_74
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H6;->A02()Z

    move-result v2

    if-eqz v2, :cond_95

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    :cond_7c
    :goto_7c
    new-instance v11, Lcom/facebook/ads/redexgen/X/Gg;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/V0;->A06:Landroid/net/Uri;

    iget-wide v13, v0, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/V0;->A09:Ljava/lang/String;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/V0;->A00:I

    move-wide v15, v2

    move-object/from16 v17, v5

    move/from16 v18, v4

    invoke-direct/range {v11 .. v18}, Lcom/facebook/ads/redexgen/X/Gg;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/V0;->A0E:Lcom/facebook/ads/redexgen/X/Gc;

    if-eqz v2, :cond_a2

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/V0;->A0E:Lcom/facebook/ads/redexgen/X/Gc;

    goto :goto_20

    :cond_95
    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/H6;->A01:J

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    cmp-long v6, v4, v9

    if-eqz v6, :cond_7c

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_7c

    :cond_a2
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/V0;->A0F:Lcom/facebook/ads/redexgen/X/Gc;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/V0;->A0G:Lcom/facebook/ads/redexgen/X/H2;

    invoke-interface {v2, v1}, Lcom/facebook/ads/redexgen/X/H2;->AES(Lcom/facebook/ads/redexgen/X/H6;)V

    const/4 v1, 0x0

    goto/16 :goto_20

    :cond_ac
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/V0;->A0I:Z

    if-eqz v1, :cond_bc

    :try_start_b0
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/V0;->A0G:Lcom/facebook/ads/redexgen/X/H2;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/V0;->A09:Ljava/lang/String;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    invoke-interface {v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/H2;->AFk(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/H6;

    move-result-object v1

    goto/16 :goto_7
    :try_end_bc
    .catch Ljava/lang/InterruptedException; {:try_start_b0 .. :try_end_bc} :catch_169

    :cond_bc
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/V0;->A0G:Lcom/facebook/ads/redexgen/X/H2;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/V0;->A09:Ljava/lang/String;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    invoke-interface {v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/H2;->AFl(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/H6;

    move-result-object v1

    goto/16 :goto_7

    :cond_c8
    :try_start_c8
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/V0;->A03()V

    goto :goto_d9
    :try_end_cc
    .catchall {:try_start_c8 .. :try_end_cc} :catchall_cc

    :catchall_cc
    move-exception v3

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H6;->A01()Z

    move-result v2

    if-eqz v2, :cond_d8

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/V0;->A0G:Lcom/facebook/ads/redexgen/X/H2;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/H2;->AES(Lcom/facebook/ads/redexgen/X/H6;)V

    :cond_d8
    throw v3

    :cond_d9
    :goto_d9
    if-eqz v1, :cond_e3

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H6;->A01()Z

    move-result v2

    if-eqz v2, :cond_e3

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/V0;->A08:Lcom/facebook/ads/redexgen/X/H6;

    :cond_e3
    iput-object v4, v0, Lcom/facebook/ads/redexgen/X/V0;->A07:Lcom/facebook/ads/redexgen/X/Gc;

    iget-wide v2, v11, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    const/4 v8, 0x1

    cmp-long v1, v2, v9

    if-nez v1, :cond_110

    const/4 v1, 0x1

    :goto_ed
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/V0;->A0A:Z

    invoke-interface {v4, v11}, Lcom/facebook/ads/redexgen/X/Gc;->ADb(Lcom/facebook/ads/redexgen/X/Gg;)J

    move-result-wide v3

    new-instance v5, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/HE;-><init>()V

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/V0;->A0A:Z

    if-eqz v1, :cond_123

    cmp-long v7, v3, v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/V0;->A0M:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_112

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_110
    const/4 v1, 0x0

    goto :goto_ed

    :cond_112
    sget-object v6, Lcom/facebook/ads/redexgen/X/V0;->A0M:[Ljava/lang/String;

    const-string v2, "GQ8HbidAJ3"

    const/4 v1, 0x7

    aput-object v2, v6, v1

    if-eqz v7, :cond_123

    iput-wide v3, v0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    add-long/2addr v1, v3

    invoke-static {v5, v1, v2}, Lcom/facebook/ads/redexgen/X/HD;->A05(Lcom/facebook/ads/redexgen/X/HE;J)V

    :cond_123
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/V0;->A0B()Z

    move-result v1

    if-eqz v1, :cond_14c

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/V0;->A07:Lcom/facebook/ads/redexgen/X/Gc;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Gc;->A85()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/V0;->A05:Landroid/net/Uri;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/V0;->A06:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v8, v1

    if-eqz v8, :cond_165

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/V0;->A05:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/ads/redexgen/X/V0;->A0M:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x1a

    if-eq v2, v1, :cond_15a

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/HD;->A06(Lcom/facebook/ads/redexgen/X/HE;Landroid/net/Uri;)V

    :cond_14c
    :goto_14c
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/V0;->A0C()Z

    move-result v1

    if-eqz v1, :cond_159

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/V0;->A0G:Lcom/facebook/ads/redexgen/X/H2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/V0;->A09:Ljava/lang/String;

    invoke-interface {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/H2;->A3W(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/HE;)V

    :cond_159
    return-void

    :cond_15a
    sget-object v3, Lcom/facebook/ads/redexgen/X/V0;->A0M:[Ljava/lang/String;

    const-string v2, "mDcPGOd9V6d2O"

    const/4 v1, 0x4

    aput-object v2, v3, v1

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/HD;->A06(Lcom/facebook/ads/redexgen/X/HE;Landroid/net/Uri;)V

    goto :goto_14c

    :cond_165
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/HD;->A04(Lcom/facebook/ads/redexgen/X/HE;)V

    goto :goto_14c

    :catch_169
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method private A09()Z
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V0;->A07:Lcom/facebook/ads/redexgen/X/Gc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0F:Lcom/facebook/ads/redexgen/X/Gc;

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private A0A()Z
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V0;->A07:Lcom/facebook/ads/redexgen/X/Gc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0D:Lcom/facebook/ads/redexgen/X/Gc;

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private A0B()Z
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V0;->A0A()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private A0C()Z
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V0;->A07:Lcom/facebook/ads/redexgen/X/Gc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0E:Lcom/facebook/ads/redexgen/X/Gc;

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static A0D(Ljava/io/IOException;)Z
    .registers 2

    :goto_0
    if-eqz p0, :cond_14

    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/Gd;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gd;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gd;->A00:I

    if-nez v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A85()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A05:Landroid/net/Uri;

    return-object v0
.end method

.method public final ADb(Lcom/facebook/ads/redexgen/X/Gg;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/H8;->A02(Lcom/facebook/ads/redexgen/X/Gg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A09:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/Gg;->A04:Landroid/net/Uri;

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/V0;->A06:Landroid/net/Uri;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V0;->A0G:Lcom/facebook/ads/redexgen/X/H2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A09:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/V0;->A01(Lcom/facebook/ads/redexgen/X/H2;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A05:Landroid/net/Uri;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A00:I

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/V0;->A00(Lcom/facebook/ads/redexgen/X/Gg;)I

    move-result v1

    const/4 v0, -0x1

    const/4 v5, 0x0

    if-eq v1, v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0B:Z

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    const-wide/16 v6, -0x1

    cmp-long v0, v1, v6

    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0B:Z

    if-eqz v0, :cond_3f

    :cond_35
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    :cond_39
    :goto_39
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/V0;->A08(Z)V

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    goto :goto_59

    :cond_3f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V0;->A0G:Lcom/facebook/ads/redexgen/X/H2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A09:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/H2;->A6Q(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    cmp-long v0, v3, v6

    if-eqz v0, :cond_39

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A03:J

    sub-long/2addr v3, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_5a

    goto :goto_39

    :goto_59
    return-wide v0

    :cond_5a
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gd;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/Gd;-><init>(I)V

    throw v0
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_60} :catch_60

    :catch_60
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V0;->A07(Ljava/io/IOException;)V

    throw v0
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A06:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A05:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V0;->A04()V

    :try_start_8
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V0;->A03()V

    return-void
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_c

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V0;->A07(Ljava/io/IOException;)V

    throw v0
.end method

.method public final read([BII)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p3, :cond_4

    return v5

    :cond_4
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    const-wide/16 v9, 0x0

    const/4 v4, -0x1

    cmp-long v2, v0, v9

    if-nez v2, :cond_e

    return v4

    :cond_e
    :try_start_e
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A02:J

    cmp-long v6, v2, v0

    if-ltz v6, :cond_1a

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V0;->A08(Z)V

    :cond_1a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A07:Lcom/facebook/ads/redexgen/X/Gc;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Gc;->read([BII)I

    move-result v3

    const-wide/16 v7, -0x1

    if-eq v3, v4, :cond_41

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V0;->A0A()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/V0;->A04:J

    int-to-long v0, v3

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/V0;->A04:J

    :cond_30
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    int-to-long v0, v3

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_54

    int-to-long v0, v3

    sub-long/2addr v5, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    goto :goto_54

    :cond_41
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0A:Z

    if-eqz v0, :cond_49

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V0;->A05()V

    goto :goto_54

    :cond_49
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    cmp-long v0, v1, v9

    if-gtz v0, :cond_55

    cmp-long v0, v1, v7

    if-nez v0, :cond_54

    goto :goto_55

    :cond_54
    :goto_54
    return v3

    :cond_55
    :goto_55
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V0;->A03()V

    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/V0;->A08(Z)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/V0;->read([BII)I

    move-result v0

    return v0
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_60} :catch_60

    :catch_60
    move-exception v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0A:Z

    if-eqz v0, :cond_6f

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/V0;->A0D(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V0;->A05()V

    return v4

    :cond_6f
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/V0;->A07(Ljava/io/IOException;)V

    throw v1
.end method
