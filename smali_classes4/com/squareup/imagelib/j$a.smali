###### Class com.squareup.imagelib.j.a (com.squareup.imagelib.j$a)
.class public Lcom/squareup/imagelib/j$a;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/io/InputStream;

.field final b:Landroid/graphics/Bitmap;

.field final c:Z

.field final d:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ZJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_f

    iput-object p1, p0, Lcom/squareup/imagelib/j$a;->a:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/squareup/imagelib/j$a;->b:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/squareup/imagelib/j$a;->c:Z

    iput-wide p3, p0, Lcom/squareup/imagelib/j$a;->d:J

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/squareup/imagelib/j$a;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/squareup/imagelib/j$a;->d:J

    return-wide v0
.end method

.method public c()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/j$a;->a:Ljava/io/InputStream;

    return-object v0
.end method
