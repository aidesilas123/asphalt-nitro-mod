###### Class com.fyber.inneractive.sdk.util.b (com.fyber.inneractive.sdk.util.b)
.class public Lcom/fyber/inneractive/sdk/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSRuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_4c

    :try_start_5
    new-instance v1, Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-direct {v1}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    invoke-virtual {p0, v1}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_46

    :try_start_14
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_43

    :try_start_1c
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_3e

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    return-object p1

    :catchall_3e
    move-exception p1

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_50

    :catchall_43
    move-exception p1

    move-object v2, v0

    goto :goto_49

    :catchall_46
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    :goto_49
    move-object v0, p0

    move-object p0, v2

    goto :goto_50

    :catchall_4c
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    move-object v2, v1

    :goto_50
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_55
    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    :cond_5a
    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    :cond_5f
    if-eqz p0, :cond_64

    invoke-virtual {p0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    :cond_64
    throw p1
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/fyber/inneractive/sdk/util/c;)Landroid/graphics/Bitmap;
    .registers 11

    iget v0, p2, Lcom/fyber/inneractive/sdk/util/c;->a:I

    iget v1, p2, Lcom/fyber/inneractive/sdk/util/c;->d:I

    div-int/2addr v0, v1

    iget v2, p2, Lcom/fyber/inneractive/sdk/util/c;->b:I

    div-int/2addr v2, v1

    const/4 v1, 0x2

    new-array v3, v1, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v5, 0x1

    aput v2, v3, v5

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v1, :cond_1d

    aget v7, v3, v6

    if-nez v7, :cond_1a

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-eqz v1, :cond_22

    const/4 p0, 0x0

    return-object p0

    :cond_22
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p2, Lcom/fyber/inneractive/sdk/util/c;->d:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p1, v1, :cond_61

    :try_start_53
    iget p1, p2, Lcom/fyber/inneractive/sdk/util/c;->c:I

    invoke-static {p0, v0, p1}, Lcom/fyber/inneractive/sdk/util/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_59
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_53 .. :try_end_59} :catch_5a

    goto :goto_67

    :catch_5a
    iget p0, p2, Lcom/fyber/inneractive/sdk/util/c;->c:I

    invoke-static {v0, p0, v5}, Lcom/fyber/inneractive/sdk/util/b;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_67

    :cond_61
    iget p0, p2, Lcom/fyber/inneractive/sdk/util/c;->c:I

    invoke-static {v0, p0, v5}, Lcom/fyber/inneractive/sdk/util/b;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_67
    iget p1, p2, Lcom/fyber/inneractive/sdk/util/c;->d:I

    if-ne p1, v5, :cond_6c

    return-object p0

    :cond_6c
    iget p1, p2, Lcom/fyber/inneractive/sdk/util/c;->a:I

    iget p2, p2, Lcom/fyber/inneractive/sdk/util/c;->b:I

    invoke-static {p0, p1, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 39

    move/from16 v0, p1

    const/4 v1, 0x1

    if-eqz p2, :cond_8

    move-object/from16 v2, p0

    goto :goto_12

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_12
    if-ge v0, v1, :cond_16

    const/4 v0, 0x0

    return-object v0

    :cond_16
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int v13, v11, v12

    new-array v14, v13, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v14

    move v6, v11

    move v9, v11

    move v10, v12

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v3, v11, -0x1

    add-int/lit8 v4, v12, -0x1

    add-int v5, v0, v0

    add-int/2addr v5, v1

    new-array v6, v13, [I

    new-array v7, v13, [I

    new-array v8, v13, [I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [I

    add-int/lit8 v10, v5, 0x1

    shr-int/2addr v10, v1

    mul-int v10, v10, v10

    mul-int/lit16 v13, v10, 0x100

    new-array v15, v13, [I

    const/4 v1, 0x0

    :goto_4a
    if-ge v1, v13, :cond_53

    div-int v17, v1, v10

    aput v17, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_53
    const/4 v1, 0x3

    const/4 v10, 0x2

    new-array v13, v10, [I

    const/16 v16, 0x1

    aput v1, v13, v16

    const/4 v1, 0x0

    aput v5, v13, v1

    const-class v1, I

    invoke-static {v1, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    add-int/lit8 v13, v0, 0x1

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_6d
    if-ge v10, v12, :cond_19e

    move-object/from16 v19, v2

    neg-int v2, v0

    move/from16 v28, v12

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move v12, v2

    const/4 v2, 0x0

    :goto_86
    const v29, 0xff00

    const/high16 v30, 0xff0000

    if-gt v12, v0, :cond_f0

    move/from16 v31, v4

    move-object/from16 v32, v9

    const/4 v4, 0x0

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int v9, v17, v9

    aget v9, v14, v9

    add-int v33, v12, v0

    aget-object v33, v1, v33

    and-int v30, v9, v30

    shr-int/lit8 v30, v30, 0x10

    aput v30, v33, v4

    and-int v29, v9, v29

    shr-int/lit8 v29, v29, 0x8

    const/16 v16, 0x1

    aput v29, v33, v16

    and-int/lit16 v9, v9, 0xff

    const/16 v29, 0x2

    aput v9, v33, v29

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v9, v13, v9

    aget v30, v33, v4

    mul-int v30, v30, v9

    add-int v21, v21, v30

    aget v30, v33, v16

    mul-int v30, v30, v9

    add-int v20, v20, v30

    aget v30, v33, v29

    mul-int v30, v30, v9

    add-int v2, v2, v30

    if-lez v12, :cond_dd

    aget v9, v33, v4

    add-int v27, v27, v9

    aget v9, v33, v16

    add-int v26, v26, v9

    aget v9, v33, v29

    add-int v25, v25, v9

    goto :goto_e9

    :cond_dd
    aget v9, v33, v4

    add-int v24, v24, v9

    aget v4, v33, v16

    add-int v23, v23, v4

    aget v4, v33, v29

    add-int v22, v22, v4

    :goto_e9
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v31

    move-object/from16 v9, v32

    goto :goto_86

    :cond_f0
    move/from16 v31, v4

    move-object/from16 v32, v9

    move v9, v0

    move v4, v2

    const/4 v2, 0x0

    :goto_f7
    if-ge v2, v11, :cond_18e

    aget v12, v15, v21

    aput v12, v6, v17

    aget v12, v15, v20

    aput v12, v7, v17

    aget v12, v15, v4

    aput v12, v8, v17

    sub-int v21, v21, v24

    sub-int v20, v20, v23

    sub-int v4, v4, v22

    sub-int v12, v9, v0

    add-int/2addr v12, v5

    rem-int/2addr v12, v5

    aget-object v12, v1, v12

    const/16 v33, 0x0

    aget v34, v12, v33

    sub-int v24, v24, v34

    const/16 v16, 0x1

    aget v33, v12, v16

    sub-int v23, v23, v33

    const/16 v33, 0x2

    aget v34, v12, v33

    sub-int v22, v22, v34

    if-nez v10, :cond_132

    add-int v33, v2, v0

    move-object/from16 v34, v15

    add-int/lit8 v15, v33, 0x1

    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    aput v15, v32, v2

    goto :goto_134

    :cond_132
    move-object/from16 v34, v15

    :goto_134
    aget v15, v32, v2

    add-int v15, v18, v15

    aget v15, v14, v15

    and-int v33, v15, v30

    shr-int/lit8 v33, v33, 0x10

    const/16 v35, 0x0

    aput v33, v12, v35

    and-int v33, v15, v29

    shr-int/lit8 v33, v33, 0x8

    const/16 v16, 0x1

    aput v33, v12, v16

    and-int/lit16 v15, v15, 0xff

    const/16 v33, 0x2

    aput v15, v12, v33

    aget v15, v12, v35

    add-int v27, v27, v15

    aget v15, v12, v16

    add-int v26, v26, v15

    aget v12, v12, v33

    add-int v25, v25, v12

    add-int v21, v21, v27

    add-int v20, v20, v26

    add-int v4, v4, v25

    add-int/lit8 v9, v9, 0x1

    rem-int/2addr v9, v5

    rem-int v12, v9, v5

    aget-object v12, v1, v12

    const/4 v15, 0x0

    aget v33, v12, v15

    add-int v24, v24, v33

    const/16 v16, 0x1

    aget v33, v12, v16

    add-int v23, v23, v33

    const/16 v33, 0x2

    aget v35, v12, v33

    add-int v22, v22, v35

    aget v35, v12, v15

    sub-int v27, v27, v35

    aget v15, v12, v16

    sub-int v26, v26, v15

    aget v12, v12, v33

    sub-int v25, v25, v12

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, v34

    goto/16 :goto_f7

    :cond_18e
    move-object/from16 v34, v15

    add-int v18, v18, v11

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v19

    move/from16 v12, v28

    move/from16 v4, v31

    move-object/from16 v9, v32

    goto/16 :goto_6d

    :cond_19e
    move-object/from16 v19, v2

    move/from16 v31, v4

    move-object/from16 v32, v9

    move/from16 v28, v12

    move-object/from16 v34, v15

    const/4 v2, 0x0

    :goto_1a9
    if-ge v2, v11, :cond_2e0

    neg-int v3, v0

    mul-int v4, v3, v11

    move/from16 v21, v5

    move-object/from16 v22, v14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move v5, v3

    move v14, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c0
    if-gt v5, v0, :cond_227

    move/from16 v23, v11

    const/4 v11, 0x0

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v24

    add-int v24, v24, v2

    add-int v25, v5, v0

    aget-object v25, v1, v25

    aget v26, v6, v24

    aput v26, v25, v11

    aget v11, v7, v24

    const/16 v16, 0x1

    aput v11, v25, v16

    aget v11, v8, v24

    const/16 v26, 0x2

    aput v11, v25, v26

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v11, v13, v11

    aget v26, v6, v24

    mul-int v26, v26, v11

    add-int v9, v9, v26

    aget v26, v7, v24

    mul-int v26, v26, v11

    add-int v4, v4, v26

    aget v24, v8, v24

    mul-int v24, v24, v11

    add-int v3, v3, v24

    if-lez v5, :cond_20b

    const/4 v11, 0x0

    aget v24, v25, v11

    add-int v17, v17, v24

    const/16 v16, 0x1

    aget v24, v25, v16

    add-int v18, v18, v24

    const/16 v24, 0x2

    aget v25, v25, v24

    add-int v20, v20, v25

    goto :goto_21a

    :cond_20b
    const/4 v11, 0x0

    const/16 v16, 0x1

    const/16 v24, 0x2

    aget v26, v25, v11

    add-int v15, v15, v26

    aget v11, v25, v16

    add-int/2addr v12, v11

    aget v11, v25, v24

    add-int/2addr v10, v11

    :goto_21a
    move/from16 v11, v31

    if-ge v5, v11, :cond_220

    add-int v14, v14, v23

    :cond_220
    add-int/lit8 v5, v5, 0x1

    move/from16 v31, v11

    move/from16 v11, v23

    goto :goto_1c0

    :cond_227
    move/from16 v23, v11

    move/from16 v11, v31

    move/from16 v24, v0

    move/from16 v25, v2

    move v5, v4

    move/from16 v14, v28

    move v4, v3

    const/4 v3, 0x0

    :goto_234
    if-ge v3, v14, :cond_2ca

    aget v26, v22, v25

    const/high16 v27, -0x1000000

    and-int v26, v26, v27

    aget v27, v34, v9

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    aget v27, v34, v5

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    aget v27, v34, v4

    or-int v26, v26, v27

    aput v26, v22, v25

    sub-int/2addr v9, v15

    sub-int/2addr v5, v12

    sub-int/2addr v4, v10

    sub-int v26, v24, v0

    add-int v26, v26, v21

    rem-int v26, v26, v21

    aget-object v26, v1, v26

    const/16 v27, 0x0

    aget v28, v26, v27

    sub-int v15, v15, v28

    const/16 v16, 0x1

    aget v27, v26, v16

    sub-int v12, v12, v27

    const/16 v27, 0x2

    aget v28, v26, v27

    sub-int v10, v10, v28

    if-nez v2, :cond_277

    add-int v0, v3, v13

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v23

    aput v0, v32, v3

    :cond_277
    aget v0, v32, v3

    add-int/2addr v0, v2

    aget v27, v6, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    aget v27, v7, v0

    const/16 v16, 0x1

    aput v27, v26, v16

    aget v0, v8, v0

    const/16 v27, 0x2

    aput v0, v26, v27

    aget v0, v26, v28

    add-int v17, v17, v0

    aget v0, v26, v16

    add-int v18, v18, v0

    aget v0, v26, v27

    add-int v20, v20, v0

    add-int v9, v9, v17

    add-int v5, v5, v18

    add-int v4, v4, v20

    add-int/lit8 v24, v24, 0x1

    rem-int v24, v24, v21

    aget-object v0, v1, v24

    const/16 v26, 0x0

    aget v27, v0, v26

    add-int v15, v15, v27

    const/16 v16, 0x1

    aget v27, v0, v16

    add-int v12, v12, v27

    const/16 v27, 0x2

    aget v28, v0, v27

    add-int v10, v10, v28

    aget v28, v0, v26

    sub-int v17, v17, v28

    aget v28, v0, v16

    sub-int v18, v18, v28

    aget v0, v0, v27

    sub-int v20, v20, v0

    add-int v25, v25, v23

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p1

    goto/16 :goto_234

    :cond_2ca
    const/16 v16, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x2

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p1

    move/from16 v31, v11

    move/from16 v28, v14

    move/from16 v5, v21

    move-object/from16 v14, v22

    move/from16 v11, v23

    goto/16 :goto_1a9

    :cond_2e0
    move/from16 v23, v11

    move-object/from16 v22, v14

    move/from16 v14, v28

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v19

    move-object/from16 v4, v22

    move/from16 v6, v23

    move/from16 v9, v23

    move v10, v14

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v19
.end method
