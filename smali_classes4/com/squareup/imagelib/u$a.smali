###### Class com.squareup.imagelib.u.a (com.squareup.imagelib.u$a)
.class public final Lcom/squareup/imagelib/u$a;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/squareup/imagelib/Picasso$LoadedFrom;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Ljava/io/InputStream;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/squareup/imagelib/Picasso$LoadedFrom;)V
    .registers 5

    const-string v0, "bitmap == null"

    invoke-static {p1, v0}, Lcom/squareup/imagelib/a0;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/squareup/imagelib/u$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/imagelib/Picasso$LoadedFrom;I)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/imagelib/Picasso$LoadedFrom;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    if-eqz p2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    xor-int/2addr v0, v2

    if-eqz v0, :cond_22

    iput-object p1, p0, Lcom/squareup/imagelib/u$a;->b:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/squareup/imagelib/u$a;->c:Ljava/io/InputStream;

    const-string p1, "loadedFrom == null"

    invoke-static {p3, p1}, Lcom/squareup/imagelib/a0;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/imagelib/Picasso$LoadedFrom;

    iput-object p1, p0, Lcom/squareup/imagelib/u$a;->a:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    iput p4, p0, Lcom/squareup/imagelib/u$a;->d:I

    return-void

    :cond_22
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/squareup/imagelib/Picasso$LoadedFrom;)V
    .registers 5

    const-string v0, "stream == null"

    invoke-static {p1, v0}, Lcom/squareup/imagelib/a0;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/imagelib/u$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/imagelib/Picasso$LoadedFrom;I)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/u$a;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/squareup/imagelib/u$a;->d:I

    return v0
.end method

.method public c()Lcom/squareup/imagelib/Picasso$LoadedFrom;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/u$a;->a:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    return-object v0
.end method

.method public d()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/u$a;->c:Ljava/io/InputStream;

    return-object v0
.end method
