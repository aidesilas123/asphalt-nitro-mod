###### Class com.bytedance.sdk.component.e.a.c.b (com.bytedance.sdk.component.e.a.c.b)
.class public Lcom/bytedance/sdk/component/e/a/c/b;
.super Ljava/lang/Object;
.source "EventMonitorUtils.java"


# direct methods
.method public static a(Ljava/util/concurrent/atomic/AtomicLong;I)V
    .registers 4

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->p()Lcom/bytedance/sdk/component/e/a/f;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->h()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p0, :cond_16

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_16
    return-void
.end method
