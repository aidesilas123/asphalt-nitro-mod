###### Class com.bytedance.sdk.component.g.a.b (com.bytedance.sdk.component.g.a.b)
.class public Lcom/bytedance/sdk/component/g/a/b;
.super Lcom/bytedance/sdk/component/utils/x;
.source "HandlerWapper.java"

# interfaces
.implements Lcom/bytedance/sdk/component/g/a/c;


# instance fields
.field private final b:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/os/HandlerThread;Lcom/bytedance/sdk/component/utils/x$a;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bytedance/sdk/component/utils/x;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/x$a;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/g/a/b;->b:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/utils/x;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/utils/x;->a:Ljava/lang/ref/WeakReference;

    :cond_d
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/utils/x$a;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/utils/x;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/a/b;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_7
    return-void
.end method
