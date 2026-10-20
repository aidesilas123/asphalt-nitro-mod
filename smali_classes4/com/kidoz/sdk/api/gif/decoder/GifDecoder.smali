###### Class com.kidoz.sdk.api.gif.decoder.GifDecoder (com.kidoz.sdk.api.gif.decoder.GifDecoder)
.class public Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/gif/decoder/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field protected static final MAX_STACK_SIZE:I = 0x1000

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected delay:I

.field protected dispose:I

.field protected frameCount:I

.field protected frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/kidoz/sdk/api/gif/decoder/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/InputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastBitmap:Landroid/graphics/Bitmap;

.field protected lastDispose:I

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->loopCount:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->block:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->blockSize:I

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->dispose:I

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lastDispose:I

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->transparency:Z

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->delay:I

    return-void
.end method


# virtual methods
.method protected decodeBitmapData()V
    .registers 25

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->iw:I

    iget v2, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->ih:I

    mul-int v1, v1, v2

    iget-object v2, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->pixels:[B

    if-eqz v2, :cond_f

    array-length v2, v2

    if-ge v2, v1, :cond_13

    :cond_f
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->pixels:[B

    :cond_13
    iget-object v2, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->prefix:[S

    const/16 v3, 0x1000

    if-nez v2, :cond_1d

    new-array v2, v3, [S

    iput-object v2, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->prefix:[S

    :cond_1d
    iget-object v2, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->suffix:[B

    if-nez v2, :cond_25

    new-array v2, v3, [B

    iput-object v2, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->suffix:[B

    :cond_25
    iget-object v2, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->pixelStack:[B

    if-nez v2, :cond_2f

    const/16 v2, 0x1001

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->pixelStack:[B

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    move-result v2

    const/4 v4, 0x1

    shl-int v5, v4, v2

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/2addr v2, v4

    shl-int v8, v4, v2

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_40
    if-ge v10, v5, :cond_4e

    iget-object v11, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->prefix:[S

    aput-short v9, v11, v10

    iget-object v11, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->suffix:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_40

    :cond_4e
    move v14, v2

    move v9, v7

    move/from16 v16, v8

    const/4 v3, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_5f
    if-ge v11, v1, :cond_12b

    if-nez v12, :cond_105

    if-ge v13, v14, :cond_81

    if-nez v17, :cond_71

    invoke-virtual/range {p0 .. p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readBlock()I

    move-result v17

    if-gtz v17, :cond_6f

    goto/16 :goto_12b

    :cond_6f
    const/16 v18, 0x0

    :cond_71
    iget-object v10, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->block:[B

    aget-byte v10, v10, v18

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v13

    add-int/2addr v15, v10

    add-int/lit8 v13, v13, 0x8

    add-int/lit8 v18, v18, 0x1

    const/4 v10, -0x1

    add-int/lit8 v17, v17, -0x1

    goto :goto_5f

    :cond_81
    const/4 v10, -0x1

    and-int v4, v15, v16

    shr-int/2addr v15, v14

    sub-int/2addr v13, v14

    if-gt v4, v9, :cond_12b

    if-ne v4, v6, :cond_8c

    goto/16 :goto_12b

    :cond_8c
    if-ne v4, v5, :cond_95

    move v14, v2

    move v9, v7

    move/from16 v16, v8

    const/4 v3, -0x1

    :goto_93
    const/4 v4, 0x1

    goto :goto_5f

    :cond_95
    if-ne v3, v10, :cond_aa

    iget-object v3, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v21, v2

    iget-object v2, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->suffix:[B

    aget-byte v2, v2, v4

    aput-byte v2, v3, v12

    move v3, v4

    move/from16 v19, v3

    move v12, v10

    move/from16 v2, v21

    goto :goto_93

    :cond_aa
    move/from16 v21, v2

    if-ne v4, v9, :cond_bc

    iget-object v2, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v22, v4

    move/from16 v4, v19

    int-to-byte v4, v4

    aput-byte v4, v2, v12

    move v2, v3

    move v12, v10

    goto :goto_c0

    :cond_bc
    move/from16 v22, v4

    move/from16 v2, v22

    :goto_c0
    if-le v2, v5, :cond_d6

    iget-object v4, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v19, v5

    iget-object v5, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->suffix:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v12

    iget-object v4, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->prefix:[S

    aget-short v2, v4, v2

    move v12, v10

    move/from16 v5, v19

    goto :goto_c0

    :cond_d6
    move/from16 v19, v5

    iget-object v4, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->suffix:[B

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x1000

    if-lt v9, v5, :cond_e3

    goto :goto_12b

    :cond_e3
    iget-object v5, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v23, v6

    int-to-byte v6, v2

    aput-byte v6, v5, v12

    iget-object v5, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->prefix:[S

    int-to-short v3, v3

    aput-short v3, v5, v9

    aput-byte v6, v4, v9

    add-int/lit8 v9, v9, 0x1

    and-int v3, v9, v16

    const/16 v5, 0x1000

    if-nez v3, :cond_101

    if-ge v9, v5, :cond_101

    add-int/lit8 v14, v14, 0x1

    add-int v16, v16, v9

    :cond_101
    move v12, v10

    move/from16 v3, v22

    goto :goto_110

    :cond_105
    move/from16 v21, v2

    move/from16 v23, v6

    move/from16 v4, v19

    move/from16 v19, v5

    const/16 v5, 0x1000

    move v2, v4

    :goto_110
    const/4 v4, -0x1

    add-int/2addr v12, v4

    iget-object v6, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->pixels:[B

    add-int/lit8 v10, v20, 0x1

    iget-object v4, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->pixelStack:[B

    aget-byte v4, v4, v12

    aput-byte v4, v6, v20

    add-int/lit8 v11, v11, 0x1

    move/from16 v20, v10

    move/from16 v5, v19

    move/from16 v6, v23

    const/4 v4, 0x1

    move/from16 v19, v2

    move/from16 v2, v21

    goto/16 :goto_5f

    :cond_12b
    :goto_12b
    move/from16 v2, v20

    :goto_12d
    if-ge v2, v1, :cond_137

    iget-object v3, v0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->pixels:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12d

    :cond_137
    return-void
.end method

.method protected err()Z
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->status:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(I)I
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->delay:I

    if-lez p1, :cond_15

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->frameCount:I

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder$GifFrame;

    iget p1, p1, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder$GifFrame;->delay:I

    iput p1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->delay:I

    :cond_15
    iget p1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->delay:I

    return p1
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .registers 3

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->frameCount:I

    if-gtz v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder$GifFrame;

    iget-object p1, p1, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getFrameCount()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->frameCount:I

    return v0
.end method

.method public getLoopCount()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->loopCount:I

    return v0
.end method

.method protected init()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->status:I

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->frameCount:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->frames:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->gct:[I

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lct:[I

    return-void
.end method

.method protected read()I
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    const/4 v0, 0x1

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->status:I

    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public read(Ljava/io/InputStream;)I
    .registers 3

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->init()V

    if-eqz p1, :cond_1b

    iput-object p1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readHeader()V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readContents()V

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->frameCount:I

    if-gez v0, :cond_1e

    const/4 v0, 0x1

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->status:I

    goto :goto_1e

    :cond_1b
    const/4 v0, 0x2

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->status:I

    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    iget p1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->status:I

    return p1
.end method

.method protected readBitmap()V
    .registers 9

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->ix:I

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->iy:I

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->iw:I

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->ih:I

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    iput-boolean v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lctFlag:Z

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v1, v0, 0x7

    add-int/2addr v1, v2

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lctSize:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    iput-boolean v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->interlace:Z

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lctFlag:Z

    if-eqz v0, :cond_4a

    invoke-virtual {p0, v1}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lct:[I

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->act:[I

    goto :goto_56

    :cond_4a
    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->gct:[I

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->act:[I

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->bgIndex:I

    iget v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->transIndex:I

    if-ne v0, v1, :cond_56

    iput v3, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->bgColor:I

    :cond_56
    :goto_56
    iget-boolean v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->transparency:Z

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->act:[I

    iget v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->transIndex:I

    aget v4, v0, v1

    aput v3, v0, v1

    move v3, v4

    :cond_63
    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->act:[I

    if-nez v0, :cond_69

    iput v2, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->status:I

    :cond_69
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_70

    return-void

    :cond_70
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->decodeBitmapData()V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->skip()V

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_7d

    return-void

    :cond_7d
    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->frameCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->frameCount:I

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->width:I

    iget v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->setPixels()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->frames:Ljava/util/Vector;

    new-instance v1, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder$GifFrame;

    iget-object v2, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->delay:I

    invoke-direct {v1, v2, v4}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->transparency:Z

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->act:[I

    iget v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->transIndex:I

    aput v3, v0, v1

    :cond_a9
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->resetFrame()V

    return-void
.end method

.method protected readBlock()I
    .registers 5

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->blockSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_27

    :goto_9
    :try_start_9
    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_20

    iget-object v2, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->block:[B

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_1c

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1a

    goto :goto_20

    :cond_1a
    add-int/2addr v1, v0

    goto :goto_9

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    :goto_20
    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_27

    const/4 v0, 0x1

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->status:I

    :cond_27
    return v1
.end method

.method protected readColorTable(I)[I
    .registers 11

    mul-int/lit8 v0, p1, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_11

    :catch_c
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v0, :cond_18

    const/4 p1, 0x1

    iput p1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->status:I

    const/4 p1, 0x0

    goto :goto_42

    :cond_18
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v3, 0x0

    :goto_1d
    if-ge v2, p1, :cond_41

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, v0, v2

    move v3, v6

    move v2, v7

    goto :goto_1d

    :cond_41
    move-object p1, v0

    :goto_42
    return-object p1
.end method

.method protected readContents()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_77

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_77

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_24

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_20

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_1e

    iput v4, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->status:I

    goto :goto_2

    :cond_1e
    const/4 v1, 0x1

    goto :goto_2

    :cond_20
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readBitmap()V

    goto :goto_2

    :cond_24
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    move-result v2

    if-eq v2, v4, :cond_73

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_6f

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_6b

    const/16 v3, 0xff

    if-eq v2, v3, :cond_3a

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->skip()V

    goto :goto_2

    :cond_3a
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readBlock()I

    const-string v2, ""

    const/4 v3, 0x0

    :goto_40
    const/16 v4, 0xb

    if-ge v3, v4, :cond_5b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->block:[B

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_5b
    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readNetscapeExt()V

    goto :goto_2

    :cond_67
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->skip()V

    goto :goto_2

    :cond_6b
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->skip()V

    goto :goto_2

    :cond_6f
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readGraphicControlExt()V

    goto :goto_2

    :cond_73
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->skip()V

    goto :goto_2

    :cond_77
    return-void
.end method

.method protected readGraphicControlExt()V
    .registers 4

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->dispose:I

    const/4 v2, 0x1

    if-nez v1, :cond_12

    iput v2, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->dispose:I

    :cond_12
    and-int/2addr v0, v2

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    iput-boolean v2, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->transparency:Z

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readShort()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->delay:I

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->transIndex:I

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    return-void
.end method

.method protected readHeader()V
    .registers 4

    const-string v0, ""

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1d
    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->status:I

    return-void

    :cond_29
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readLSD()V

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->gctFlag:Z

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_44

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->gctSize:I

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->gct:[I

    iget v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->bgIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->bgColor:I

    :cond_44
    return-void
.end method

.method protected readLSD()V
    .registers 3

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->width:I

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->height:I

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-boolean v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->gctFlag:Z

    const/4 v1, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->gctSize:I

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->bgIndex:I

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->pixelAspect:I

    return-void
.end method

.method protected readNetscapeExt()V
    .registers 4

    :cond_0
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readBlock()I

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->loopCount:I

    :cond_19
    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->blockSize:I

    if-lez v0, :cond_23

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_23
    return-void
.end method

.method protected readShort()I
    .registers 3

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected resetFrame()V
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->dispose:I

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lastDispose:I

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->ix:I

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lrx:I

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->iy:I

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lry:I

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->iw:I

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lrw:I

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->ih:I

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lrh:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lastBgColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->dispose:I

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->transparency:Z

    iput v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->delay:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lct:[I

    return-void
.end method

.method protected setPixels()V
    .registers 15

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->width:I

    iget v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->height:I

    mul-int v0, v0, v1

    new-array v0, v0, [I

    iget v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lastDispose:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-lez v1, :cond_5a

    if-ne v1, v9, :cond_22

    iget v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->frameCount:I

    sub-int/2addr v1, v11

    if-lez v1, :cond_1f

    sub-int/2addr v1, v12

    invoke-virtual {p0, v1}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    goto :goto_22

    :cond_1f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5a

    const/4 v3, 0x0

    iget v7, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->width:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->height:I

    move-object v2, v0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lastDispose:I

    if-ne v1, v11, :cond_5a

    iget-boolean v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->transparency:Z

    if-nez v1, :cond_3d

    iget v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lastBgColor:I

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    const/4 v2, 0x0

    :goto_3f
    iget v3, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lrh:I

    if-ge v2, v3, :cond_5a

    iget v3, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lry:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->width:I

    mul-int v3, v3, v4

    iget v4, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lrx:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->lrw:I

    add-int/2addr v4, v3

    :goto_50
    if-ge v3, v4, :cond_57

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_5a
    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_5e
    iget v4, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->ih:I

    if-ge v10, v4, :cond_b2

    iget-boolean v5, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->interlace:Z

    if-eqz v5, :cond_7c

    const/4 v5, 0x4

    if-lt v2, v4, :cond_79

    add-int/lit8 v3, v3, 0x1

    if-eq v3, v11, :cond_78

    if-eq v3, v9, :cond_75

    if-eq v3, v5, :cond_72

    goto :goto_79

    :cond_72
    const/4 v1, 0x2

    const/4 v2, 0x1

    goto :goto_79

    :cond_75
    const/4 v1, 0x4

    const/4 v2, 0x2

    goto :goto_79

    :cond_78
    const/4 v2, 0x4

    :cond_79
    :goto_79
    add-int v4, v2, v1

    goto :goto_7e

    :cond_7c
    move v4, v2

    move v2, v10

    :goto_7e
    iget v5, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->iy:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->height:I

    if-ge v2, v5, :cond_ae

    iget v5, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->width:I

    mul-int v2, v2, v5

    iget v6, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->ix:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->iw:I

    add-int v8, v6, v7

    add-int v13, v2, v5

    if-ge v13, v8, :cond_96

    add-int v8, v2, v5

    :cond_96
    mul-int v7, v7, v10

    :goto_98
    if-ge v6, v8, :cond_ae

    iget-object v2, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->pixels:[B

    add-int/lit8 v5, v7, 0x1

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    iget-object v7, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->act:[I

    aget v2, v7, v2

    if-eqz v2, :cond_aa

    aput v2, v0, v6

    :cond_aa
    add-int/lit8 v6, v6, 0x1

    move v7, v5

    goto :goto_98

    :cond_ae
    add-int/lit8 v10, v10, 0x1

    move v2, v4

    goto :goto_5e

    :cond_b2
    iget v1, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->width:I

    iget v2, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected skip()V
    .registers 2

    :cond_0
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->readBlock()I

    iget v0, p0, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->blockSize:I

    if-lez v0, :cond_d

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/gif/decoder/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    return-void
.end method
