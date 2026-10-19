###### Class com.applovin.exoplayer2.e.g.j (com.applovin.exoplayer2.e.g.j)
.class final Lcom/applovin/exoplayer2/e/g/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AO:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/applovin/exoplayer2/e/g/j;->AO:[I

    return-void

    :array_a
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method public static L(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/applovin/exoplayer2/e/g/j;->a(Lcom/applovin/exoplayer2/e/i;ZZ)Z

    move-result p0

    return p0
.end method

.method private static a(Lcom/applovin/exoplayer2/e/i;ZZ)Z
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v1

    const-wide/16 v3, 0x1000

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_14

    cmp-long v8, v1, v3

    if-lez v8, :cond_13

    goto :goto_14

    :cond_13
    move-wide v3, v1

    :cond_14
    :goto_14
    long-to-int v4, v3

    new-instance v3, Lcom/applovin/exoplayer2/l/y;

    const/16 v8, 0x40

    invoke-direct {v3, v8}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1f
    const/4 v11, 0x1

    if-ge v9, v4, :cond_ef

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v13

    invoke-interface {v0, v13, v8, v12, v11}, Lcom/applovin/exoplayer2/e/i;->b([BIIZ)Z

    move-result v13

    if-nez v13, :cond_33

    goto/16 :goto_ef

    :cond_33
    invoke-virtual {v3}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v15

    const-wide/16 v16, 0x1

    const/16 v11, 0x10

    cmp-long v18, v13, v16

    if-nez v18, :cond_52

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v13

    invoke-interface {v0, v13, v12, v12}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    invoke-virtual {v3, v11}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/l/y;->pz()J

    move-result-wide v13

    goto :goto_6b

    :cond_52
    const-wide/16 v16, 0x0

    cmp-long v11, v13, v16

    if-nez v11, :cond_69

    invoke-interface/range {p0 .. p0}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v16

    cmp-long v11, v16, v5

    if-eqz v11, :cond_69

    invoke-interface/range {p0 .. p0}, Lcom/applovin/exoplayer2/e/i;->id()J

    move-result-wide v13

    sub-long v16, v16, v13

    int-to-long v13, v12

    add-long v13, v16, v13

    :cond_69
    const/16 v11, 0x8

    :goto_6b
    int-to-long v5, v11

    cmp-long v18, v13, v5

    if-gez v18, :cond_71

    return v8

    :cond_71
    add-int/2addr v9, v11

    const v11, 0x6d6f6f76

    if-ne v15, v11, :cond_84

    long-to-int v5, v13

    add-int/2addr v4, v5

    if-eqz v7, :cond_81

    int-to-long v5, v4

    cmp-long v11, v5, v1

    if-lez v11, :cond_81

    long-to-int v4, v1

    :cond_81
    const-wide/16 v5, -0x1

    goto :goto_1f

    :cond_84
    const v11, 0x6d6f6f66

    if-eq v15, v11, :cond_eb

    const v11, 0x6d766578

    if-ne v15, v11, :cond_8f

    goto :goto_eb

    :cond_8f
    move-wide/from16 v18, v1

    int-to-long v1, v9

    add-long/2addr v1, v13

    sub-long/2addr v1, v5

    move/from16 v20, v9

    int-to-long v8, v4

    cmp-long v21, v1, v8

    if-ltz v21, :cond_9c

    goto :goto_ef

    :cond_9c
    sub-long/2addr v13, v5

    long-to-int v1, v13

    add-int v9, v20, v1

    const v2, 0x66747970

    if-ne v15, v2, :cond_dc

    if-ge v1, v12, :cond_a9

    const/4 v2, 0x0

    return v2

    :cond_a9
    const/4 v2, 0x0

    invoke-virtual {v3, v1}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v5

    invoke-interface {v0, v5, v2, v1}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    :goto_b7
    if-ge v2, v1, :cond_d4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c3

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    move/from16 v8, p2

    goto :goto_d1

    :cond_c3
    invoke-virtual {v3}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v6

    move/from16 v8, p2

    invoke-static {v6, v8}, Lcom/applovin/exoplayer2/e/g/j;->k(IZ)Z

    move-result v6

    if-eqz v6, :cond_d1

    const/4 v10, 0x1

    goto :goto_d6

    :cond_d1
    :goto_d1
    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    :cond_d4
    move/from16 v8, p2

    :goto_d6
    if-nez v10, :cond_da

    const/4 v2, 0x0

    return v2

    :cond_da
    const/4 v2, 0x0

    goto :goto_e4

    :cond_dc
    move/from16 v8, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_e4

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    :cond_e4
    :goto_e4
    move-wide/from16 v1, v18

    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    goto/16 :goto_1f

    :cond_eb
    :goto_eb
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x1

    goto :goto_f2

    :cond_ef
    :goto_ef
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    :goto_f2
    if-eqz v10, :cond_fa

    move/from16 v1, p1

    if-ne v1, v0, :cond_fa

    const/4 v8, 0x1

    goto :goto_fb

    :cond_fa
    const/4 v8, 0x0

    :goto_fb
    return v8
.end method

.method public static e(Lcom/applovin/exoplayer2/e/i;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/applovin/exoplayer2/e/g/j;->a(Lcom/applovin/exoplayer2/e/i;ZZ)Z

    move-result p0

    return p0
.end method

.method private static k(IZ)Z
    .registers 7

    ushr-int/lit8 v0, p0, 0x8

    const/4 v1, 0x1

    const v2, 0x336770

    if-ne v0, v2, :cond_9

    return v1

    :cond_9
    const v0, 0x68656963

    if-ne p0, v0, :cond_11

    if-eqz p1, :cond_11

    return v1

    :cond_11
    sget-object p1, Lcom/applovin/exoplayer2/e/g/j;->AO:[I

    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v0, :cond_20

    aget v4, p1, v3

    if-ne v4, p0, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_20
    return v2
.end method
