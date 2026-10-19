###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp3.b (com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp3.b)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;
    }
.end annotation


# static fields
.field public static final m:I

.field public static final n:I

.field public static final o:I


# instance fields
.field public final a:J

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

.field public final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

.field public final d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;

.field public e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;

.field public f:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

.field public g:I

.field public h:Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;

.field public i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;

.field public j:J

.field public k:J

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "Xing"

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->m:I

    const-string v0, "Info"

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->n:I

    const-string v0, "VBRI"

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->o:I

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->a:J

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>(I)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->j:J

    return-void
.end method

.method public static a(IJ)Z
    .registers 7

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/l;)I
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->g:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_f

    :try_start_a
    invoke-virtual {v0, v1, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;Z)Z
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    return v3

    :cond_f
    :goto_f
    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;

    const-wide/32 v7, 0xf4240

    const/4 v10, 0x1

    if-nez v2, :cond_243

    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    iget v11, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->c:I

    invoke-direct {v2, v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>(I)V

    iget-object v11, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    iget-object v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    iget v12, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->c:I

    move-object v13, v1

    check-cast v13, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    invoke-virtual {v13, v11, v4, v12, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    iget-object v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    iget v12, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->a:I

    and-int/2addr v12, v10

    const/16 v14, 0x24

    if-eqz v12, :cond_3c

    iget v11, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->e:I

    if-eq v11, v10, :cond_40

    const/16 v11, 0x24

    goto :goto_45

    :cond_3c
    iget v11, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->e:I

    if-eq v11, v10, :cond_43

    :cond_40
    const/16 v11, 0x15

    goto :goto_45

    :cond_43
    const/16 v11, 0xd

    :goto_45
    iget v12, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c:I

    add-int/lit8 v15, v11, 0x4

    if-lt v12, v15, :cond_5b

    invoke-virtual {v2, v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v12

    sget v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->m:I

    if-eq v12, v15, :cond_6f

    sget v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->n:I

    if-ne v12, v15, :cond_5b

    goto :goto_6f

    :cond_5b
    iget v12, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c:I

    const/16 v15, 0x28

    if-lt v12, v15, :cond_6e

    invoke-virtual {v2, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v12

    sget v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->o:I

    if-ne v12, v14, :cond_6e

    move v12, v14

    goto :goto_6f

    :cond_6e
    const/4 v12, 0x0

    :cond_6f
    :goto_6f
    sget v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->m:I

    const/16 v16, 0x0

    if-eq v12, v14, :cond_136

    sget v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->n:I

    if-ne v12, v14, :cond_7b

    goto/16 :goto_136

    :cond_7b
    sget v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->o:I

    if-ne v12, v11, :cond_12e

    iget-object v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    iget-wide v9, v13, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    iget-wide v14, v13, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->b:J

    const/16 v12, 0xa

    invoke-virtual {v2, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v12

    if-gtz v12, :cond_94

    move-object/from16 v24, v13

    goto/16 :goto_124

    :cond_94
    iget v3, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->d:I

    int-to-long v4, v12

    const/16 v6, 0x7d00

    if-lt v3, v6, :cond_9e

    const/16 v6, 0x480

    goto :goto_a0

    :cond_9e
    const/16 v6, 0x240

    :goto_a0
    move-object/from16 v24, v13

    int-to-long v12, v6

    mul-long v20, v12, v7

    int-to-long v12, v3

    move-wide/from16 v18, v4

    move-wide/from16 v22, v12

    invoke-static/range {v18 .. v23}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(JJJ)J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->q()I

    move-result v5

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->q()I

    move-result v6

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->q()I

    move-result v12

    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    iget v11, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->c:I

    int-to-long v7, v11

    add-long/2addr v9, v7

    add-int/lit8 v7, v5, 0x1

    new-array v8, v7, [J

    new-array v11, v7, [J

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    aput-wide v20, v8, v22

    aput-wide v9, v11, v22

    const/4 v13, 0x1

    :goto_d1
    if-ge v13, v7, :cond_11d

    move/from16 v21, v7

    const/4 v7, 0x1

    if-eq v12, v7, :cond_f1

    const/4 v7, 0x2

    if-eq v12, v7, :cond_ec

    const/4 v7, 0x3

    if-eq v12, v7, :cond_e7

    const/4 v7, 0x4

    if-eq v12, v7, :cond_e2

    goto :goto_124

    :cond_e2
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v7

    goto :goto_f5

    :cond_e7
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->n()I

    move-result v7

    goto :goto_f5

    :cond_ec
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->q()I

    move-result v7

    goto :goto_f5

    :cond_f1
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result v7

    :goto_f5
    mul-int v7, v7, v6

    move/from16 v22, v6

    int-to-long v6, v7

    add-long/2addr v9, v6

    int-to-long v6, v13

    mul-long v6, v6, v3

    move-object/from16 v23, v2

    int-to-long v1, v5

    div-long/2addr v6, v1

    aput-wide v6, v8, v13

    const-wide/16 v1, -0x1

    cmp-long v6, v14, v1

    if-nez v6, :cond_10c

    move-wide v1, v9

    goto :goto_110

    :cond_10c
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_110
    aput-wide v1, v11, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move/from16 v7, v21

    move/from16 v6, v22

    move-object/from16 v2, v23

    goto :goto_d1

    :cond_11d
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/c;

    invoke-direct {v1, v8, v11, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/c;-><init>([J[JJ)V

    move-object/from16 v16, v1

    :goto_124
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    iget v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->c:I

    move-object/from16 v2, v24

    invoke-virtual {v2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c(I)V

    goto :goto_132

    :cond_12e
    move-object v2, v13

    const/4 v1, 0x0

    iput v1, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->e:I

    :cond_132
    :goto_132
    move-object/from16 v1, v16

    goto/16 :goto_1f8

    :cond_136
    :goto_136
    move-object/from16 v23, v2

    move-object v2, v13

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    iget-wide v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    iget-wide v5, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->b:J

    iget v7, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->g:I

    iget v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->d:I

    iget v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->c:I

    int-to-long v9, v9

    add-long v25, v3, v9

    invoke-virtual/range {v23 .. v23}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    const/4 v9, 0x1

    if-ne v4, v9, :cond_1a9

    invoke-virtual/range {v23 .. v23}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v4

    if-nez v4, :cond_158

    goto :goto_1a9

    :cond_158
    int-to-long v9, v4

    int-to-long v14, v7

    const-wide/32 v18, 0xf4240

    mul-long v29, v14, v18

    int-to-long v7, v8

    move-wide/from16 v27, v9

    move-wide/from16 v31, v7

    invoke-static/range {v27 .. v32}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(JJJ)J

    move-result-wide v27

    const/4 v4, 0x6

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_17c

    new-instance v16, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    move-object/from16 v24, v16

    move-wide/from16 v29, v5

    invoke-direct/range {v24 .. v34}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;-><init>(JJJ[JJI)V

    goto :goto_1a9

    :cond_17c
    invoke-virtual/range {v23 .. v23}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v7, v23

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    const/16 v8, 0x63

    new-array v9, v8, [J

    const/4 v10, 0x0

    :goto_18c
    if-ge v10, v8, :cond_198

    invoke-virtual {v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result v13

    int-to-long v14, v13

    aput-wide v14, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_18c

    :cond_198
    new-instance v16, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;

    iget v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->c:I

    move-object/from16 v24, v16

    move-wide/from16 v29, v5

    move-object/from16 v31, v9

    move-wide/from16 v32, v3

    move/from16 v34, v1

    invoke-direct/range {v24 .. v34}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;-><init>(JJJ[JJI)V

    :cond_1a9
    :goto_1a9
    if-eqz v16, :cond_1df

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->a()Z

    move-result v1

    if-nez v1, :cond_1df

    const/4 v1, 0x0

    iput v1, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->e:I

    add-int/lit16 v11, v11, 0x8d

    invoke-virtual {v2, v11, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a(IZ)Z

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v1, v4, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v3, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->n()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shr-int/lit8 v4, v3, 0xc

    and-int/lit16 v3, v3, 0xfff

    if-gtz v4, :cond_1db

    if-lez v3, :cond_1df

    :cond_1db
    iput v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->a:I

    iput v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->b:I

    :cond_1df
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    iget v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->c:I

    invoke-virtual {v2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c(I)V

    if-eqz v16, :cond_132

    invoke-virtual/range {v16 .. v16}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->a()Z

    move-result v1

    if-nez v1, :cond_132

    sget v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->n:I

    if-ne v12, v1, :cond_132

    invoke-virtual/range {p0 .. p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;

    move-result-object v16

    goto/16 :goto_132

    :goto_1f8
    iput-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;

    if-eqz v1, :cond_200

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;->a()Z

    goto :goto_206

    :cond_200
    invoke-virtual/range {p0 .. p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;

    move-result-object v1

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;

    :goto_206
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;

    invoke-interface {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;)V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    iget-object v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x1000

    iget v8, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->e:I

    iget v9, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->d:I

    const/4 v10, -0x1

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;

    iget v11, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->a:I

    iget v12, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->b:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;

    move-object/from16 v17, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v2 .. v16}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V

    :cond_243
    iget v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->l:I

    if-nez v1, :cond_2b8

    move-object/from16 v1, p1

    move-object v2, v1

    check-cast v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    const/4 v3, 0x0

    iput v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->e:I

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    move-result v4

    if-nez v4, :cond_25d

    const/4 v2, -0x1

    goto :goto_2c6

    :cond_25d
    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v4, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v3

    iget v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->g:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->a(IJ)Z

    move-result v4

    if-eqz v4, :cond_2b0

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->a(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_279

    goto :goto_2b0

    :cond_279
    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;)Z

    iget-wide v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->j:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_2a9

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;

    iget-wide v7, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    invoke-interface {v3, v7, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;->b(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->j:J

    iget-wide v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->a:J

    cmp-long v4, v2, v5

    if-eqz v4, :cond_2a9

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;->b(J)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->j:J

    iget-wide v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->a:J

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->j:J

    :cond_2a9
    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->c:I

    iput v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->l:I

    goto :goto_2ba

    :cond_2b0
    :goto_2b0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c(I)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->g:I

    goto :goto_2f8

    :cond_2b8
    move-object/from16 v1, p1

    :goto_2ba
    const/4 v3, 0x1

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    iget v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->l:I

    invoke-interface {v2, v1, v4, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2c8

    :goto_2c6
    const/4 v3, -0x1

    goto :goto_2f9

    :cond_2c8
    iget v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->l:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->l:I

    if-lez v2, :cond_2d0

    goto :goto_2f8

    :cond_2d0
    iget-wide v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->j:J

    iget-wide v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->k:J

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    iget v6, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->d:I

    int-to-long v6, v6

    div-long/2addr v3, v6

    add-long v7, v1, v3

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    iget v10, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->c:I

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(JIII[B)V

    iget-wide v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->k:J

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    iget v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->g:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->k:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->l:I

    :goto_2f8
    const/4 v3, 0x0

    :goto_2f9
    return v3
.end method

.method public a(JJ)V
    .registers 5

    const/4 p1, 0x0

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->g:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->j:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->k:J

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->l:I

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;)V
    .registers 4

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->a(II)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->c()V

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;Z)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;Z)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p2, :cond_5

    const/16 v0, 0x4000

    goto :goto_7

    :cond_5
    const/high16 v0, 0x20000

    :goto_7
    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    const/4 v1, 0x0

    iput v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->e:I

    iget-wide v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v2, 0x0

    if-nez v6, :cond_77

    :goto_15
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    const/16 v4, 0xa

    invoke-virtual {p1, v3, v1, v4, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v3, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->n()I

    move-result v3

    sget v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g;->b:I

    if-eq v3, v5, :cond_40

    iput v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->e:I

    invoke-virtual {p1, v2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a(IZ)Z

    iget-wide v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    iget v4, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->e:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    long-to-int v3, v2

    if-nez p2, :cond_3e

    invoke-virtual {p1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c(I)V

    :cond_3e
    const/4 v2, 0x0

    goto :goto_78

    :cond_40
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->k()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;

    if-nez v6, :cond_72

    new-array v6, v5, [B

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v7, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    invoke-static {v7, v1, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v6, v4, v3, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g$a;)V

    invoke-virtual {v3, v6, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g;->a([BI)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;

    move-result-object v3

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;

    if-eqz v3, :cond_75

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;

    invoke-virtual {v4, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;)Z

    goto :goto_75

    :cond_72
    invoke-virtual {p1, v3, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a(IZ)Z

    :cond_75
    :goto_75
    add-int/2addr v2, v5

    goto :goto_15

    :cond_77
    const/4 v3, 0x0

    :goto_78
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7a
    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    const/4 v7, 0x1

    if-lez v2, :cond_83

    const/4 v8, 0x1

    goto :goto_84

    :cond_83
    const/4 v8, 0x0

    :goto_84
    const/4 v9, 0x4

    invoke-virtual {p1, v6, v1, v9, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    move-result v6

    if-nez v6, :cond_8c

    goto :goto_d4

    :cond_8c
    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v6, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v6

    if-eqz v4, :cond_a0

    int-to-long v10, v4

    invoke-static {v6, v10, v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->a(IJ)Z

    move-result v8

    if-eqz v8, :cond_a7

    :cond_a0
    invoke-static {v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->a(I)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_c7

    :cond_a7
    add-int/lit8 v2, v5, 0x1

    if-ne v5, v0, :cond_b6

    if-eqz p2, :cond_ae

    return v1

    :cond_ae
    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b6
    if-eqz p2, :cond_c0

    iput v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->e:I

    add-int v4, v3, v2

    invoke-virtual {p1, v4, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a(IZ)Z

    goto :goto_c3

    :cond_c0
    invoke-virtual {p1, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c(I)V

    :goto_c3
    move v5, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_7a

    :cond_c7
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v7, :cond_d2

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    invoke-static {v6, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;)Z

    move v4, v6

    goto :goto_e0

    :cond_d2
    if-ne v2, v9, :cond_e0

    :goto_d4
    if-eqz p2, :cond_db

    add-int/2addr v3, v5

    invoke-virtual {p1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c(I)V

    goto :goto_dd

    :cond_db
    iput v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->e:I

    :goto_dd
    iput v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->g:I

    return v7

    :cond_e0
    :goto_e0
    add-int/lit8 v8, v8, -0x4

    invoke-virtual {p1, v8, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a(IZ)Z

    goto :goto_7a
.end method

.method public final b(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;)Z

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/a;

    iget-wide v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;

    iget v5, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/k;->f:I

    iget-wide v6, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->b:J

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/a;-><init>(JIJ)V

    return-object v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp3.b.a (com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp3.b$a)
.class public interface abstract Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract b(J)J
.end method
