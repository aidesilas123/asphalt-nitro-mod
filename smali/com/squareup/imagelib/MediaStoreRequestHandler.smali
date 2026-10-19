###### Class com.squareup.imagelib.MediaStoreRequestHandler (com.squareup.imagelib.MediaStoreRequestHandler)
.class Lcom/squareup/imagelib/MediaStoreRequestHandler;
.super Lcom/squareup/imagelib/g;
.source "MediaStoreRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "orientation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/imagelib/MediaStoreRequestHandler;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/squareup/imagelib/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static k(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    sget-object v4, Lcom/squareup/imagelib/MediaStoreRequestHandler;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_1e

    :cond_16
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_1a} :catch_2b
    .catchall {:try_start_2 .. :try_end_1a} :catchall_24

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return p0

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_23
    return v0

    :catchall_24
    move-exception p0

    if-eqz v1, :cond_2a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2a
    throw p0

    :catch_2b
    nop

    if-eqz v1, :cond_31

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_31
    return v0
.end method

.method static l(II)Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;
    .registers 4

    sget-object v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->a:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    iget v1, v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->f:I

    if-gt p0, v1, :cond_b

    iget v1, v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->g:I

    if-gt p1, v1, :cond_b

    return-object v0

    :cond_b
    sget-object v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->b:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    iget v1, v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->f:I

    if-gt p0, v1, :cond_16

    iget p0, v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->g:I

    if-gt p1, p0, :cond_16

    return-object v0

    :cond_16
    sget-object p0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->c:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/squareup/imagelib/s;)Z
    .registers 4

    iget-object p1, p1, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method public f(Lcom/squareup/imagelib/s;I)Lcom/squareup/imagelib/u$a;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/squareup/imagelib/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v0, v6, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    invoke-static {v8, v0}, Lcom/squareup/imagelib/MediaStoreRequestHandler;->k(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v9

    iget-object v0, v6, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    invoke-virtual {v8, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    if-eqz v0, :cond_23

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v11, 0x1

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_25
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/imagelib/s;->c()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_80

    iget v0, v6, Lcom/squareup/imagelib/s;->i:I

    iget v1, v6, Lcom/squareup/imagelib/s;->j:I

    invoke-static {v0, v1}, Lcom/squareup/imagelib/MediaStoreRequestHandler;->l(II)Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    move-result-object v13

    if-nez v11, :cond_46

    sget-object v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->c:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    if-ne v13, v0, :cond_46

    new-instance v0, Lcom/squareup/imagelib/u$a;

    invoke-virtual/range {p0 .. p1}, Lcom/squareup/imagelib/g;->j(Lcom/squareup/imagelib/s;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lcom/squareup/imagelib/Picasso$LoadedFrom;->b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-direct {v0, v12, v1, v2, v9}, Lcom/squareup/imagelib/u$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/imagelib/Picasso$LoadedFrom;I)V

    return-object v0

    :cond_46
    iget-object v0, v6, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    invoke-static/range {p1 .. p1}, Lcom/squareup/imagelib/u;->d(Lcom/squareup/imagelib/s;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v0, v6, Lcom/squareup/imagelib/s;->i:I

    iget v1, v6, Lcom/squareup/imagelib/s;->j:I

    iget v2, v13, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->f:I

    iget v3, v13, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->g:I

    move-object v4, v5

    move-object v10, v5

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lcom/squareup/imagelib/u;->a(IIIILandroid/graphics/BitmapFactory$Options;Lcom/squareup/imagelib/s;)V

    if-eqz v11, :cond_70

    sget-object v0, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->c:Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;

    if-ne v13, v0, :cond_69

    const/4 v0, 0x1

    goto :goto_6b

    :cond_69
    iget v0, v13, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->e:I

    :goto_6b
    invoke-static {v8, v14, v15, v0, v10}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_76

    :cond_70
    iget v0, v13, Lcom/squareup/imagelib/MediaStoreRequestHandler$PicassoKind;->e:I

    invoke-static {v8, v14, v15, v0, v10}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_76
    if-eqz v0, :cond_80

    new-instance v1, Lcom/squareup/imagelib/u$a;

    sget-object v2, Lcom/squareup/imagelib/Picasso$LoadedFrom;->b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-direct {v1, v0, v12, v2, v9}, Lcom/squareup/imagelib/u$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/imagelib/Picasso$LoadedFrom;I)V

    return-object v1

    :cond_80
    new-instance v0, Lcom/squareup/imagelib/u$a;

    invoke-virtual/range {p0 .. p1}, Lcom/squareup/imagelib/g;->j(Lcom/squareup/imagelib/s;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lcom/squareup/imagelib/Picasso$LoadedFrom;->b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-direct {v0, v12, v1, v2, v9}, Lcom/squareup/imagelib/u$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/imagelib/Picasso$LoadedFrom;I)V

    return-object v0
.end method
