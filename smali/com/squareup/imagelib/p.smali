###### Class com.squareup.imagelib.p (com.squareup.imagelib.p)
.class Lcom/squareup/imagelib/p;
.super Lcom/squareup/imagelib/u;
.source "NetworkRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/imagelib/p$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/imagelib/j;

.field private final b:Lcom/squareup/imagelib/w;


# direct methods
.method public constructor <init>(Lcom/squareup/imagelib/j;Lcom/squareup/imagelib/w;)V
    .registers 3

    invoke-direct {p0}, Lcom/squareup/imagelib/u;-><init>()V

    iput-object p1, p0, Lcom/squareup/imagelib/p;->a:Lcom/squareup/imagelib/j;

    iput-object p2, p0, Lcom/squareup/imagelib/p;->b:Lcom/squareup/imagelib/w;

    return-void
.end method


# virtual methods
.method public c(Lcom/squareup/imagelib/s;)Z
    .registers 3

    iget-object p1, p1, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p1, 0x1

    :goto_1a
    return p1
.end method

.method e()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public f(Lcom/squareup/imagelib/s;I)Lcom/squareup/imagelib/u$a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/squareup/imagelib/p;->a:Lcom/squareup/imagelib/j;

    iget-object v0, p1, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    iget p1, p1, Lcom/squareup/imagelib/s;->d:I

    invoke-interface {p2, v0, p1}, Lcom/squareup/imagelib/j;->a(Landroid/net/Uri;I)Lcom/squareup/imagelib/j$a;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    iget-boolean v0, p1, Lcom/squareup/imagelib/j$a;->c:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    goto :goto_17

    :cond_15
    sget-object v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->c:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    :goto_17
    invoke-virtual {p1}, Lcom/squareup/imagelib/j$a;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_23

    new-instance p1, Lcom/squareup/imagelib/u$a;

    invoke-direct {p1, v1, v0}, Lcom/squareup/imagelib/u$a;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/imagelib/Picasso$LoadedFrom;)V

    return-object p1

    :cond_23
    invoke-virtual {p1}, Lcom/squareup/imagelib/j$a;->c()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_2a

    return-object p2

    :cond_2a
    sget-object p2, Lcom/squareup/imagelib/Picasso$LoadedFrom;->b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    const-wide/16 v2, 0x0

    if-ne v0, p2, :cond_44

    invoke-virtual {p1}, Lcom/squareup/imagelib/j$a;->b()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-eqz p2, :cond_39

    goto :goto_44

    :cond_39
    invoke-static {v1}, Lcom/squareup/imagelib/a0;->e(Ljava/io/InputStream;)V

    new-instance p1, Lcom/squareup/imagelib/p$a;

    const-string p2, "Received response with 0 content-length header."

    invoke-direct {p1, p2}, Lcom/squareup/imagelib/p$a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    :goto_44
    sget-object p2, Lcom/squareup/imagelib/Picasso$LoadedFrom;->c:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    if-ne v0, p2, :cond_59

    invoke-virtual {p1}, Lcom/squareup/imagelib/j$a;->b()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-lez p2, :cond_59

    iget-object p2, p0, Lcom/squareup/imagelib/p;->b:Lcom/squareup/imagelib/w;

    invoke-virtual {p1}, Lcom/squareup/imagelib/j$a;->b()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/squareup/imagelib/w;->f(J)V

    :cond_59
    new-instance p1, Lcom/squareup/imagelib/u$a;

    invoke-direct {p1, v1, v0}, Lcom/squareup/imagelib/u$a;-><init>(Ljava/io/InputStream;Lcom/squareup/imagelib/Picasso$LoadedFrom;)V

    return-object p1
.end method

.method h(ZLandroid/net/NetworkInfo;)Z
    .registers 3

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method i()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.squareup.imagelib.p.a (com.squareup.imagelib.p$a)
.class Lcom/squareup/imagelib/p$a;
.super Ljava/io/IOException;
.source "NetworkRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
