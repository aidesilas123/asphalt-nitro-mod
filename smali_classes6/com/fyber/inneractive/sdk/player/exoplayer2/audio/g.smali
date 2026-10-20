###### Class com.fyber.inneractive.sdk.player.exoplayer2.audio.g (com.fyber.inneractive.sdk.player.exoplayer2.audio.g)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:[S

.field public g:I

.field public h:[S

.field public i:I

.field public j:[S

.field public k:I

.field public l:[S

.field public m:I

.field public n:I

.field public o:F

.field public p:F

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->a:I

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->c:I

    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->d:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->e:I

    new-array v0, p1, [S

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->f:[S

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->g:I

    mul-int p2, p2, p1

    new-array v0, p2, [S

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->h:[S

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->i:I

    new-array v0, p2, [S

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->j:[S

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->k:I

    new-array p1, p2, [S

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->l:[S

    const/4 p1, 0x0

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->m:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->n:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->u:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->o:F

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->p:F

    return-void
.end method

.method public static a(II[SI[SI[SI)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_28

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    const/4 v5, 0x0

    :goto_e
    if-ge v5, p0, :cond_25

    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int v6, v6, v7

    aget-short v7, p6, v3

    mul-int v7, v7, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_28
    return-void
.end method


# virtual methods
.method public final a([SIII)I
    .registers 14

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    mul-int p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-gt p3, p4, :cond_36

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_e
    if-ge v5, p3, :cond_23

    add-int v7, p2, v5

    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    aget-short v8, p1, v8

    if-lt v7, v8, :cond_1d

    sub-int/2addr v7, v8

    goto :goto_1f

    :cond_1d
    sub-int v7, v8, v7

    :goto_1f
    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_23
    mul-int v5, v6, v3

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_2b

    move v3, p3

    move v0, v6

    :cond_2b
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_33

    move v2, p3

    move v4, v6

    :cond_33
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_36
    div-int/2addr v0, v3

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->w:I

    div-int/2addr v4, v2

    iput v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->x:I

    return v3
.end method

.method public final a()V
    .registers 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    iget v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->o:F

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->p:F

    div-float/2addr v2, v3

    float-to-double v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide v8, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v10, v3, v8

    if-gtz v10, :cond_2c

    const-wide v8, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v10, v3, v8

    if-gez v10, :cond_21

    goto :goto_2c

    :cond_21
    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->h:[S

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->q:I

    invoke-virtual {v0, v2, v6, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->a([SII)V

    iput v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->q:I

    goto/16 :goto_16f

    :cond_2c
    :goto_2c
    iget v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->q:I

    iget v9, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->e:I

    if-ge v8, v9, :cond_34

    goto/16 :goto_16f

    :cond_34
    const/4 v9, 0x0

    :goto_35
    iget v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->t:I

    if-lez v10, :cond_4c

    iget v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->e:I

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->h:[S

    invoke-virtual {v0, v11, v9, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->a([SII)V

    iget v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->t:I

    sub-int/2addr v11, v10

    iput v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->t:I

    add-int/2addr v9, v10

    goto/16 :goto_15a

    :cond_4c
    iget-object v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->h:[S

    iget v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->a:I

    const/16 v12, 0xfa0

    if-le v11, v12, :cond_57

    div-int/lit16 v11, v11, 0xfa0

    goto :goto_58

    :cond_57
    const/4 v11, 0x1

    :goto_58
    iget v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    if-ne v12, v7, :cond_67

    if-ne v11, v7, :cond_67

    iget v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->c:I

    iget v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->d:I

    invoke-virtual {v0, v10, v9, v11, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->a([SIII)I

    move-result v10

    goto :goto_9d

    :cond_67
    invoke-virtual {v0, v10, v9, v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b([SII)V

    iget-object v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->f:[S

    iget v13, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->c:I

    div-int/2addr v13, v11

    iget v14, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->d:I

    div-int/2addr v14, v11

    invoke-virtual {v0, v12, v6, v13, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->a([SIII)I

    move-result v12

    if-eq v11, v7, :cond_9c

    mul-int v12, v12, v11

    mul-int/lit8 v11, v11, 0x4

    sub-int v13, v12, v11

    add-int/2addr v12, v11

    iget v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->c:I

    if-ge v13, v11, :cond_84

    move v13, v11

    :cond_84
    iget v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->d:I

    if-le v12, v11, :cond_89

    move v12, v11

    :cond_89
    iget v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    if-ne v11, v7, :cond_92

    invoke-virtual {v0, v10, v9, v13, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->a([SIII)I

    move-result v10

    goto :goto_9d

    :cond_92
    invoke-virtual {v0, v10, v9, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b([SII)V

    iget-object v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->f:[S

    invoke-virtual {v0, v10, v6, v13, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->a([SIII)I

    move-result v10

    goto :goto_9d

    :cond_9c
    move v10, v12

    :goto_9d
    iget v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->w:I

    iget v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->x:I

    if-eqz v11, :cond_b8

    iget v13, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->u:I

    if-nez v13, :cond_a8

    goto :goto_b8

    :cond_a8
    mul-int/lit8 v13, v11, 0x3

    if-le v12, v13, :cond_ad

    goto :goto_b8

    :cond_ad
    mul-int/lit8 v12, v11, 0x2

    iget v13, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->v:I

    mul-int/lit8 v13, v13, 0x3

    if-gt v12, v13, :cond_b6

    goto :goto_b8

    :cond_b6
    const/4 v12, 0x1

    goto :goto_b9

    :cond_b8
    :goto_b8
    const/4 v12, 0x0

    :goto_b9
    if-eqz v12, :cond_bf

    iget v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->u:I

    move v15, v12

    goto :goto_c0

    :cond_bf
    move v15, v10

    :goto_c0
    iput v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->v:I

    iput v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->u:I

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/high16 v12, 0x40000000    # 2.0f

    cmpl-double v13, v3, v10

    if-lez v13, :cond_107

    iget-object v14, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->h:[S

    cmpl-float v10, v2, v12

    if-ltz v10, :cond_d9

    int-to-float v10, v15

    sub-float v11, v2, v5

    div-float/2addr v10, v11

    float-to-int v10, v10

    move v13, v10

    goto :goto_e4

    :cond_d9
    int-to-float v10, v15

    sub-float/2addr v12, v2

    mul-float v10, v10, v12

    sub-float v11, v2, v5

    div-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->t:I

    move v13, v15

    :goto_e4
    invoke-virtual {v0, v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b(I)V

    iget v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    iget-object v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->j:[S

    iget v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    add-int v17, v9, v15

    move/from16 v16, v10

    move v10, v13

    move/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v16, v14

    move v7, v15

    move v15, v9

    invoke-static/range {v10 .. v17}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->a(II[SI[SI[SI)V

    iget v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    add-int v10, v10, v18

    iput v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    add-int v15, v7, v18

    add-int/2addr v9, v15

    goto :goto_15a

    :cond_107
    move v7, v15

    iget-object v15, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->h:[S

    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v10, v2, v10

    if-gez v10, :cond_11a

    int-to-float v10, v7

    mul-float v10, v10, v2

    sub-float v11, v5, v2

    div-float/2addr v10, v11

    float-to-int v10, v10

    move/from16 v18, v10

    goto :goto_128

    :cond_11a
    int-to-float v10, v7

    mul-float v12, v12, v2

    sub-float/2addr v12, v5

    mul-float v10, v10, v12

    sub-float v11, v5, v2

    div-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->t:I

    move/from16 v18, v7

    :goto_128
    add-int v14, v7, v18

    invoke-virtual {v0, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b(I)V

    iget v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    mul-int v11, v9, v10

    iget-object v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->j:[S

    iget v13, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    mul-int v13, v13, v10

    mul-int v10, v10, v7

    invoke-static {v15, v11, v12, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    iget-object v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->j:[S

    iget v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    add-int v13, v10, v7

    add-int/2addr v7, v9

    move/from16 v10, v18

    move/from16 v19, v14

    move-object v14, v15

    move-object/from16 v16, v15

    move v15, v7

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->a(II[SI[SI[SI)V

    iget v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    add-int v7, v7, v19

    iput v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    add-int v9, v9, v18

    :goto_15a
    iget v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->e:I

    add-int/2addr v7, v9

    if-le v7, v8, :cond_242

    iget v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->q:I

    sub-int/2addr v2, v9

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->h:[S

    iget v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    mul-int v9, v9, v4

    mul-int v4, v4, v2

    invoke-static {v3, v9, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->q:I

    :goto_16f
    iget v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->p:F

    cmpl-float v3, v2, v5

    if-eqz v3, :cond_241

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    if-ne v3, v1, :cond_17b

    goto/16 :goto_241

    :cond_17b
    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->a:I

    int-to-float v4, v3

    div-float/2addr v4, v2

    float-to-int v2, v4

    :goto_180
    const/16 v4, 0x4000

    if-gt v2, v4, :cond_23a

    if-le v3, v4, :cond_188

    goto/16 :goto_23a

    :cond_188
    iget v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    sub-int/2addr v4, v1

    iget v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->s:I

    add-int/2addr v5, v4

    iget v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->k:I

    if-le v5, v7, :cond_1a4

    div-int/lit8 v5, v7, 0x2

    add-int/2addr v5, v4

    add-int/2addr v7, v5

    iput v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->k:I

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->l:[S

    iget v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    mul-int v7, v7, v8

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v5

    iput-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->l:[S

    :cond_1a4
    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->j:[S

    iget v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    mul-int v8, v1, v7

    iget-object v9, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->l:[S

    iget v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->s:I

    mul-int v10, v10, v7

    mul-int v7, v7, v4

    invoke-static {v5, v8, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    iget v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->s:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->s:I

    const/4 v1, 0x0

    :goto_1bd
    iget v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->s:I

    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_225

    :goto_1c3
    iget v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->m:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    mul-int v7, v4, v2

    iget v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->n:I

    mul-int v9, v8, v3

    if-le v7, v9, :cond_211

    invoke-virtual {v0, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b(I)V

    const/4 v4, 0x0

    :goto_1d3
    iget v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    if-ge v4, v5, :cond_205

    iget-object v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->j:[S

    iget v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    mul-int v8, v8, v5

    add-int/2addr v8, v4

    iget-object v9, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->l:[S

    mul-int v10, v1, v5

    add-int/2addr v10, v4

    aget-short v11, v9, v10

    add-int/2addr v10, v5

    aget-short v5, v9, v10

    iget v9, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->n:I

    mul-int v9, v9, v3

    iget v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->m:I

    mul-int v12, v10, v2

    const/4 v13, 0x1

    add-int/2addr v10, v13

    mul-int v10, v10, v2

    sub-int v9, v10, v9

    sub-int/2addr v10, v12

    mul-int v11, v11, v9

    sub-int v9, v10, v9

    mul-int v9, v9, v5

    add-int/2addr v11, v9

    div-int/2addr v11, v10

    int-to-short v5, v11

    aput-short v5, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d3

    :cond_205
    iget v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->n:I

    const/4 v7, 0x1

    add-int/2addr v4, v7

    iput v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->n:I

    iget v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    goto :goto_1c3

    :cond_211
    const/4 v7, 0x1

    iput v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->m:I

    if-ne v4, v3, :cond_222

    iput v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->m:I

    if-ne v8, v2, :cond_21c

    const/4 v5, 0x1

    goto :goto_21d

    :cond_21c
    const/4 v5, 0x0

    :goto_21d
    invoke-static {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    iput v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->n:I

    :cond_222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1bd

    :cond_225
    if-nez v5, :cond_228

    goto :goto_241

    :cond_228
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->l:[S

    iget v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    mul-int v3, v5, v2

    sub-int/2addr v4, v5

    mul-int v4, v4, v2

    invoke-static {v1, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->s:I

    sub-int/2addr v1, v5

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->s:I

    goto :goto_241

    :cond_23a
    :goto_23a
    const/4 v7, 0x1

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v3, 0x2

    goto/16 :goto_180

    :cond_241
    :goto_241
    return-void

    :cond_242
    const/4 v7, 0x1

    goto/16 :goto_35
.end method

.method public final a(I)V
    .registers 4

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->q:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->g:I

    if-le v0, v1, :cond_19

    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->g:I

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->h:[S

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    mul-int v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->h:[S

    :cond_19
    return-void
.end method

.method public final a([SII)V
    .registers 7

    invoke-virtual {p0, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b(I)V

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    mul-int p2, p2, v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->j:[S

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    mul-int v2, v2, v0

    mul-int v0, v0, p3

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    return-void
.end method

.method public final b(I)V
    .registers 4

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->r:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->i:I

    if-le v0, v1, :cond_19

    div-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->i:I

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->j:[S

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    mul-int v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->j:[S

    :cond_19
    return-void
.end method

.method public final b([SII)V
    .registers 10

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->e:I

    div-int/2addr v0, p3

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->b:I

    mul-int p3, p3, v1

    mul-int p2, p2, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_24

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v3, p3, :cond_1b

    mul-int v5, v2, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1b
    div-int/2addr v4, p3

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/g;->f:[S

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_24
    return-void
.end method
