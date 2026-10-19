###### Class com.tapjoy.internal.l4 (com.tapjoy.internal.l4)
.class public abstract Lcom/tapjoy/internal/l4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tapjoy/internal/l7;)V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/tapjoy/internal/l7;->a:Lcom/tapjoy/internal/p8;

    invoke-virtual {p0}, Lcom/tapjoy/internal/p8;->e()V

    return-void

    :cond_1b
    invoke-static {}, Lcom/tapjoy/internal/w2;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
