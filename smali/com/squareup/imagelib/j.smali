###### Class com.squareup.imagelib.j (com.squareup.imagelib.j)
.class public interface abstract Lcom/squareup/imagelib/j;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/imagelib/j$a;,
        Lcom/squareup/imagelib/j$b;
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/net/Uri;I)Lcom/squareup/imagelib/j$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

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

###### Class com.squareup.imagelib.j.b (com.squareup.imagelib.j$b)
.class public Lcom/squareup/imagelib/j$b;
.super Ljava/io/IOException;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Z

.field final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/squareup/imagelib/NetworkPolicy;->isOfflineOnly(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/squareup/imagelib/j$b;->a:Z

    iput p3, p0, Lcom/squareup/imagelib/j$b;->b:I

    return-void
.end method
