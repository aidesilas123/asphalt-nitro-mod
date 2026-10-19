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
