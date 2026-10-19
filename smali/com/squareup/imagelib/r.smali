###### Class com.squareup.imagelib.r (com.squareup.imagelib.r)
.class Lcom/squareup/imagelib/r;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PicassoExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/imagelib/r$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 9

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v7, Lcom/squareup/imagelib/a0$e;

    invoke-direct {v7}, Lcom/squareup/imagelib/a0$e;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method private b(I)V
    .registers 2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    return-void
.end method


# virtual methods
.method a(Landroid/net/NetworkInfo;)V
    .registers 5

    const/4 v0, 0x3

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3e

    :cond_a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    if-eq v1, v2, :cond_1e

    const/4 p1, 0x6

    if-eq v1, p1, :cond_1e

    const/16 p1, 0x9

    if-eq v1, p1, :cond_1e

    invoke-direct {p0, v0}, Lcom/squareup/imagelib/r;->b(I)V

    goto :goto_3d

    :cond_1e
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/squareup/imagelib/r;->b(I)V

    goto :goto_3d

    :cond_23
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    packed-switch p1, :pswitch_data_42

    packed-switch p1, :pswitch_data_52

    invoke-direct {p0, v0}, Lcom/squareup/imagelib/r;->b(I)V

    goto :goto_3d

    :pswitch_31
    invoke-direct {p0, v0}, Lcom/squareup/imagelib/r;->b(I)V

    goto :goto_3d

    :pswitch_35
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/squareup/imagelib/r;->b(I)V

    goto :goto_3d

    :pswitch_3a
    invoke-direct {p0, v2}, Lcom/squareup/imagelib/r;->b(I)V

    :goto_3d
    return-void

    :cond_3e
    :goto_3e
    invoke-direct {p0, v0}, Lcom/squareup/imagelib/r;->b(I)V

    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_3a
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0xc
        :pswitch_35
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/imagelib/r$a;

    check-cast p1, Lcom/squareup/imagelib/c;

    invoke-direct {v0, p1}, Lcom/squareup/imagelib/r$a;-><init>(Lcom/squareup/imagelib/c;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
