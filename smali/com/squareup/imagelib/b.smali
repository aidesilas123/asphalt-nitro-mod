###### Class com.squareup.imagelib.b (com.squareup.imagelib.b)
.class Lcom/squareup/imagelib/b;
.super Lcom/squareup/imagelib/u;
.source "AssetRequestHandler.java"


# static fields
.field private static final a:I = 0x16


# instance fields
.field private final b:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/squareup/imagelib/u;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/imagelib/b;->b:Landroid/content/res/AssetManager;

    return-void
.end method

.method static j(Lcom/squareup/imagelib/s;)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/squareup/imagelib/b;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Lcom/squareup/imagelib/s;)Z
    .registers 4

    iget-object p1, p1, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android_asset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method public f(Lcom/squareup/imagelib/s;I)Lcom/squareup/imagelib/u$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/squareup/imagelib/b;->b:Landroid/content/res/AssetManager;

    invoke-static {p1}, Lcom/squareup/imagelib/b;->j(Lcom/squareup/imagelib/s;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Lcom/squareup/imagelib/u$a;

    sget-object v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-direct {p2, p1, v0}, Lcom/squareup/imagelib/u$a;-><init>(Ljava/io/InputStream;Lcom/squareup/imagelib/Picasso$LoadedFrom;)V

    return-object p2
.end method
