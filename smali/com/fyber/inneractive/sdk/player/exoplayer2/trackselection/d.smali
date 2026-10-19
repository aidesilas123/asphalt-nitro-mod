###### Class com.fyber.inneractive.sdk.player.exoplayer2.trackselection.d (com.fyber.inneractive.sdk.player.exoplayer2.trackselection.d)
.class public abstract Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d$a;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/g;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d;->a:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d;->b:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final a([Lcom/fyber/inneractive/sdk/player/exoplayer2/a;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;)Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;
    .registers 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    array-length v3, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [I

    array-length v5, v0

    add-int/2addr v5, v4

    new-array v6, v5, [[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    array-length v7, v0

    add-int/2addr v7, v4

    new-array v12, v7, [[[I

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v5, :cond_23

    iget v9, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->a:I

    new-array v10, v9, [Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    aput-object v10, v6, v8

    new-array v9, v9, [[I

    aput-object v9, v12, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_23
    array-length v5, v0

    new-array v11, v5, [I

    const/4 v8, 0x0

    :goto_27
    const/4 v9, 0x4

    if-ge v8, v5, :cond_34

    aget-object v10, v0, v8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput v9, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    :cond_34
    const/4 v5, 0x0

    :goto_35
    iget v8, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->a:I

    if-ge v5, v8, :cond_be

    iget-object v8, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    aget-object v8, v8, v5

    array-length v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_40
    array-length v9, v0

    if-ge v14, v9, :cond_77

    aget-object v9, v0, v14

    const/4 v7, 0x0

    :goto_46
    iget v4, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    if-ge v7, v4, :cond_73

    iget-object v4, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v4, v4, v7

    move-object v10, v9

    check-cast v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v9

    :try_start_56
    iget-object v9, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;

    invoke-virtual {v10, v9, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)I

    move-result v4
    :try_end_5c
    .catch Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/d$b; {:try_start_56 .. :try_end_5c} :catch_6b

    const/4 v9, 0x3

    and-int/2addr v4, v9

    if-le v4, v15, :cond_66

    if-ne v4, v9, :cond_64

    move v13, v14

    goto :goto_77

    :cond_64
    move v15, v4

    move v13, v14

    :cond_66
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, v18

    goto :goto_46

    :catch_6b
    move-exception v0

    iget v2, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->c:I

    invoke-static {v0, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/fyber/inneractive/sdk/player/exoplayer2/d;

    move-result-object v0

    throw v0

    :cond_73
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_40

    :cond_77
    :goto_77
    array-length v4, v0

    if-ne v13, v4, :cond_7f

    iget v4, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    new-array v4, v4, [I

    goto :goto_a8

    :cond_7f
    aget-object v4, v0, v13

    iget v7, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    new-array v7, v7, [I

    const/4 v9, 0x0

    :goto_86
    iget v10, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    if-ge v9, v10, :cond_a7

    iget-object v10, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v10, v10, v9

    move-object v14, v4

    check-cast v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_94
    iget-object v15, v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;

    invoke-virtual {v14, v15, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)I

    move-result v10
    :try_end_9a
    .catch Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/d$b; {:try_start_94 .. :try_end_9a} :catch_9f

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_86

    :catch_9f
    move-exception v0

    iget v2, v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->c:I

    invoke-static {v0, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/fyber/inneractive/sdk/player/exoplayer2/d;

    move-result-object v0

    throw v0

    :cond_a7
    move-object v4, v7

    :goto_a8
    aget v7, v3, v13

    aget-object v9, v6, v13

    aput-object v8, v9, v7

    aget-object v8, v12, v13

    aput-object v4, v8, v7

    aget v4, v3, v13

    const/4 v7, 0x1

    add-int/2addr v4, v7

    aput v4, v3, v13

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x4

    goto/16 :goto_35

    :cond_be
    array-length v4, v0

    new-array v10, v4, [Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;

    array-length v4, v0

    new-array v9, v4, [I

    const/4 v4, 0x0

    :goto_c5
    array-length v5, v0

    if-ge v4, v5, :cond_ec

    aget v5, v3, v4

    new-instance v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;

    aget-object v8, v6, v4

    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    invoke-direct {v7, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;-><init>([Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;)V

    aput-object v7, v10, v4

    aget-object v7, v12, v4

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    aput-object v5, v12, v4

    aget-object v5, v0, v4

    iget v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->a:I

    aput v5, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c5

    :cond_ec
    array-length v4, v0

    aget v3, v3, v4

    new-instance v13, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;

    array-length v4, v0

    aget-object v4, v6, v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    invoke-direct {v13, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;-><init>([Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;)V

    move-object v3, v1

    check-cast v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;

    array-length v4, v0

    new-array v5, v4, [Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

    iget-object v6, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_10e
    if-ge v7, v4, :cond_3e9

    aget-object v15, v0, v7

    iget v15, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->a:I

    const/4 v2, 0x2

    if-ne v2, v15, :cond_3b7

    if-nez v8, :cond_394

    aget-object v2, v0, v7

    aget-object v8, v10, v7

    aget-object v15, v12, v7

    move-object/from16 v26, v13

    iget v13, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->e:I

    move-object/from16 v27, v11

    iget v11, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->f:I

    move-object/from16 v28, v9

    iget v9, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->g:I

    iget-boolean v1, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->d:Z

    move-object/from16 v29, v12

    iget-boolean v12, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->c:Z

    iget v0, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->j:I

    move/from16 v30, v4

    iget v4, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->k:I

    move/from16 v31, v14

    iget-boolean v14, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->l:Z

    move-object/from16 v32, v10

    iget-object v10, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e$a;

    move-object/from16 v33, v3

    iget-boolean v3, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->h:Z

    move-object/from16 v34, v5

    iget-boolean v5, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->i:Z

    if-eqz v10, :cond_29b

    if-eqz v1, :cond_14e

    const/16 v1, 0xc

    goto :goto_150

    :cond_14e
    const/16 v1, 0x8

    :goto_150
    if-eqz v12, :cond_15b

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_15b

    const/4 v2, 0x1

    goto :goto_15c

    :cond_15b
    const/4 v2, 0x0

    :goto_15c
    move-object/from16 v35, v6

    const/4 v12, 0x0

    :goto_15f
    iget v6, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->a:I

    if-ge v12, v6, :cond_292

    iget-object v6, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    aget-object v6, v6, v12

    aget-object v36, v15, v12

    move/from16 v37, v7

    iget v7, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    move/from16 v38, v3

    const/4 v3, 0x2

    if-ge v7, v3, :cond_182

    sget-object v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->e:[I

    move/from16 v43, v0

    move/from16 v40, v2

    move/from16 v45, v4

    move/from16 v39, v5

    :goto_17c
    move/from16 v46, v14

    move-object/from16 v42, v15

    goto/16 :goto_276

    :cond_182
    invoke-static {v6, v0, v4, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;IIZ)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move/from16 v39, v5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v3, :cond_199

    sget-object v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->e:[I

    move/from16 v43, v0

    move/from16 v40, v2

    move/from16 v45, v4

    goto :goto_17c

    :cond_199
    if-nez v2, :cond_217

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move/from16 v40, v2

    move-object/from16 v42, v15

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v41, 0x0

    :goto_1a8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v5, v15, :cond_210

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v43, v0

    iget-object v0, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v0, v0, v15

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v44, v3

    move/from16 v45, v4

    if-eqz v15, :cond_203

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_1cc
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_1fb

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v46, v14

    iget-object v14, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v19, v14, v4

    aget v21, v36, v4

    move-object/from16 v20, v0

    move/from16 v22, v1

    move/from16 v23, v13

    move/from16 v24, v11

    move/from16 v25, v9

    invoke-static/range {v19 .. v25}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Ljava/lang/String;IIIII)Z

    move-result v4

    if-eqz v4, :cond_1f6

    add-int/lit8 v3, v3, 0x1

    :cond_1f6
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v46

    goto :goto_1cc

    :cond_1fb
    move/from16 v46, v14

    if-le v3, v2, :cond_205

    move-object/from16 v41, v0

    move v2, v3

    goto :goto_205

    :cond_203
    move/from16 v46, v14

    :cond_205
    :goto_205
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v43

    move-object/from16 v3, v44

    move/from16 v4, v45

    move/from16 v14, v46

    goto :goto_1a8

    :cond_210
    move/from16 v43, v0

    move/from16 v45, v4

    move/from16 v46, v14

    goto :goto_223

    :cond_217
    move/from16 v43, v0

    move/from16 v40, v2

    move/from16 v45, v4

    move/from16 v46, v14

    move-object/from16 v42, v15

    const/16 v41, 0x0

    :goto_223
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_229
    if-ltz v0, :cond_251

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v19, v3, v2

    aget v21, v36, v2

    move-object/from16 v20, v41

    move/from16 v22, v1

    move/from16 v23, v13

    move/from16 v24, v11

    move/from16 v25, v9

    invoke-static/range {v19 .. v25}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Ljava/lang/String;IIIII)Z

    move-result v2

    if-nez v2, :cond_24e

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_24e
    add-int/lit8 v0, v0, -0x1

    goto :goto_229

    :cond_251
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_25b

    sget-object v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->e:[I

    goto :goto_276

    :cond_25b
    sget v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_264
    if-ge v3, v0, :cond_275

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_264

    :cond_275
    move-object v7, v2

    :goto_276
    array-length v0, v7

    if-lez v0, :cond_27e

    invoke-interface {v10, v6, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e$a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;[I)Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

    move-result-object v0

    goto :goto_2ac

    :cond_27e
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v37

    move/from16 v3, v38

    move/from16 v5, v39

    move/from16 v2, v40

    move-object/from16 v15, v42

    move/from16 v0, v43

    move/from16 v4, v45

    move/from16 v14, v46

    goto/16 :goto_15f

    :cond_292
    move/from16 v43, v0

    move/from16 v38, v3

    move/from16 v45, v4

    move/from16 v39, v5

    goto :goto_2a5

    :cond_29b
    move/from16 v43, v0

    move/from16 v38, v3

    move/from16 v45, v4

    move/from16 v39, v5

    move-object/from16 v35, v6

    :goto_2a5
    move/from16 v37, v7

    move/from16 v46, v14

    move-object/from16 v42, v15

    const/4 v0, 0x0

    :goto_2ac
    if-nez v0, :cond_389

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_2b4
    iget v6, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->a:I

    if-ge v0, v6, :cond_37e

    iget-object v6, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    aget-object v6, v6, v0

    move/from16 v7, v43

    move/from16 v10, v45

    move/from16 v12, v46

    invoke-static {v6, v7, v10, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;IIZ)Ljava/util/List;

    move-result-object v14

    aget-object v15, v42, v0

    move/from16 v19, v1

    move-object/from16 v20, v5

    const/4 v1, 0x0

    :goto_2cd
    iget v5, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    if-ge v1, v5, :cond_36c

    aget v5, v15, v1

    move/from16 v43, v7

    move/from16 v7, v39

    invoke-static {v5, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(IZ)Z

    move-result v5

    if-eqz v5, :cond_358

    iget-object v5, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v5, v5, v1

    move-object/from16 v21, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move/from16 v39, v7

    move-object v7, v14

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_307

    iget v6, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->j:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2f9

    if-gt v6, v13, :cond_307

    :cond_2f9
    iget v6, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->k:I

    if-eq v6, v7, :cond_2ff

    if-gt v6, v11, :cond_307

    :cond_2ff
    iget v6, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->b:I

    if-eq v6, v7, :cond_305

    if-gt v6, v9, :cond_307

    :cond_305
    const/4 v6, 0x1

    goto :goto_308

    :cond_307
    const/4 v6, 0x0

    :goto_308
    if-nez v6, :cond_30d

    if-nez v38, :cond_30d

    goto :goto_35c

    :cond_30d
    move-object/from16 v22, v8

    if-eqz v6, :cond_313

    const/4 v7, 0x2

    goto :goto_314

    :cond_313
    const/4 v7, 0x1

    :goto_314
    aget v8, v15, v1

    move/from16 v23, v9

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(IZ)Z

    move-result v8

    if-eqz v8, :cond_321

    add-int/lit16 v7, v7, 0x3e8

    :cond_321
    if-le v7, v2, :cond_325

    const/4 v9, 0x1

    goto :goto_326

    :cond_325
    const/4 v9, 0x0

    :goto_326
    if-ne v7, v2, :cond_349

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->b()I

    move-result v9

    if-eq v9, v3, :cond_337

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->b()I

    move-result v9

    invoke-static {v9, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(II)I

    move-result v9

    goto :goto_33d

    :cond_337
    iget v9, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->b:I

    invoke-static {v9, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(II)I

    move-result v9

    :goto_33d
    if-eqz v8, :cond_344

    if-eqz v6, :cond_344

    if-lez v9, :cond_348

    goto :goto_346

    :cond_344
    if-gez v9, :cond_348

    :goto_346
    const/4 v9, 0x1

    goto :goto_349

    :cond_348
    const/4 v9, 0x0

    :cond_349
    :goto_349
    if-eqz v9, :cond_360

    iget v2, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->b:I

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->b()I

    move-result v3

    move/from16 v19, v1

    move v4, v2

    move v2, v7

    move-object/from16 v20, v21

    goto :goto_360

    :cond_358
    move-object/from16 v21, v6

    move/from16 v39, v7

    :goto_35c
    move-object/from16 v22, v8

    move/from16 v23, v9

    :cond_360
    :goto_360
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, v21

    move-object/from16 v8, v22

    move/from16 v9, v23

    move/from16 v7, v43

    goto/16 :goto_2cd

    :cond_36c
    move/from16 v43, v7

    move-object/from16 v22, v8

    move/from16 v23, v9

    add-int/lit8 v0, v0, 0x1

    move/from16 v45, v10

    move/from16 v46, v12

    move/from16 v1, v19

    move-object/from16 v5, v20

    goto/16 :goto_2b4

    :cond_37e
    if-nez v5, :cond_382

    const/4 v15, 0x0

    goto :goto_38a

    :cond_382
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v5, v1, v3, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;IILjava/lang/Object;)V

    :cond_389
    move-object v15, v0

    :goto_38a
    aput-object v15, v34, v37

    aget-object v0, v34, v37

    if-eqz v0, :cond_392

    const/4 v8, 0x1

    goto :goto_3aa

    :cond_392
    const/4 v8, 0x0

    goto :goto_3aa

    :cond_394
    move-object/from16 v33, v3

    move/from16 v30, v4

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move/from16 v37, v7

    move-object/from16 v28, v9

    move-object/from16 v32, v10

    move-object/from16 v27, v11

    move-object/from16 v29, v12

    move-object/from16 v26, v13

    move/from16 v31, v14

    :goto_3aa
    aget-object v0, v32, v37

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->a:I

    if-lez v0, :cond_3b2

    const/4 v0, 0x1

    goto :goto_3b3

    :cond_3b2
    const/4 v0, 0x0

    :goto_3b3
    or-int v0, v31, v0

    move v14, v0

    goto :goto_3cd

    :cond_3b7
    move-object/from16 v33, v3

    move/from16 v30, v4

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move/from16 v37, v7

    move-object/from16 v28, v9

    move-object/from16 v32, v10

    move-object/from16 v27, v11

    move-object/from16 v29, v12

    move-object/from16 v26, v13

    move/from16 v31, v14

    :goto_3cd
    add-int/lit8 v7, v37, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v13, v26

    move-object/from16 v11, v27

    move-object/from16 v9, v28

    move-object/from16 v12, v29

    move/from16 v4, v30

    move-object/from16 v10, v32

    move-object/from16 v3, v33

    move-object/from16 v5, v34

    move-object/from16 v6, v35

    goto/16 :goto_10e

    :cond_3e9
    move-object/from16 v33, v3

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v28, v9

    move-object/from16 v32, v10

    move-object/from16 v27, v11

    move-object/from16 v29, v12

    move-object/from16 v26, v13

    move/from16 v31, v14

    move v1, v4

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_3ff
    if-ge v9, v1, :cond_65f

    move-object/from16 v2, p1

    aget-object v3, v2, v9

    iget v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_534

    const/4 v4, 0x2

    if-eq v3, v4, :cond_52e

    const/4 v5, 0x3

    if-eq v3, v5, :cond_486

    aget-object v3, v2, v9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, v32, v9

    aget-object v6, v29, v9

    move-object/from16 v8, v35

    iget-boolean v10, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->i:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_421
    iget v15, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->a:I

    if-ge v11, v15, :cond_475

    iget-object v15, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    aget-object v15, v15, v11

    aget-object v17, v6, v11

    const/4 v4, 0x0

    :goto_42c
    iget v5, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    if-ge v4, v5, :cond_46c

    aget v5, v17, v4

    invoke-static {v5, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(IZ)Z

    move-result v5

    if-eqz v5, :cond_461

    iget-object v5, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->x:I

    const/16 v16, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_446

    const/4 v5, 0x1

    goto :goto_447

    :cond_446
    const/4 v5, 0x0

    :goto_447
    move/from16 v30, v1

    if-eqz v5, :cond_44d

    const/4 v5, 0x2

    goto :goto_44e

    :cond_44d
    const/4 v5, 0x1

    :goto_44e
    aget v1, v17, v4

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_45b

    add-int/lit16 v5, v5, 0x3e8

    :cond_45b
    if-le v5, v13, :cond_465

    move v12, v4

    move v13, v5

    move-object v14, v15

    goto :goto_465

    :cond_461
    move/from16 v30, v1

    move-object/from16 v20, v3

    :cond_465
    :goto_465
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v20

    move/from16 v1, v30

    goto :goto_42c

    :cond_46c
    move/from16 v30, v1

    move-object/from16 v20, v3

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    goto :goto_421

    :cond_475
    move/from16 v30, v1

    if-nez v14, :cond_47b

    const/4 v1, 0x0

    goto :goto_482

    :cond_47b
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v14, v12, v4, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;IILjava/lang/Object;)V

    :goto_482
    aput-object v1, v34, v9

    goto/16 :goto_652

    :cond_486
    move/from16 v30, v1

    move-object/from16 v8, v35

    if-nez v0, :cond_652

    aget-object v0, v32, v9

    aget-object v1, v29, v9

    iget-object v3, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->b:Ljava/lang/String;

    iget-object v4, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->a:Ljava/lang/String;

    iget-boolean v5, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->i:Z

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_49a
    iget v13, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->a:I

    if-ge v6, v13, :cond_511

    iget-object v13, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    aget-object v13, v13, v6

    aget-object v14, v1, v6

    move-object/from16 v17, v0

    const/4 v15, 0x0

    :goto_4a7
    iget v0, v13, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    if-ge v15, v0, :cond_508

    aget v0, v14, v15

    invoke-static {v0, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_4fd

    iget-object v0, v13, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v0, v0, v15

    move-object/from16 v20, v1

    iget v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->x:I

    and-int/lit8 v21, v1, 0x1

    if-eqz v21, :cond_4c2

    const/16 v21, 0x1

    goto :goto_4c4

    :cond_4c2
    const/16 v21, 0x0

    :goto_4c4
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4ca

    const/4 v1, 0x1

    goto :goto_4cb

    :cond_4ca
    const/4 v1, 0x0

    :goto_4cb
    invoke-static {v0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4db

    if-eqz v21, :cond_4d5

    const/4 v0, 0x6

    goto :goto_4ea

    :cond_4d5
    if-nez v1, :cond_4d9

    const/4 v0, 0x5

    goto :goto_4ea

    :cond_4d9
    const/4 v0, 0x4

    goto :goto_4ea

    :cond_4db
    if-eqz v21, :cond_4df

    const/4 v0, 0x3

    goto :goto_4ea

    :cond_4df
    if-eqz v1, :cond_4ff

    invoke-static {v0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e9

    const/4 v0, 0x2

    goto :goto_4ea

    :cond_4e9
    const/4 v0, 0x1

    :goto_4ea
    aget v1, v14, v15

    move-object/from16 v21, v3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_4f7

    add-int/lit16 v0, v0, 0x3e8

    :cond_4f7
    if-le v0, v11, :cond_501

    move v11, v0

    move-object v12, v13

    move v10, v15

    goto :goto_501

    :cond_4fd
    move-object/from16 v20, v1

    :cond_4ff
    move-object/from16 v21, v3

    :cond_501
    :goto_501
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v20

    move-object/from16 v3, v21

    goto :goto_4a7

    :cond_508
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v17

    goto :goto_49a

    :cond_511
    if-nez v12, :cond_515

    const/4 v0, 0x0

    goto :goto_51c

    :cond_515
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v12, v10, v3, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;IILjava/lang/Object;)V

    :goto_51c
    aput-object v0, v34, v9

    aget-object v0, v34, v9

    move-object/from16 v35, v8

    if-eqz v0, :cond_529

    const/4 v0, 0x1

    const/16 v20, 0x1

    goto/16 :goto_657

    :cond_529
    const/4 v0, 0x1

    const/16 v20, 0x0

    goto/16 :goto_657

    :cond_52e
    move/from16 v30, v1

    move/from16 v20, v0

    goto/16 :goto_656

    :cond_534
    move/from16 v30, v1

    move-object/from16 v8, v35

    if-nez v7, :cond_652

    aget-object v1, v32, v9

    aget-object v3, v29, v9

    iget-object v4, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->a:Ljava/lang/String;

    iget-boolean v5, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->i:Z

    iget-boolean v6, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$b;->c:Z

    if-eqz v31, :cond_54a

    move-object/from16 v10, v33

    const/4 v7, 0x0

    goto :goto_54e

    :cond_54a
    move-object/from16 v10, v33

    iget-object v7, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e$a;

    :goto_54e
    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_552
    iget v15, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->a:I

    if-ge v13, v15, :cond_5be

    iget-object v15, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    aget-object v15, v15, v13

    aget-object v17, v3, v13

    move/from16 v20, v0

    move-object/from16 v35, v8

    move v0, v14

    move v14, v12

    move v12, v11

    const/4 v11, 0x0

    :goto_564
    iget v8, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    if-ge v11, v8, :cond_5b0

    aget v8, v17, v11

    invoke-static {v8, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(IZ)Z

    move-result v8

    if-eqz v8, :cond_5a5

    iget-object v8, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v8, v8, v11

    move/from16 v21, v5

    aget v5, v17, v11

    move-object/from16 v33, v10

    iget v10, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->x:I

    const/16 v16, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_584

    const/4 v10, 0x1

    goto :goto_585

    :cond_584
    const/4 v10, 0x0

    :goto_585
    invoke-static {v8, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_591

    if-eqz v10, :cond_58f

    const/4 v8, 0x4

    goto :goto_596

    :cond_58f
    const/4 v8, 0x3

    goto :goto_596

    :cond_591
    if-eqz v10, :cond_595

    const/4 v8, 0x2

    goto :goto_596

    :cond_595
    const/4 v8, 0x1

    :goto_596
    const/4 v10, 0x0

    invoke-static {v5, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(IZ)Z

    move-result v5

    if-eqz v5, :cond_59f

    add-int/lit16 v8, v8, 0x3e8

    :cond_59f
    if-le v8, v0, :cond_5a9

    move v0, v8

    move v14, v11

    move v12, v13

    goto :goto_5a9

    :cond_5a5
    move/from16 v21, v5

    move-object/from16 v33, v10

    :cond_5a9
    :goto_5a9
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v21

    move-object/from16 v10, v33

    goto :goto_564

    :cond_5b0
    move/from16 v21, v5

    move-object/from16 v33, v10

    add-int/lit8 v13, v13, 0x1

    move v11, v12

    move v12, v14

    move-object/from16 v8, v35

    move v14, v0

    move/from16 v0, v20

    goto :goto_552

    :cond_5be
    move/from16 v20, v0

    move-object/from16 v35, v8

    move-object/from16 v33, v10

    const/4 v0, -0x1

    if-ne v11, v0, :cond_5cb

    const/4 v0, 0x1

    const/4 v1, 0x0

    goto/16 :goto_648

    :cond_5cb
    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    aget-object v1, v1, v11

    if-eqz v7, :cond_641

    aget-object v3, v3, v11

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_5db
    iget v11, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    if-ge v5, v11, :cond_618

    iget-object v11, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v11, v11, v5

    new-instance v13, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;

    iget v14, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->r:I

    iget v15, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->s:I

    if-eqz v6, :cond_5ed

    const/4 v11, 0x0

    goto :goto_5ef

    :cond_5ed
    iget-object v11, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->f:Ljava/lang/String;

    :goto_5ef
    invoke-direct {v13, v14, v15, v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_614

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_5fa
    iget v15, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    if-ge v11, v15, :cond_610

    iget-object v15, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v15, v15, v11

    aget v0, v3, v11

    invoke-static {v15, v0, v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;ILcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;)Z

    move-result v0

    if-eqz v0, :cond_60c

    add-int/lit8 v14, v14, 0x1

    :cond_60c
    add-int/lit8 v11, v11, 0x1

    const/4 v0, -0x1

    goto :goto_5fa

    :cond_610
    if-le v14, v8, :cond_614

    move-object v10, v13

    move v8, v14

    :cond_614
    add-int/lit8 v5, v5, 0x1

    const/4 v0, -0x1

    goto :goto_5db

    :cond_618
    const/4 v0, 0x1

    if-le v8, v0, :cond_637

    new-array v4, v8, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_61f
    iget v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a:I

    if-ge v5, v8, :cond_639

    iget-object v8, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v8, v8, v5

    aget v11, v3, v5

    invoke-static {v8, v11, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;ILcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b$a;)Z

    move-result v8

    if-eqz v8, :cond_634

    add-int/lit8 v8, v6, 0x1

    aput v5, v4, v6

    move v6, v8

    :cond_634
    add-int/lit8 v5, v5, 0x1

    goto :goto_61f

    :cond_637
    sget-object v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/b;->e:[I

    :cond_639
    array-length v3, v4

    if-lez v3, :cond_642

    invoke-interface {v7, v1, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e$a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;[I)Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

    move-result-object v1

    goto :goto_648

    :cond_641
    const/4 v0, 0x1

    :cond_642
    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;

    invoke-direct {v3, v1, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;I)V

    move-object v1, v3

    :goto_648
    aput-object v1, v34, v9

    aget-object v1, v34, v9

    if-eqz v1, :cond_650

    const/4 v7, 0x1

    goto :goto_657

    :cond_650
    const/4 v7, 0x0

    goto :goto_657

    :cond_652
    :goto_652
    move/from16 v20, v0

    move-object/from16 v35, v8

    :goto_656
    const/4 v0, 0x1

    :goto_657
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    goto/16 :goto_3ff

    :cond_65f
    move-object/from16 v2, p1

    const/4 v0, 0x1

    const/4 v9, 0x0

    :goto_663
    array-length v1, v2

    if-ge v9, v1, :cond_6ad

    move-object/from16 v1, p0

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_676

    const/4 v3, 0x0

    aput-object v3, v34, v9

    move-object v4, v3

    :goto_674
    const/4 v3, 0x0

    goto :goto_6aa

    :cond_676
    aget-object v3, v32, v9

    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_68a

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68a

    const/4 v7, 0x1

    goto :goto_68b

    :cond_68a
    const/4 v7, 0x0

    :goto_68b
    if-eqz v7, :cond_6a8

    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d$b;

    if-nez v4, :cond_6a1

    const/4 v4, 0x0

    aput-object v4, v34, v9

    goto :goto_674

    :cond_6a1
    const/4 v4, 0x0

    iget-object v0, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    throw v4

    :cond_6a8
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6aa
    add-int/lit8 v9, v9, 0x1

    goto :goto_663

    :cond_6ad
    move-object/from16 v1, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d$a;

    move-object v8, v0

    move-object/from16 v9, v28

    move-object/from16 v10, v32

    move-object/from16 v11, v27

    move-object/from16 v12, v29

    move-object/from16 v13, v26

    invoke-direct/range {v8 .. v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d$a;-><init>([I[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;[I[[[ILcom/fyber/inneractive/sdk/player/exoplayer2/source/s;)V

    array-length v5, v2

    new-array v5, v5, [Lcom/fyber/inneractive/sdk/player/exoplayer2/o;

    const/4 v7, 0x0

    :goto_6c5
    array-length v3, v2

    if-ge v7, v3, :cond_6d5

    aget-object v3, v34, v7

    if-eqz v3, :cond_6cf

    sget-object v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/o;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/o;

    goto :goto_6d0

    :cond_6cf
    move-object v3, v4

    :goto_6d0
    aput-object v3, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6c5

    :cond_6d5
    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;

    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;

    move-object/from16 v4, v34

    invoke-direct {v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;-><init>([Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;)V

    move-object/from16 v4, p2

    invoke-direct {v2, v4, v3, v0, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/h;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;Ljava/lang/Object;[Lcom/fyber/inneractive/sdk/player/exoplayer2/o;)V

    return-object v2
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d$a;

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.trackselection.d.a (com.fyber.inneractive.sdk.player.exoplayer2.trackselection.d$a)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>([I[Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;[I[[[ILcom/fyber/inneractive/sdk/player/exoplayer2/source/s;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.trackselection.d.b (com.fyber.inneractive.sdk.player.exoplayer2.trackselection.d$b)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation
