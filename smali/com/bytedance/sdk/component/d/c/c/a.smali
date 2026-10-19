###### Class com.bytedance.sdk.component.d.c.c.a (com.bytedance.sdk.component.d.c.c.a)
.class public Lcom/bytedance/sdk/component/d/c/c/a;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public static a([B)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v3, p0

    invoke-static {p0, v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public static b([B)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1c

    array-length v2, p0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1c

    aget-byte v2, p0, v1

    const/16 v3, 0x47

    if-ne v2, v3, :cond_1c

    aget-byte v2, p0, v0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x2

    aget-byte p0, p0, v2

    const/16 v2, 0x46

    if-ne p0, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method
