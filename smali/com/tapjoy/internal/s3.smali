###### Class com.tapjoy.internal.s3 (com.tapjoy.internal.s3)
.class public final Lcom/tapjoy/internal/s3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public final b:[I

.field public c:Ljava/nio/ByteBuffer;

.field public d:[B

.field public e:[B

.field public f:I

.field public g:I

.field public h:Lcom/tapjoy/internal/j5;

.field public i:[S

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:[I

.field public n:I

.field public o:I

.field public p:Lcom/tapjoy/internal/s4;

.field public final q:Lcom/tapjoy/internal/v;

.field public r:Landroid/graphics/Bitmap;

.field public s:Z

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Z


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/v;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tapjoy/internal/s3;->b:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/s3;->f:I

    iput v0, p0, Lcom/tapjoy/internal/s3;->g:I

    iput-object p1, p0, Lcom/tapjoy/internal/s3;->q:Lcom/tapjoy/internal/v;

    new-instance p1, Lcom/tapjoy/internal/s4;

    invoke-direct {p1}, Lcom/tapjoy/internal/s4;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/graphics/Bitmap;
    .registers 29

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    iget-object v0, v1, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    iget v2, v0, Lcom/tapjoy/internal/s4;->c:I

    const/4 v3, 0x1

    if-lez v2, :cond_e

    iget v2, v1, Lcom/tapjoy/internal/s3;->n:I

    if-gez v2, :cond_10

    :cond_e
    iput v3, v1, Lcom/tapjoy/internal/s3;->t:I

    :cond_10
    iget v2, v1, Lcom/tapjoy/internal/s3;->t:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_506

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1a

    goto/16 :goto_506

    :cond_1a
    const/4 v2, 0x0

    iput v2, v1, Lcom/tapjoy/internal/s3;->t:I

    iget-object v0, v0, Lcom/tapjoy/internal/s4;->e:Ljava/util/ArrayList;

    iget v6, v1, Lcom/tapjoy/internal/s3;->n:I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/g4;

    iget v6, v1, Lcom/tapjoy/internal/s3;->n:I

    sub-int/2addr v6, v3

    if-ltz v6, :cond_37

    iget-object v7, v1, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    iget-object v7, v7, Lcom/tapjoy/internal/s4;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tapjoy/internal/g4;

    goto :goto_38

    :cond_37
    move-object v6, v4

    :goto_38
    iget-object v7, v0, Lcom/tapjoy/internal/g4;->k:[I

    if-eqz v7, :cond_3d

    goto :goto_41

    :cond_3d
    iget-object v7, v1, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    iget-object v7, v7, Lcom/tapjoy/internal/s4;->a:[I

    :goto_41
    iput-object v7, v1, Lcom/tapjoy/internal/s3;->a:[I

    if-nez v7, :cond_49

    iput v3, v1, Lcom/tapjoy/internal/s3;->t:I
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_508

    monitor-exit p0

    return-object v4

    :cond_49
    :try_start_49
    iget-boolean v4, v0, Lcom/tapjoy/internal/g4;->f:Z

    if-eqz v4, :cond_5b

    iget-object v4, v1, Lcom/tapjoy/internal/s3;->b:[I

    array-length v8, v7

    invoke-static {v7, v2, v4, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v1, Lcom/tapjoy/internal/s3;->b:[I

    iput-object v4, v1, Lcom/tapjoy/internal/s3;->a:[I

    iget v7, v0, Lcom/tapjoy/internal/g4;->h:I

    aput v2, v4, v7

    :cond_5b
    iget-object v4, v1, Lcom/tapjoy/internal/s3;->m:[I

    if-nez v6, :cond_62

    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_62
    const/4 v7, 0x3

    if-eqz v6, :cond_f3

    iget v8, v6, Lcom/tapjoy/internal/g4;->g:I

    if-lez v8, :cond_f3

    if-ne v8, v5, :cond_ab

    iget-boolean v8, v0, Lcom/tapjoy/internal/g4;->f:Z

    if-nez v8, :cond_7e

    iget-object v8, v1, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    iget v9, v8, Lcom/tapjoy/internal/s4;->k:I

    iget-object v10, v0, Lcom/tapjoy/internal/g4;->k:[I

    if-eqz v10, :cond_85

    iget v8, v8, Lcom/tapjoy/internal/s4;->j:I

    iget v10, v0, Lcom/tapjoy/internal/g4;->h:I

    if-ne v8, v10, :cond_85

    goto :goto_84

    :cond_7e
    iget v8, v1, Lcom/tapjoy/internal/s3;->n:I

    if-nez v8, :cond_84

    iput-boolean v3, v1, Lcom/tapjoy/internal/s3;->x:Z

    :cond_84
    :goto_84
    const/4 v9, 0x0

    :cond_85
    iget v8, v6, Lcom/tapjoy/internal/g4;->d:I

    iget v10, v1, Lcom/tapjoy/internal/s3;->u:I

    div-int/2addr v8, v10

    iget v11, v6, Lcom/tapjoy/internal/g4;->b:I

    div-int/2addr v11, v10

    iget v12, v6, Lcom/tapjoy/internal/g4;->c:I

    div-int/2addr v12, v10

    iget v6, v6, Lcom/tapjoy/internal/g4;->a:I

    div-int/2addr v6, v10

    iget v10, v1, Lcom/tapjoy/internal/s3;->w:I

    mul-int v11, v11, v10

    add-int/2addr v11, v6

    mul-int v8, v8, v10

    add-int/2addr v8, v11

    :goto_9b
    if-ge v11, v8, :cond_f3

    add-int v6, v11, v12

    move v10, v11

    :goto_a0
    if-ge v10, v6, :cond_a7

    aput v9, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a0

    :cond_a7
    iget v6, v1, Lcom/tapjoy/internal/s3;->w:I

    add-int/2addr v11, v6

    goto :goto_9b

    :cond_ab
    if-ne v8, v7, :cond_f3

    iget-object v8, v1, Lcom/tapjoy/internal/s3;->r:Landroid/graphics/Bitmap;

    if-nez v8, :cond_d7

    iget v8, v6, Lcom/tapjoy/internal/g4;->d:I

    iget v9, v1, Lcom/tapjoy/internal/s3;->u:I

    div-int/2addr v8, v9

    iget v10, v6, Lcom/tapjoy/internal/g4;->b:I

    div-int/2addr v10, v9

    iget v11, v6, Lcom/tapjoy/internal/g4;->c:I

    div-int/2addr v11, v9

    iget v6, v6, Lcom/tapjoy/internal/g4;->a:I

    div-int/2addr v6, v9

    iget v9, v1, Lcom/tapjoy/internal/s3;->w:I

    mul-int v10, v10, v9

    add-int/2addr v10, v6

    mul-int v8, v8, v9

    add-int/2addr v8, v10

    :goto_c7
    if-ge v10, v8, :cond_f3

    add-int v6, v10, v11

    move v9, v10

    :goto_cc
    if-ge v9, v6, :cond_d3

    aput v2, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_cc

    :cond_d3
    iget v6, v1, Lcom/tapjoy/internal/s3;->w:I

    add-int/2addr v10, v6

    goto :goto_c7

    :cond_d7
    iget v9, v6, Lcom/tapjoy/internal/g4;->d:I

    iget v10, v1, Lcom/tapjoy/internal/s3;->u:I

    div-int v15, v9, v10

    iget v9, v6, Lcom/tapjoy/internal/g4;->b:I

    div-int v13, v9, v10

    iget v9, v6, Lcom/tapjoy/internal/g4;->c:I

    div-int v14, v9, v10

    iget v6, v6, Lcom/tapjoy/internal/g4;->a:I

    div-int v12, v6, v10

    iget v11, v1, Lcom/tapjoy/internal/s3;->w:I

    mul-int v6, v13, v11

    add-int v10, v6, v12

    move-object v9, v4

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_f3
    iput v2, v1, Lcom/tapjoy/internal/s3;->f:I

    iput v2, v1, Lcom/tapjoy/internal/s3;->g:I

    iget-object v6, v1, Lcom/tapjoy/internal/s3;->c:Ljava/nio/ByteBuffer;

    iget v8, v0, Lcom/tapjoy/internal/g4;->j:I

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v6, v0, Lcom/tapjoy/internal/g4;->c:I

    iget v8, v0, Lcom/tapjoy/internal/g4;->d:I

    mul-int v6, v6, v8

    iget-object v8, v1, Lcom/tapjoy/internal/s3;->l:[B

    if-eqz v8, :cond_10b

    array-length v8, v8

    if-ge v8, v6, :cond_114

    :cond_10b
    iget-object v8, v1, Lcom/tapjoy/internal/s3;->q:Lcom/tapjoy/internal/v;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v8, v6, [B

    iput-object v8, v1, Lcom/tapjoy/internal/s3;->l:[B

    :cond_114
    iget-object v8, v1, Lcom/tapjoy/internal/s3;->i:[S

    const/16 v9, 0x1000

    if-nez v8, :cond_11e

    new-array v8, v9, [S

    iput-object v8, v1, Lcom/tapjoy/internal/s3;->i:[S

    :cond_11e
    iget-object v8, v1, Lcom/tapjoy/internal/s3;->j:[B

    if-nez v8, :cond_126

    new-array v8, v9, [B

    iput-object v8, v1, Lcom/tapjoy/internal/s3;->j:[B

    :cond_126
    iget-object v8, v1, Lcom/tapjoy/internal/s3;->k:[B

    if-nez v8, :cond_130

    const/16 v8, 0x1001

    new-array v8, v8, [B

    iput-object v8, v1, Lcom/tapjoy/internal/s3;->k:[B
    :try_end_130
    .catchall {:try_start_49 .. :try_end_130} :catchall_508

    :cond_130
    const/16 v8, 0x4000

    const/16 v10, 0xff

    :try_start_134
    iget v11, v1, Lcom/tapjoy/internal/s3;->f:I

    iget v12, v1, Lcom/tapjoy/internal/s3;->g:I

    if-le v11, v12, :cond_13b

    goto :goto_15d

    :cond_13b
    iget-object v11, v1, Lcom/tapjoy/internal/s3;->e:[B

    if-nez v11, :cond_148

    iget-object v11, v1, Lcom/tapjoy/internal/s3;->q:Lcom/tapjoy/internal/v;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v11, v8, [B

    iput-object v11, v1, Lcom/tapjoy/internal/s3;->e:[B

    :cond_148
    iput v2, v1, Lcom/tapjoy/internal/s3;->g:I

    iget-object v11, v1, Lcom/tapjoy/internal/s3;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v1, Lcom/tapjoy/internal/s3;->f:I

    iget-object v12, v1, Lcom/tapjoy/internal/s3;->c:Ljava/nio/ByteBuffer;

    iget-object v13, v1, Lcom/tapjoy/internal/s3;->e:[B

    invoke-virtual {v12, v13, v2, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_15d
    iget-object v11, v1, Lcom/tapjoy/internal/s3;->e:[B

    iget v12, v1, Lcom/tapjoy/internal/s3;->g:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v1, Lcom/tapjoy/internal/s3;->g:I

    aget-byte v11, v11, v12
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_167} :catch_169
    .catchall {:try_start_134 .. :try_end_167} :catchall_508

    and-int/2addr v11, v10

    goto :goto_16c

    :catch_169
    :try_start_169
    iput v3, v1, Lcom/tapjoy/internal/s3;->t:I

    const/4 v11, 0x0

    :goto_16c
    shl-int v12, v3, v11

    add-int/lit8 v13, v12, 0x1

    add-int/lit8 v14, v12, 0x2

    add-int/2addr v11, v3

    shl-int v15, v3, v11

    sub-int/2addr v15, v3

    const/4 v5, 0x0

    :goto_177
    if-ge v5, v12, :cond_188

    iget-object v9, v1, Lcom/tapjoy/internal/s3;->i:[S

    aput-short v2, v9, v5

    iget-object v9, v1, Lcom/tapjoy/internal/s3;->j:[B

    int-to-byte v7, v5

    aput-byte v7, v9, v5
    :try_end_182
    .catchall {:try_start_169 .. :try_end_182} :catchall_508

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x3

    const/16 v9, 0x1000

    goto :goto_177

    :cond_188
    move/from16 v26, v11

    move/from16 v24, v14

    move/from16 v25, v15

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    :goto_19e
    const/16 v27, 0x8

    if-ge v7, v6, :cond_345

    if-nez v9, :cond_25b

    :try_start_1a4
    iget v9, v1, Lcom/tapjoy/internal/s3;->f:I

    iget v5, v1, Lcom/tapjoy/internal/s3;->g:I

    if-le v9, v5, :cond_1ab

    goto :goto_1cd

    :cond_1ab
    iget-object v5, v1, Lcom/tapjoy/internal/s3;->e:[B

    if-nez v5, :cond_1b8

    iget-object v5, v1, Lcom/tapjoy/internal/s3;->q:Lcom/tapjoy/internal/v;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v5, v8, [B

    iput-object v5, v1, Lcom/tapjoy/internal/s3;->e:[B

    :cond_1b8
    iput v2, v1, Lcom/tapjoy/internal/s3;->g:I

    iget-object v5, v1, Lcom/tapjoy/internal/s3;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v1, Lcom/tapjoy/internal/s3;->f:I

    iget-object v9, v1, Lcom/tapjoy/internal/s3;->c:Ljava/nio/ByteBuffer;

    iget-object v8, v1, Lcom/tapjoy/internal/s3;->e:[B

    invoke-virtual {v9, v8, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_1cd
    iget-object v5, v1, Lcom/tapjoy/internal/s3;->e:[B

    iget v8, v1, Lcom/tapjoy/internal/s3;->g:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lcom/tapjoy/internal/s3;->g:I

    aget-byte v5, v5, v8
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1d7} :catch_1da
    .catchall {:try_start_1a4 .. :try_end_1d7} :catchall_508

    and-int/2addr v5, v10

    move v9, v5

    goto :goto_1dd

    :catch_1da
    :try_start_1da
    iput v3, v1, Lcom/tapjoy/internal/s3;->t:I
    :try_end_1dc
    .catchall {:try_start_1da .. :try_end_1dc} :catchall_508

    const/4 v9, 0x0

    :goto_1dd
    if-lez v9, :cond_252

    :try_start_1df
    iget-object v5, v1, Lcom/tapjoy/internal/s3;->d:[B

    if-nez v5, :cond_1ec

    iget-object v5, v1, Lcom/tapjoy/internal/s3;->q:Lcom/tapjoy/internal/v;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v5, v10, [B

    iput-object v5, v1, Lcom/tapjoy/internal/s3;->d:[B

    :cond_1ec
    iget v5, v1, Lcom/tapjoy/internal/s3;->f:I

    iget v8, v1, Lcom/tapjoy/internal/s3;->g:I

    sub-int/2addr v5, v8

    if-lt v5, v9, :cond_200

    iget-object v5, v1, Lcom/tapjoy/internal/s3;->e:[B

    iget-object v10, v1, Lcom/tapjoy/internal/s3;->d:[B

    invoke-static {v5, v8, v10, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, v1, Lcom/tapjoy/internal/s3;->g:I

    add-int/2addr v5, v9

    iput v5, v1, Lcom/tapjoy/internal/s3;->g:I

    goto :goto_252

    :cond_200
    iget-object v8, v1, Lcom/tapjoy/internal/s3;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    add-int/2addr v8, v5

    if-lt v8, v9, :cond_24d

    iget-object v8, v1, Lcom/tapjoy/internal/s3;->e:[B

    iget v10, v1, Lcom/tapjoy/internal/s3;->g:I
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_20d} :catch_250
    .catchall {:try_start_1df .. :try_end_20d} :catchall_508

    :try_start_20d
    iget-object v3, v1, Lcom/tapjoy/internal/s3;->d:[B

    invoke-static {v8, v10, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v1, Lcom/tapjoy/internal/s3;->f:I

    iput v3, v1, Lcom/tapjoy/internal/s3;->g:I

    iget-object v3, v1, Lcom/tapjoy/internal/s3;->e:[B

    if-nez v3, :cond_225

    iget-object v3, v1, Lcom/tapjoy/internal/s3;->q:Lcom/tapjoy/internal/v;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x4000

    new-array v8, v3, [B

    iput-object v8, v1, Lcom/tapjoy/internal/s3;->e:[B

    :cond_225
    iput v2, v1, Lcom/tapjoy/internal/s3;->g:I

    iget-object v3, v1, Lcom/tapjoy/internal/s3;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    const/16 v8, 0x4000

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Lcom/tapjoy/internal/s3;->f:I

    iget-object v10, v1, Lcom/tapjoy/internal/s3;->c:Ljava/nio/ByteBuffer;

    iget-object v8, v1, Lcom/tapjoy/internal/s3;->e:[B

    invoke-virtual {v10, v8, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int v3, v9, v5

    iget-object v8, v1, Lcom/tapjoy/internal/s3;->e:[B

    iget-object v10, v1, Lcom/tapjoy/internal/s3;->d:[B

    invoke-static {v8, v2, v10, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, v1, Lcom/tapjoy/internal/s3;->g:I

    add-int/2addr v5, v3

    iput v5, v1, Lcom/tapjoy/internal/s3;->g:I
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_24a} :catch_24b
    .catchall {:try_start_20d .. :try_end_24a} :catchall_508

    goto :goto_252

    :catch_24b
    const/4 v3, 0x1

    goto :goto_250

    :cond_24d
    :try_start_24d
    iput v3, v1, Lcom/tapjoy/internal/s3;->t:I
    :try_end_24f
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_24f} :catch_250
    .catchall {:try_start_24d .. :try_end_24f} :catchall_508

    goto :goto_252

    :catch_250
    :goto_250
    :try_start_250
    iput v3, v1, Lcom/tapjoy/internal/s3;->t:I

    :cond_252
    :goto_252
    if-gtz v9, :cond_259

    const/4 v3, 0x3

    iput v3, v1, Lcom/tapjoy/internal/s3;->t:I

    goto/16 :goto_345

    :cond_259
    const/16 v18, 0x0

    :cond_25b
    iget-object v3, v1, Lcom/tapjoy/internal/s3;->d:[B

    aget-byte v3, v3, v18

    const/16 v5, 0xff

    and-int/2addr v3, v5

    shl-int v3, v3, v19

    add-int v20, v20, v3

    add-int/lit8 v19, v19, 0x8

    add-int/lit8 v18, v18, 0x1

    const/4 v3, -0x1

    add-int/2addr v9, v3

    move/from16 v3, v19

    move/from16 v5, v21

    move/from16 v8, v23

    move/from16 v10, v24

    move/from16 v2, v26

    :goto_276
    if-lt v3, v2, :cond_32f

    move/from16 v21, v7

    and-int v7, v20, v25

    shr-int v20, v20, v2

    sub-int/2addr v3, v2

    if-ne v7, v12, :cond_289

    move v2, v11

    move v10, v14

    move/from16 v25, v15

    move/from16 v7, v21

    const/4 v8, -0x1

    goto :goto_276

    :cond_289
    if-le v7, v10, :cond_291

    move/from16 v23, v3

    const/4 v3, 0x3

    iput v3, v1, Lcom/tapjoy/internal/s3;->t:I

    goto :goto_295

    :cond_291
    move/from16 v23, v3

    if-ne v7, v13, :cond_2a9

    :goto_295
    move/from16 v26, v2

    move/from16 v24, v10

    move/from16 v7, v21

    move/from16 v19, v23

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v10, 0xff

    move/from16 v21, v5

    move/from16 v23, v8

    const/16 v8, 0x4000

    goto/16 :goto_19e

    :cond_2a9
    const/4 v3, -0x1

    if-ne v8, v3, :cond_2bf

    iget-object v5, v1, Lcom/tapjoy/internal/s3;->k:[B

    add-int/lit8 v8, v17, 0x1

    iget-object v3, v1, Lcom/tapjoy/internal/s3;->j:[B

    aget-byte v3, v3, v7

    aput-byte v3, v5, v17

    move v5, v7

    move/from16 v17, v8

    move/from16 v3, v23

    move v8, v5

    move/from16 v7, v21

    goto :goto_276

    :cond_2bf
    if-lt v7, v10, :cond_2cc

    iget-object v3, v1, Lcom/tapjoy/internal/s3;->k:[B

    add-int/lit8 v24, v17, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v17

    move v3, v8

    move/from16 v17, v24

    goto :goto_2cd

    :cond_2cc
    move v3, v7

    :goto_2cd
    if-lt v3, v12, :cond_2e4

    iget-object v5, v1, Lcom/tapjoy/internal/s3;->k:[B

    add-int/lit8 v24, v17, 0x1

    move/from16 v26, v7

    iget-object v7, v1, Lcom/tapjoy/internal/s3;->j:[B

    aget-byte v7, v7, v3

    aput-byte v7, v5, v17

    iget-object v5, v1, Lcom/tapjoy/internal/s3;->i:[S

    aget-short v3, v5, v3

    move/from16 v17, v24

    move/from16 v7, v26

    goto :goto_2cd

    :cond_2e4
    move/from16 v26, v7

    iget-object v5, v1, Lcom/tapjoy/internal/s3;->j:[B

    aget-byte v3, v5, v3

    const/16 v7, 0xff

    and-int/2addr v3, v7

    iget-object v7, v1, Lcom/tapjoy/internal/s3;->k:[B

    add-int/lit8 v24, v17, 0x1

    move/from16 v27, v9

    int-to-byte v9, v3

    aput-byte v9, v7, v17

    const/16 v7, 0x1000

    if-ge v10, v7, :cond_30f

    iget-object v7, v1, Lcom/tapjoy/internal/s3;->i:[S

    int-to-short v8, v8

    aput-short v8, v7, v10

    aput-byte v9, v5, v10

    add-int/lit8 v10, v10, 0x1

    and-int v5, v10, v25

    const/16 v7, 0x1000

    if-nez v5, :cond_30f

    if-ge v10, v7, :cond_30f

    add-int/lit8 v2, v2, 0x1

    add-int v25, v25, v10

    :cond_30f
    move/from16 v17, v24

    :goto_311
    if-lez v17, :cond_324

    iget-object v5, v1, Lcom/tapjoy/internal/s3;->l:[B

    add-int/lit8 v8, v22, 0x1

    iget-object v9, v1, Lcom/tapjoy/internal/s3;->k:[B

    add-int/lit8 v17, v17, -0x1

    aget-byte v9, v9, v17

    aput-byte v9, v5, v22

    add-int/lit8 v21, v21, 0x1

    move/from16 v22, v8

    goto :goto_311

    :cond_324
    move v5, v3

    move/from16 v7, v21

    move/from16 v3, v23

    move/from16 v8, v26

    move/from16 v9, v27

    goto/16 :goto_276

    :cond_32f
    move/from16 v21, v7

    move/from16 v27, v9

    move/from16 v26, v2

    move/from16 v19, v3

    move/from16 v23, v8

    move/from16 v24, v10

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v8, 0x4000

    const/16 v10, 0xff

    move/from16 v21, v5

    goto/16 :goto_19e

    :cond_345
    :goto_345
    move/from16 v2, v22

    :goto_347
    if-ge v2, v6, :cond_351

    iget-object v3, v1, Lcom/tapjoy/internal/s3;->l:[B

    const/4 v5, 0x0

    aput-byte v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_347

    :cond_351
    const/4 v5, 0x0

    iget v2, v0, Lcom/tapjoy/internal/g4;->d:I

    iget v3, v1, Lcom/tapjoy/internal/s3;->u:I

    div-int/2addr v2, v3

    iget v6, v0, Lcom/tapjoy/internal/g4;->b:I

    div-int/2addr v6, v3

    iget v7, v0, Lcom/tapjoy/internal/g4;->c:I

    div-int/2addr v7, v3

    iget v8, v0, Lcom/tapjoy/internal/g4;->a:I

    div-int/2addr v8, v3

    iget v3, v1, Lcom/tapjoy/internal/s3;->n:I

    if-nez v3, :cond_366

    const/4 v3, 0x1

    goto :goto_367

    :cond_366
    const/4 v3, 0x0

    :goto_367
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    :goto_36c
    if-ge v11, v2, :cond_4a4

    iget-boolean v13, v0, Lcom/tapjoy/internal/g4;->e:Z

    if-eqz v13, :cond_38d

    const/4 v13, 0x4

    if-lt v9, v2, :cond_388

    add-int/lit8 v10, v10, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x3

    if-eq v10, v14, :cond_386

    if-eq v10, v15, :cond_383

    if-eq v10, v13, :cond_380

    goto :goto_38a

    :cond_380
    const/4 v9, 0x1

    const/4 v12, 0x2

    goto :goto_38a

    :cond_383
    const/4 v9, 0x2

    const/4 v12, 0x4

    goto :goto_38a

    :cond_386
    const/4 v9, 0x4

    goto :goto_38a

    :cond_388
    const/4 v14, 0x2

    const/4 v15, 0x3

    :goto_38a
    add-int v13, v9, v12

    goto :goto_391

    :cond_38d
    const/4 v14, 0x2

    const/4 v15, 0x3

    move v13, v9

    move v9, v11

    :goto_391
    add-int/2addr v9, v6

    iget v5, v1, Lcom/tapjoy/internal/s3;->v:I

    if-ge v9, v5, :cond_488

    iget v5, v1, Lcom/tapjoy/internal/s3;->w:I

    mul-int v9, v9, v5

    add-int v16, v9, v8

    add-int v14, v16, v7

    add-int/2addr v9, v5

    if-ge v9, v14, :cond_3a2

    move v14, v9

    :cond_3a2
    iget v5, v1, Lcom/tapjoy/internal/s3;->u:I

    mul-int v9, v11, v5

    iget v15, v0, Lcom/tapjoy/internal/g4;->c:I

    mul-int v9, v9, v15

    sub-int v15, v14, v16

    mul-int v15, v15, v5

    add-int/2addr v15, v9

    move/from16 v5, v16

    :goto_3b1
    if-ge v5, v14, :cond_488

    move/from16 v16, v2

    iget v2, v1, Lcom/tapjoy/internal/s3;->u:I

    move/from16 v17, v6

    const/4 v6, 0x1

    if-ne v2, v6, :cond_3d1

    iget-object v2, v1, Lcom/tapjoy/internal/s3;->l:[B

    aget-byte v2, v2, v9

    const/16 v6, 0xff

    and-int/2addr v2, v6

    iget-object v6, v1, Lcom/tapjoy/internal/s3;->a:[I

    aget v2, v6, v2

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v10

    const/16 v8, 0xff

    goto/16 :goto_469

    :cond_3d1
    iget v2, v0, Lcom/tapjoy/internal/g4;->c:I

    move/from16 v24, v7

    move v6, v9

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_3e0
    iget v7, v1, Lcom/tapjoy/internal/s3;->u:I

    add-int/2addr v7, v9

    if-ge v6, v7, :cond_41c

    iget-object v7, v1, Lcom/tapjoy/internal/s3;->l:[B

    move/from16 v25, v8

    array-length v8, v7

    if-ge v6, v8, :cond_41e

    if-ge v6, v15, :cond_41e

    aget-byte v7, v7, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    iget-object v8, v1, Lcom/tapjoy/internal/s3;->a:[I

    aget v7, v8, v7

    if-eqz v7, :cond_413

    shr-int/lit8 v8, v7, 0x18

    move/from16 v26, v10

    const/16 v10, 0xff

    and-int/2addr v8, v10

    add-int v22, v22, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/2addr v8, v10

    add-int v21, v21, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/2addr v8, v10

    add-int v20, v20, v8

    and-int/lit16 v7, v7, 0xff

    add-int v18, v18, v7

    add-int/lit8 v23, v23, 0x1

    goto :goto_415

    :cond_413
    move/from16 v26, v10

    :goto_415
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v25

    move/from16 v10, v26

    goto :goto_3e0

    :cond_41c
    move/from16 v25, v8

    :cond_41e
    move/from16 v26, v10

    add-int/2addr v2, v9

    move v6, v2

    :goto_422
    iget v7, v1, Lcom/tapjoy/internal/s3;->u:I

    add-int/2addr v7, v2

    if-ge v6, v7, :cond_451

    iget-object v7, v1, Lcom/tapjoy/internal/s3;->l:[B

    array-length v8, v7

    if-ge v6, v8, :cond_451

    if-ge v6, v15, :cond_451

    aget-byte v7, v7, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    iget-object v10, v1, Lcom/tapjoy/internal/s3;->a:[I

    aget v7, v10, v7

    if-eqz v7, :cond_44e

    shr-int/lit8 v10, v7, 0x18

    and-int/2addr v10, v8

    add-int v22, v22, v10

    shr-int/lit8 v10, v7, 0x10

    and-int/2addr v10, v8

    add-int v21, v21, v10

    shr-int/lit8 v10, v7, 0x8

    and-int/2addr v10, v8

    add-int v20, v20, v10

    and-int/lit16 v7, v7, 0xff

    add-int v18, v18, v7

    add-int/lit8 v23, v23, 0x1

    :cond_44e
    add-int/lit8 v6, v6, 0x1

    goto :goto_422

    :cond_451
    const/16 v8, 0xff

    if-nez v23, :cond_457

    const/4 v2, 0x0

    goto :goto_469

    :cond_457
    div-int v22, v22, v23

    shl-int/lit8 v2, v22, 0x18

    div-int v21, v21, v23

    shl-int/lit8 v6, v21, 0x10

    or-int/2addr v2, v6

    div-int v20, v20, v23

    shl-int/lit8 v6, v20, 0x8

    or-int/2addr v2, v6

    div-int v18, v18, v23

    or-int v2, v2, v18

    :goto_469
    if-eqz v2, :cond_46e

    aput v2, v4, v5

    goto :goto_477

    :cond_46e
    iget-boolean v2, v1, Lcom/tapjoy/internal/s3;->x:Z

    if-nez v2, :cond_477

    if-eqz v3, :cond_477

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tapjoy/internal/s3;->x:Z

    :cond_477
    :goto_477
    iget v2, v1, Lcom/tapjoy/internal/s3;->u:I

    add-int/2addr v9, v2

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v16

    move/from16 v6, v17

    move/from16 v7, v24

    move/from16 v8, v25

    move/from16 v10, v26

    goto/16 :goto_3b1

    :cond_488
    move/from16 v16, v2

    move/from16 v17, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v10

    const/16 v8, 0xff

    add-int/lit8 v11, v11, 0x1

    move v9, v13

    move/from16 v2, v16

    move/from16 v6, v17

    move/from16 v7, v24

    move/from16 v8, v25

    move/from16 v10, v26

    const/4 v5, 0x0

    goto/16 :goto_36c

    :cond_4a4
    iget-boolean v2, v1, Lcom/tapjoy/internal/s3;->s:Z

    if-eqz v2, :cond_4dd

    iget v0, v0, Lcom/tapjoy/internal/g4;->g:I

    if-eqz v0, :cond_4af

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4dd

    :cond_4af
    iget-object v0, v1, Lcom/tapjoy/internal/s3;->r:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4cf

    iget-boolean v0, v1, Lcom/tapjoy/internal/s3;->x:Z

    if-eqz v0, :cond_4ba

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    goto :goto_4bc

    :cond_4ba
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_4bc
    iget-object v2, v1, Lcom/tapjoy/internal/s3;->q:Lcom/tapjoy/internal/v;

    iget v3, v1, Lcom/tapjoy/internal/s3;->w:I

    iget v5, v1, Lcom/tapjoy/internal/s3;->v:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iput-object v0, v1, Lcom/tapjoy/internal/s3;->r:Landroid/graphics/Bitmap;

    :cond_4cf
    iget-object v8, v1, Lcom/tapjoy/internal/s3;->r:Landroid/graphics/Bitmap;

    iget v14, v1, Lcom/tapjoy/internal/s3;->w:I

    iget v15, v1, Lcom/tapjoy/internal/s3;->v:I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v4

    move v11, v14

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_4dd
    iget-boolean v0, v1, Lcom/tapjoy/internal/s3;->x:Z

    if-eqz v0, :cond_4e4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    goto :goto_4e6

    :cond_4e4
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_4e6
    iget-object v2, v1, Lcom/tapjoy/internal/s3;->q:Lcom/tapjoy/internal/v;

    iget v3, v1, Lcom/tapjoy/internal/s3;->w:I

    iget v5, v1, Lcom/tapjoy/internal/s3;->v:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget v14, v1, Lcom/tapjoy/internal/s3;->w:I

    iget v15, v1, Lcom/tapjoy/internal/s3;->v:I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    move-object v9, v4

    move v11, v14

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_504
    .catchall {:try_start_250 .. :try_end_504} :catchall_508

    monitor-exit p0

    return-object v0

    :cond_506
    :goto_506
    monitor-exit p0

    return-object v4

    :catchall_508
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/tapjoy/internal/s4;Ljava/nio/ByteBuffer;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/internal/s3;->d(Lcom/tapjoy/internal/s4;Ljava/nio/ByteBuffer;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Lcom/tapjoy/internal/s4;[B)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/internal/s3;->b(Lcom/tapjoy/internal/s4;Ljava/nio/ByteBuffer;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lcom/tapjoy/internal/s4;Ljava/nio/ByteBuffer;)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v2, 0x0

    iput v2, p0, Lcom/tapjoy/internal/s3;->t:I

    iput-object p1, p0, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    iput-boolean v2, p0, Lcom/tapjoy/internal/s3;->x:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/tapjoy/internal/s3;->n:I

    iput v2, p0, Lcom/tapjoy/internal/s3;->o:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/tapjoy/internal/s3;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/tapjoy/internal/s3;->c:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lcom/tapjoy/internal/s3;->s:Z

    iget-object p2, p1, Lcom/tapjoy/internal/s4;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/g4;

    iget v2, v2, Lcom/tapjoy/internal/g4;->g:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    iput-boolean v0, p0, Lcom/tapjoy/internal/s3;->s:Z

    :cond_3d
    iput v1, p0, Lcom/tapjoy/internal/s3;->u:I

    iget p2, p1, Lcom/tapjoy/internal/s4;->f:I

    div-int v0, p2, v1

    iput v0, p0, Lcom/tapjoy/internal/s3;->w:I

    iget p1, p1, Lcom/tapjoy/internal/s4;->g:I

    div-int v0, p1, v1

    iput v0, p0, Lcom/tapjoy/internal/s3;->v:I

    iget-object v0, p0, Lcom/tapjoy/internal/s3;->q:Lcom/tapjoy/internal/v;

    mul-int p2, p2, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/tapjoy/internal/s3;->l:[B

    iget-object p1, p0, Lcom/tapjoy/internal/s3;->q:Lcom/tapjoy/internal/v;

    iget p2, p0, Lcom/tapjoy/internal/s3;->w:I

    iget v0, p0, Lcom/tapjoy/internal/s3;->v:I

    mul-int p2, p2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/tapjoy/internal/s3;->m:[I
    :try_end_65
    .catchall {:try_start_2 .. :try_end_65} :catchall_67

    monitor-exit p0

    return-void

    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method
