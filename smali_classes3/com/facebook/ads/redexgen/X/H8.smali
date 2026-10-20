###### Class com.facebook.ads.redexgen.X.H8 (com.facebook.ads.redexgen.X.H8)
.class public final Lcom/facebook/ads/redexgen/X/H8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/H7;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QVkvGuTrNYCOXAoNAePTggpZ9p9y8rjH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ru98bprrD7b3UUfLrlKs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dJgVNsDePsDRNqW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8CeCwhAARX5BeZctdCHITAez339E1kKv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TdcchyCe9I3Btqth6iKX4VQ7acLjRTHE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dxVA2OdEqxN0v6bZFx4Cf7LzvY6ZoBAr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "aJerxmZYtdmBHI5cIDnwKt2ezc6XXR2j"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/H8;->A00:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Gg;JJLcom/facebook/ads/redexgen/X/Gc;[BLcom/facebook/ads/redexgen/X/Hl;ILcom/facebook/ads/redexgen/X/H7;)J
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v2, p0

    :goto_1
    move-object/from16 v1, p7

    if-eqz v1, :cond_a

    move/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hl;->A01(I)V

    :cond_a
    :try_start_a
    move-object/from16 v3, p5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_98

    new-instance v4, Lcom/facebook/ads/redexgen/X/Gg;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Gg;->A04:Landroid/net/Uri;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/Gg;->A06:[B

    iget-wide v9, v2, Lcom/facebook/ads/redexgen/X/Gg;->A03:J

    move-wide v7, p1

    add-long/2addr v9, v7

    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/Gg;->A01:J

    sub-long/2addr v9, v0

    const-wide/16 v11, -0x1

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/Gg;->A05:Ljava/lang/String;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Gg;->A00:I

    or-int/lit8 p0, v0, 0x2

    invoke-direct/range {v4 .. v14}, Lcom/facebook/ads/redexgen/X/Gg;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object v2, v4

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/Gc;->ADb(Lcom/facebook/ads/redexgen/X/Gg;)J

    move-result-wide v7

    move-object/from16 v6, p9

    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/H7;->A01:J

    const-wide/16 v10, -0x1

    cmp-long v0, v4, v10

    if-nez v0, :cond_42

    cmp-long v0, v7, v10

    if-eqz v0, :cond_42

    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/Gg;->A01:J

    add-long/2addr v0, v7

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/H7;->A01:J

    :cond_42
    const-wide/16 v8, 0x0

    :goto_44
    cmp-long v0, v8, p3

    if-eqz v0, :cond_a9

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_92

    cmp-long v0, p3, v10

    move-object/from16 v7, p6

    if-eqz v0, :cond_5e

    array-length v0, v7

    int-to-long v4, v0

    sub-long v0, p3, v8

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_5f

    :cond_5e
    array-length v1, v7

    :goto_5f
    const/4 v0, 0x0

    invoke-interface {v3, v7, v0, v1}, Lcom/facebook/ads/redexgen/X/Gc;->read([BII)I
    :try_end_63
    .catch Lcom/facebook/ads/redexgen/X/Hk; {:try_start_a .. :try_end_63} :catch_9e
    .catchall {:try_start_a .. :try_end_63} :catchall_ad

    move-result v7

    const/4 v5, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/H8;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_73

    goto :goto_a3

    :cond_73
    sget-object v4, Lcom/facebook/ads/redexgen/X/H8;->A00:[Ljava/lang/String;

    const-string v1, "Mr4dmhY4u"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    if-ne v7, v5, :cond_7d

    goto :goto_86

    :cond_7d
    :try_start_7d
    int-to-long v0, v7

    add-long/2addr v8, v0

    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/H7;->A02:J

    int-to-long v0, v7

    add-long/2addr v4, v0

    iput-wide v4, v6, Lcom/facebook/ads/redexgen/X/H7;->A02:J

    goto :goto_44

    :goto_86
    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/H7;->A01:J

    cmp-long v0, v4, v10

    if-nez v0, :cond_a9

    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/Gg;->A01:J

    add-long/2addr v0, v8

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/H7;->A01:J

    goto :goto_a9

    :cond_92
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_98
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_9e
    .catch Lcom/facebook/ads/redexgen/X/Hk; {:try_start_7d .. :try_end_9e} :catch_9e
    .catchall {:try_start_7d .. :try_end_9e} :catchall_ad

    :catch_9e
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Hx;->A0W(Lcom/facebook/ads/redexgen/X/Gc;)V

    goto/16 :goto_1

    :goto_a3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a9
    :goto_a9
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Hx;->A0W(Lcom/facebook/ads/redexgen/X/Gc;)V

    return-wide v8

    :catchall_ad
    move-exception v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Hx;->A0W(Lcom/facebook/ads/redexgen/X/Gc;)V

    throw v0
.end method

.method public static A01(Landroid/net/Uri;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Gg;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gg;->A05:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gg;->A05:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Gg;->A04:Landroid/net/Uri;

    sget-object v1, Lcom/facebook/ads/redexgen/X/H8;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_1e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1e
    sget-object v2, Lcom/facebook/ads/redexgen/X/H8;->A00:[Ljava/lang/String;

    const-string v1, "cu8QQJDviMrw4mI2sOy5Vu7yKrvbPHoQ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "0ihZqD29ZbZOvC3sCo5KdBScvHoXIGQ7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/H8;->A01(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Gg;Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/V0;[BLcom/facebook/ads/redexgen/X/Hl;ILcom/facebook/ads/redexgen/X/H7;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v19, p2

    move-object/from16 v4, p6

    invoke-static/range {v19 .. v19}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, p3

    invoke-static/range {v20 .. v20}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v14, p0

    move-object/from16 v6, p1

    if-eqz v4, :cond_74

    invoke-static {v14, v6, v4}, Lcom/facebook/ads/redexgen/X/H8;->A04(Lcom/facebook/ads/redexgen/X/Gg;Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/H7;)V

    :goto_15
    invoke-static {v14}, Lcom/facebook/ads/redexgen/X/H8;->A02(Lcom/facebook/ads/redexgen/X/Gg;)Ljava/lang/String;

    move-result-object v5

    iget-wide v15, v14, Lcom/facebook/ads/redexgen/X/Gg;->A01:J

    iget-wide v0, v14, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    const-wide/16 v12, -0x1

    cmp-long v2, v0, v12

    if-eqz v2, :cond_6f

    iget-wide v0, v14, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    :goto_25
    const-wide/16 v10, 0x0

    cmp-long v2, v0, v10

    if-eqz v2, :cond_6e

    if-eqz p7, :cond_33

    invoke-virtual/range {p7 .. p7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_7a

    :cond_33
    cmp-long v2, v0, v12

    if-eqz v2, :cond_50

    move-wide/from16 p2, v0

    :goto_39
    move-object/from16 v21, v6

    move-object/from16 v22, v5

    move-wide/from16 p0, v15

    invoke-interface/range {v21 .. v26}, Lcom/facebook/ads/redexgen/X/H2;->A6B(Ljava/lang/String;JJ)J

    move-result-wide v2

    cmp-long v7, v2, v10

    if-lez v7, :cond_56

    :cond_47
    add-long/2addr v15, v2

    cmp-long v7, v0, v12

    if-nez v7, :cond_4e

    :goto_4c
    sub-long/2addr v0, v10

    goto :goto_25

    :cond_4e
    move-wide v10, v2

    goto :goto_4c

    :cond_50
    const-wide p2, 0x7fffffffffffffffL

    goto :goto_39

    :cond_56
    neg-long v7, v2

    move-wide v2, v7

    move-object/from16 v21, p4

    move/from16 v22, p5

    move-object/from16 p0, v4

    move-wide/from16 v17, v7

    invoke-static/range {v14 .. v23}, Lcom/facebook/ads/redexgen/X/H8;->A00(Lcom/facebook/ads/redexgen/X/Gg;JJLcom/facebook/ads/redexgen/X/Gc;[BLcom/facebook/ads/redexgen/X/Hl;ILcom/facebook/ads/redexgen/X/H7;)J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-gez v7, :cond_47

    if-eqz p8, :cond_6e

    cmp-long v2, v0, v12

    if-nez v2, :cond_80

    :cond_6e
    return-void

    :cond_6f
    invoke-interface {v6, v5}, Lcom/facebook/ads/redexgen/X/H2;->A6Q(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_25

    :cond_74
    new-instance v4, Lcom/facebook/ads/redexgen/X/H7;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/H7;-><init>()V

    goto :goto_15

    :cond_7a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_80
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Gg;Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/H7;)V
    .registers 19

    move-object/from16 v3, p0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/H8;->A02(Lcom/facebook/ads/redexgen/X/Gg;)Ljava/lang/String;

    move-result-object v14

    iget-wide v15, v3, Lcom/facebook/ads/redexgen/X/Gg;->A01:J

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    const-wide/16 v11, -0x1

    cmp-long v0, v1, v11

    move-object/from16 v13, p1

    if-eqz v0, :cond_4b

    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    :goto_14
    move-object/from16 v8, p2

    iput-wide v4, v8, Lcom/facebook/ads/redexgen/X/H7;->A01:J

    const-wide/16 v2, 0x0

    iput-wide v2, v8, Lcom/facebook/ads/redexgen/X/H7;->A00:J

    iput-wide v2, v8, Lcom/facebook/ads/redexgen/X/H7;->A02:J

    :goto_1e
    cmp-long v0, v4, v2

    if-eqz v0, :cond_50

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v0, v4, v11

    if-eqz v0, :cond_48

    move-wide/from16 p1, v4

    :goto_2d
    invoke-interface/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/H2;->A6B(Ljava/lang/String;JJ)J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-lez v6, :cond_42

    iget-wide v6, v8, Lcom/facebook/ads/redexgen/X/H7;->A00:J

    add-long/2addr v6, v0

    iput-wide v6, v8, Lcom/facebook/ads/redexgen/X/H7;->A00:J

    :cond_3a
    add-long/2addr v15, v0

    cmp-long v6, v4, v11

    if-nez v6, :cond_40

    move-wide v0, v2

    :cond_40
    sub-long/2addr v4, v0

    goto :goto_1e

    :cond_42
    neg-long v0, v0

    cmp-long v6, v0, v9

    if-nez v6, :cond_3a

    return-void

    :cond_48
    move-wide/from16 p1, v9

    goto :goto_2d

    :cond_4b
    invoke-interface {v13, v14}, Lcom/facebook/ads/redexgen/X/H2;->A6Q(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_14

    :cond_50
    return-void
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/H2;Ljava/lang/String;)V
    .registers 4

    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/H2;->A6C(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H6;

    :try_start_14
    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/H2;->AEZ(Lcom/facebook/ads/redexgen/X/H6;)V

    goto :goto_8

    :cond_18
    return-void
    :try_end_19
    .catch Lcom/facebook/ads/redexgen/X/H0; {:try_start_14 .. :try_end_19} :catch_8
.end method
