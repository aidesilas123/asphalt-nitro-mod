###### Class com.squareup.imagelib.r.a (com.squareup.imagelib.r$a)
.class final Lcom/squareup/imagelib/r$a;
.super Ljava/util/concurrent/FutureTask;
.source "PicassoExecutorService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/squareup/imagelib/c;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/squareup/imagelib/r$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/imagelib/c;


# direct methods
.method public constructor <init>(Lcom/squareup/imagelib/c;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/squareup/imagelib/r$a;->a:Lcom/squareup/imagelib/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/imagelib/r$a;)I
    .registers 4

    iget-object v0, p0, Lcom/squareup/imagelib/r$a;->a:Lcom/squareup/imagelib/c;

    invoke-virtual {v0}, Lcom/squareup/imagelib/c;->r()Lcom/squareup/imagelib/Picasso$Priority;

    move-result-object v0

    iget-object v1, p1, Lcom/squareup/imagelib/r$a;->a:Lcom/squareup/imagelib/c;

    invoke-virtual {v1}, Lcom/squareup/imagelib/c;->r()Lcom/squareup/imagelib/Picasso$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/squareup/imagelib/r$a;->a:Lcom/squareup/imagelib/c;

    iget v0, v0, Lcom/squareup/imagelib/c;->e:I

    iget-object p1, p1, Lcom/squareup/imagelib/r$a;->a:Lcom/squareup/imagelib/c;

    iget p1, p1, Lcom/squareup/imagelib/c;->e:I

    sub-int/2addr v0, p1

    goto :goto_22

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_22
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/squareup/imagelib/r$a;

    invoke-virtual {p0, p1}, Lcom/squareup/imagelib/r$a;->a(Lcom/squareup/imagelib/r$a;)I

    move-result p1

    return p1
.end method
