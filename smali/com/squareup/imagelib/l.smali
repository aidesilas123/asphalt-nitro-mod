###### Class com.squareup.imagelib.l (com.squareup.imagelib.l)
.class Lcom/squareup/imagelib/l;
.super Lcom/squareup/imagelib/g;
.source "FileRequestHandler.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/squareup/imagelib/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static k(Landroid/net/Uri;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public c(Lcom/squareup/imagelib/s;)Z
    .registers 3

    iget-object p1, p1, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/squareup/imagelib/s;I)Lcom/squareup/imagelib/u$a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p2, Lcom/squareup/imagelib/u$a;

    invoke-virtual {p0, p1}, Lcom/squareup/imagelib/g;->j(Lcom/squareup/imagelib/s;)Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lcom/squareup/imagelib/Picasso$LoadedFrom;->b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    iget-object p1, p1, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    invoke-static {p1}, Lcom/squareup/imagelib/l;->k(Landroid/net/Uri;)I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v0, v1, p1}, Lcom/squareup/imagelib/u$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/imagelib/Picasso$LoadedFrom;I)V

    return-object p2
.end method
