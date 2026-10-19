###### Class com.gameloft.android2d.iap.wrapper.Image (com.gameloft.android2d.iap.wrapper.Image)
.class public Lcom/gameloft/android2d/iap/wrapper/Image;
.super Ljava/lang/Object;
.source "Image.java"


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field public c:Landroid/graphics/Bitmap;

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gameloft/android2d/iap/wrapper/Image;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/gameloft/android2d/iap/wrapper/Image;->d:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/gameloft/android2d/iap/wrapper/Image;->e:I

    return-void
.end method

.method public static createImage(II)Lcom/gameloft/android2d/iap/wrapper/Image;
    .registers 4

    new-instance v0, Lcom/gameloft/android2d/iap/wrapper/Image;

    sget-boolean v1, Lcom/gameloft/android2d/iap/wrapper/Image;->b:Z

    if-eqz v1, :cond_9

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_b

    :cond_9
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_b
    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/wrapper/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createImage(Lcom/gameloft/android2d/iap/wrapper/Image;)Lcom/gameloft/android2d/iap/wrapper/Image;
    .registers 2

    new-instance v0, Lcom/gameloft/android2d/iap/wrapper/Image;

    iget-object p0, p0, Lcom/gameloft/android2d/iap/wrapper/Image;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/wrapper/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createImage(Lcom/gameloft/android2d/iap/wrapper/Image;IIIII)Lcom/gameloft/android2d/iap/wrapper/Image;
    .registers 13

    new-instance p5, Lcom/gameloft/android2d/iap/wrapper/Image;

    iget-object v0, p0, Lcom/gameloft/android2d/iap/wrapper/Image;->c:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p5, p0}, Lcom/gameloft/android2d/iap/wrapper/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object p5
.end method

.method public static createImage(Ljava/io/InputStream;)Lcom/gameloft/android2d/iap/wrapper/Image;
    .registers 2

    new-instance v0, Lcom/gameloft/android2d/iap/wrapper/Image;

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/wrapper/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createImage(Ljava/lang/String;)Lcom/gameloft/android2d/iap/wrapper/Image;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Lcom/gameloft/android2d/iap/wrapper/Image;

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/wrapper/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createImage([BII)Lcom/gameloft/android2d/iap/wrapper/Image;
    .registers 4

    new-instance v0, Lcom/gameloft/android2d/iap/wrapper/Image;

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/wrapper/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createRGBImage([IIIZ)Lcom/gameloft/android2d/iap/wrapper/Image;
    .registers 6

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-boolean v1, Lcom/gameloft/android2d/iap/wrapper/Image;->b:Z

    if-eqz v1, :cond_c

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eqz p3, :cond_c

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    :cond_c
    new-instance p3, Lcom/gameloft/android2d/iap/wrapper/Image;

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/gameloft/android2d/iap/wrapper/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object p3
.end method

.method public static createScaledImage(Ljava/io/InputStream;II)Lcom/gameloft/android2d/iap/wrapper/Image;
    .registers 4

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_1c

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_16

    :try_start_13
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    new-instance p0, Lcom/gameloft/android2d/iap/wrapper/Image;

    invoke-direct {p0, p1}, Lcom/gameloft/android2d/iap/wrapper/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0

    :cond_1c
    new-instance p1, Lcom/gameloft/android2d/iap/wrapper/Image;

    invoke-direct {p1, p0}, Lcom/gameloft/android2d/iap/wrapper/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static setOptimization(ZZ)V
    .registers 2

    sput-boolean p0, Lcom/gameloft/android2d/iap/wrapper/Image;->b:Z

    sput-boolean p1, Lcom/gameloft/android2d/iap/wrapper/Image;->a:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lcom/gameloft/android2d/iap/wrapper/Image;->a:Z

    if-eqz v1, :cond_23

    const-string v1, "freeBitmap"

    if-ne p1, v1, :cond_23

    iget-object p1, p0, Lcom/gameloft/android2d/iap/wrapper/Image;->c:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_23

    const/4 p1, 0x0

    :try_start_17
    iget-object v1, p0, Lcom/gameloft/android2d/iap/wrapper/Image;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object p1, p0, Lcom/gameloft/android2d/iap/wrapper/Image;->c:Landroid/graphics/Bitmap;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    sget-boolean v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->a:Z

    iput-object p1, p0, Lcom/gameloft/android2d/iap/wrapper/Image;->c:Landroid/graphics/Bitmap;

    :cond_23
    :goto_23
    return v0
.end method
