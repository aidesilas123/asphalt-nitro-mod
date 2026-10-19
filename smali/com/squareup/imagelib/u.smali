###### Class com.squareup.imagelib.u (com.squareup.imagelib.u)
.class public abstract Lcom/squareup/imagelib/u;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/imagelib/u$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IIIILandroid/graphics/BitmapFactory$Options;Lcom/squareup/imagelib/s;)V
    .registers 8

    if-gt p3, p1, :cond_7

    if-le p2, p0, :cond_5

    goto :goto_7

    :cond_5
    const/4 p0, 0x1

    goto :goto_3d

    :cond_7
    :goto_7
    if-nez p1, :cond_13

    int-to-float p1, p2

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_11
    double-to-int p0, p0

    goto :goto_3d

    :cond_13
    if-nez p0, :cond_1e

    int-to-float p0, p3

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    goto :goto_11

    :cond_1e
    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float p2, p2

    int-to-float p0, p0

    div-float/2addr p2, p0

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p0, p2

    iget-boolean p2, p5, Lcom/squareup/imagelib/s;->l:Z

    if-eqz p2, :cond_39

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_3d

    :cond_39
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_3d
    iput p0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p0, 0x0

    iput-boolean p0, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-void
.end method

.method static b(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/imagelib/s;)V
    .registers 10

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/squareup/imagelib/u;->a(IIIILandroid/graphics/BitmapFactory$Options;Lcom/squareup/imagelib/s;)V

    return-void
.end method

.method static d(Lcom/squareup/imagelib/s;)Landroid/graphics/BitmapFactory$Options;
    .registers 5

    invoke-virtual {p0}, Lcom/squareup/imagelib/s;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/squareup/imagelib/s;->s:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const/4 v2, 0x0

    if-nez v0, :cond_14

    if-nez v1, :cond_14

    iget-boolean v3, p0, Lcom/squareup/imagelib/s;->r:Z

    if-eqz v3, :cond_2d

    :cond_14
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_27

    iget-boolean v0, p0, Lcom/squareup/imagelib/s;->r:Z

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    :cond_27
    if-eqz v1, :cond_2d

    iget-object p0, p0, Lcom/squareup/imagelib/s;->s:Landroid/graphics/Bitmap$Config;

    iput-object p0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_2d
    return-object v2
.end method

.method static g(Landroid/graphics/BitmapFactory$Options;)Z
    .registers 1

    if-eqz p0, :cond_8

    iget-boolean p0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public abstract c(Lcom/squareup/imagelib/s;)Z
.end method

.method e()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract f(Lcom/squareup/imagelib/s;I)Lcom/squareup/imagelib/u$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method h(ZLandroid/net/NetworkInfo;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
