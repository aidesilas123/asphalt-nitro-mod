###### Class com.mbridge.msdk.foundation.tools.l (com.mbridge.msdk.foundation.tools.l)
.class public final Lcom/mbridge/msdk/foundation/tools/l;
.super Ljava/lang/Object;
.source "FastBlurUtil.java"


# static fields
.field public static a:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 37

    if-gtz p1, :cond_5

    const/16 v0, 0xa

    goto :goto_7

    :cond_5
    move/from16 v0, p1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v0, 0x0

    move-object/from16 v3, p0

    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v12, v2, v11

    new-array v13, v12, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, v13

    move v6, v2

    move v9, v2

    move v10, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v3, v2, -0x1

    add-int/lit8 v4, v11, -0x1

    const/16 v5, 0x11

    new-array v6, v12, [I

    new-array v7, v12, [I

    new-array v8, v12, [I

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [I

    const/16 v10, 0x5100

    new-array v12, v10, [I

    const/4 v14, 0x0

    :goto_46
    if-ge v14, v10, :cond_4f

    div-int/lit8 v15, v14, 0x51

    aput v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_46

    :cond_4f
    const/4 v10, 0x3

    const/4 v14, 0x2

    new-array v15, v14, [I

    const/16 v16, 0x1

    aput v10, v15, v16

    aput v5, v15, v0

    const-class v10, I

    invoke-static {v10, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_66
    const/16 v19, -0x8

    const/16 v5, 0x8

    if-ge v15, v11, :cond_181

    const/4 v14, -0x8

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_7f
    const v28, 0xff00

    const/high16 v29, 0xff0000

    if-gt v14, v5, :cond_e2

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v5, v17, v5

    aget v5, v13, v5

    add-int/lit8 v31, v14, 0x8

    aget-object v31, v10, v31

    and-int v29, v5, v29

    shr-int/lit8 v29, v29, 0x10

    aput v29, v31, v0

    and-int v28, v5, v28

    const/16 v29, 0x8

    shr-int/lit8 v28, v28, 0x8

    aput v28, v31, v16

    and-int/lit16 v5, v5, 0xff

    const/16 v28, 0x2

    aput v5, v31, v28

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x9

    aget v29, v31, v0

    mul-int v29, v29, v5

    add-int v19, v19, v29

    aget v29, v31, v16

    mul-int v29, v29, v5

    add-int v20, v20, v29

    aget v29, v31, v28

    mul-int v29, v29, v5

    add-int v21, v21, v29

    if-lez v14, :cond_d1

    aget v5, v31, v0

    add-int v25, v25, v5

    aget v5, v31, v16

    add-int v26, v26, v5

    aget v5, v31, v28

    add-int v27, v27, v5

    goto :goto_dd

    :cond_d1
    aget v5, v31, v0

    add-int v22, v22, v5

    aget v5, v31, v16

    add-int v23, v23, v5

    aget v5, v31, v28

    add-int v24, v24, v5

    :goto_dd
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0x8

    goto :goto_7f

    :cond_e2
    const/16 v5, 0x8

    const/4 v14, 0x0

    :goto_e5
    if-ge v14, v2, :cond_177

    aget v31, v12, v19

    aput v31, v6, v17

    aget v31, v12, v20

    aput v31, v7, v17

    aget v31, v12, v21

    aput v31, v8, v17

    sub-int v19, v19, v22

    sub-int v20, v20, v23

    sub-int v21, v21, v24

    add-int/lit8 v31, v5, -0x8

    const/16 v32, 0x11

    add-int/lit8 v31, v31, 0x11

    rem-int/lit8 v31, v31, 0x11

    aget-object v31, v10, v31

    aget v32, v31, v0

    sub-int v22, v22, v32

    aget v32, v31, v16

    sub-int v23, v23, v32

    const/16 v32, 0x2

    aget v33, v31, v32

    sub-int v24, v24, v33

    if-nez v15, :cond_11d

    add-int/lit8 v32, v14, 0x8

    add-int/lit8 v0, v32, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v9, v14

    :cond_11d
    aget v0, v9, v14

    add-int v0, v18, v0

    aget v0, v13, v0

    and-int v32, v0, v29

    shr-int/lit8 v32, v32, 0x10

    const/16 v33, 0x0

    aput v32, v31, v33

    and-int v32, v0, v28

    const/16 v30, 0x8

    shr-int/lit8 v32, v32, 0x8

    aput v32, v31, v16

    and-int/lit16 v0, v0, 0xff

    const/16 v32, 0x2

    aput v0, v31, v32

    aget v0, v31, v33

    add-int v25, v25, v0

    aget v0, v31, v16

    add-int v26, v26, v0

    aget v0, v31, v32

    add-int v27, v27, v0

    add-int v19, v19, v25

    add-int v20, v20, v26

    add-int v21, v21, v27

    add-int/lit8 v5, v5, 0x1

    const/16 v0, 0x11

    rem-int/2addr v5, v0

    rem-int/lit8 v0, v5, 0x11

    aget-object v0, v10, v0

    const/16 v31, 0x0

    aget v32, v0, v31

    add-int v22, v22, v32

    aget v32, v0, v16

    add-int v23, v23, v32

    const/16 v32, 0x2

    aget v33, v0, v32

    add-int v24, v24, v33

    aget v34, v0, v31

    sub-int v25, v25, v34

    aget v31, v0, v16

    sub-int v26, v26, v31

    aget v0, v0, v32

    sub-int v27, v27, v0

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x0

    goto/16 :goto_e5

    :cond_177
    add-int v18, v18, v2

    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x0

    const/16 v5, 0x11

    const/4 v14, 0x2

    goto/16 :goto_66

    :cond_181
    const/4 v0, 0x0

    :goto_182
    if-ge v0, v2, :cond_2ab

    mul-int v3, v19, v2

    move-object/from16 v24, v1

    move-object/from16 v25, v9

    const/4 v1, -0x8

    const/4 v5, 0x0

    const/16 v9, 0x8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_19c
    if-gt v1, v9, :cond_1f8

    const/4 v9, 0x0

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v26

    add-int v26, v26, v0

    add-int/lit8 v27, v1, 0x8

    aget-object v27, v10, v27

    aget v28, v6, v26

    aput v28, v27, v9

    aget v9, v7, v26

    aput v9, v27, v16

    aget v9, v8, v26

    const/16 v28, 0x2

    aput v9, v27, v28

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x9

    aget v28, v6, v26

    mul-int v28, v28, v9

    add-int v5, v5, v28

    aget v28, v7, v26

    mul-int v28, v28, v9

    add-int v14, v14, v28

    aget v26, v8, v26

    mul-int v26, v26, v9

    add-int v15, v15, v26

    if-lez v1, :cond_1e1

    const/4 v9, 0x0

    aget v26, v27, v9

    add-int v21, v21, v26

    aget v26, v27, v16

    add-int v22, v22, v26

    const/16 v26, 0x2

    aget v27, v27, v26

    add-int v23, v23, v27

    goto :goto_1f0

    :cond_1e1
    const/4 v9, 0x0

    const/16 v26, 0x2

    aget v28, v27, v9

    add-int v17, v17, v28

    aget v9, v27, v16

    add-int v18, v18, v9

    aget v9, v27, v26

    add-int v20, v20, v9

    :goto_1f0
    if-ge v1, v4, :cond_1f3

    add-int/2addr v3, v2

    :cond_1f3
    add-int/lit8 v1, v1, 0x1

    const/16 v9, 0x8

    goto :goto_19c

    :cond_1f8
    move v3, v0

    const/4 v1, 0x0

    const/16 v29, 0x8

    :goto_1fc
    if-ge v1, v11, :cond_299

    const/high16 v9, -0x1000000

    aget v26, v13, v3

    and-int v9, v26, v9

    aget v26, v12, v5

    shl-int/lit8 v26, v26, 0x10

    or-int v9, v9, v26

    aget v26, v12, v14

    const/16 v27, 0x8

    shl-int/lit8 v26, v26, 0x8

    or-int v9, v9, v26

    aget v26, v12, v15

    or-int v9, v9, v26

    aput v9, v13, v3

    sub-int v5, v5, v17

    sub-int v14, v14, v18

    sub-int v15, v15, v20

    add-int/lit8 v9, v29, -0x8

    const/16 v26, 0x11

    add-int/lit8 v9, v9, 0x11

    rem-int/lit8 v9, v9, 0x11

    aget-object v9, v10, v9

    const/16 v26, 0x0

    aget v28, v9, v26

    sub-int v17, v17, v28

    aget v26, v9, v16

    sub-int v18, v18, v26

    const/16 v26, 0x2

    aget v28, v9, v26

    sub-int v20, v20, v28

    if-nez v0, :cond_247

    move-object/from16 v26, v12

    add-int/lit8 v12, v1, 0x9

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    mul-int v12, v12, v2

    aput v12, v25, v1

    goto :goto_249

    :cond_247
    move-object/from16 v26, v12

    :goto_249
    aget v12, v25, v1

    add-int/2addr v12, v0

    aget v28, v6, v12

    const/16 v30, 0x0

    aput v28, v9, v30

    aget v28, v7, v12

    aput v28, v9, v16

    aget v12, v8, v12

    const/16 v28, 0x2

    aput v12, v9, v28

    aget v12, v9, v30

    add-int v21, v21, v12

    aget v12, v9, v16

    add-int v22, v22, v12

    aget v9, v9, v28

    add-int v23, v23, v9

    add-int v5, v5, v21

    add-int v14, v14, v22

    add-int v15, v15, v23

    add-int/lit8 v29, v29, 0x1

    const/16 v9, 0x11

    rem-int/lit8 v29, v29, 0x11

    aget-object v12, v10, v29

    const/16 v28, 0x0

    aget v30, v12, v28

    add-int v17, v17, v30

    aget v30, v12, v16

    add-int v18, v18, v30

    const/16 v30, 0x2

    aget v31, v12, v30

    add-int v20, v20, v31

    aget v31, v12, v28

    sub-int v21, v21, v31

    aget v31, v12, v16

    sub-int v22, v22, v31

    aget v12, v12, v30

    sub-int v23, v23, v12

    add-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v12, v26

    goto/16 :goto_1fc

    :cond_299
    move-object/from16 v26, v12

    const/16 v9, 0x11

    const/16 v27, 0x8

    const/16 v28, 0x0

    const/16 v30, 0x2

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v24

    move-object/from16 v9, v25

    goto/16 :goto_182

    :cond_2ab
    move-object/from16 v24, v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v24

    move-object v4, v13

    move v6, v2

    move v9, v2

    move v10, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v24
.end method
