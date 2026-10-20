###### Class com.squareup.imagelib.v (com.squareup.imagelib.v)
.class Lcom/squareup/imagelib/v;
.super Lcom/squareup/imagelib/u;
.source "ResourceRequestHandler.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/squareup/imagelib/u;-><init>()V

    iput-object p1, p0, Lcom/squareup/imagelib/v;->a:Landroid/content/Context;

    return-void
.end method

.method private static j(Landroid/content/res/Resources;ILcom/squareup/imagelib/s;)Landroid/graphics/Bitmap;
    .registers 6

    invoke-static {p2}, Lcom/squareup/imagelib/u;->d(Lcom/squareup/imagelib/s;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/imagelib/u;->g(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, p2, Lcom/squareup/imagelib/s;->i:I

    iget v2, p2, Lcom/squareup/imagelib/s;->j:I

    invoke-static {v1, v2, v0, p2}, Lcom/squareup/imagelib/u;->b(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/imagelib/s;)V

    :cond_14
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Lcom/squareup/imagelib/s;)Z
    .registers 3

    iget v0, p1, Lcom/squareup/imagelib/s;->f:I

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    iget-object p1, p1, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.resource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/squareup/imagelib/s;I)Lcom/squareup/imagelib/u$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/squareup/imagelib/v;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/squareup/imagelib/a0;->o(Landroid/content/Context;Lcom/squareup/imagelib/s;)Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/squareup/imagelib/a0;->n(Landroid/content/res/Resources;Lcom/squareup/imagelib/s;)I

    move-result v0

    new-instance v1, Lcom/squareup/imagelib/u$a;

    invoke-static {p2, v0, p1}, Lcom/squareup/imagelib/v;->j(Landroid/content/res/Resources;ILcom/squareup/imagelib/s;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object p2, Lcom/squareup/imagelib/Picasso$LoadedFrom;->b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-direct {v1, p1, p2}, Lcom/squareup/imagelib/u$a;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/imagelib/Picasso$LoadedFrom;)V

    return-object v1
.end method
