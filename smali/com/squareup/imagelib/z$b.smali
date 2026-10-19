###### Class com.squareup.imagelib.z.b (com.squareup.imagelib.z$b)
.class Lcom/squareup/imagelib/z$b;
.super Ljava/lang/Object;
.source "UrlConnectionDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/squareup/imagelib/a0;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    if-eqz p0, :cond_14

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/squareup/imagelib/a0;->a(Ljava/io/File;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    move-result-object v0

    :cond_14
    return-object v0
.end method
