###### Class com.bytedance.sdk.openadsdk.n.a.h (com.bytedance.sdk.openadsdk.n.a.h)
.class public Lcom/bytedance/sdk/openadsdk/n/a/h;
.super Lcom/bytedance/sdk/openadsdk/n/a/b;
.source "PAGVideoMrcTracker.java"


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/q;I)V
    .registers 11

    const/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/n/a/b;-><init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/q;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/n/a/h;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/h;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->a()V

    return-void
.end method

.method protected b(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x6

    if-eq p1, v0, :cond_d

    const/4 v0, 0x5

    if-ne p1, v0, :cond_13

    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/h;->d:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->h()V

    :cond_13
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_19

    if-ne p1, v1, :cond_1e

    :cond_19
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/n/a/h;->d:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->h()V

    :cond_1e
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/h;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    if-nez p1, :cond_2a

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/n/a/h;->d:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/h;->a()V

    :cond_2a
    return-void
.end method

.method protected c()Z
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->aT()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/n/a/f;->a(Landroid/view/View;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/h;->d:I

    if-ne v0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method protected d()V
    .registers 1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->d()V

    return-void
.end method

.method public f()I
    .registers 2

    const/16 v0, 0xc8

    return v0
.end method

.method public l()Z
    .registers 5

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/h;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    if-eqz v0, :cond_14

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_14
    if-eqz v0, :cond_1e

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->l()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :cond_1e
    :goto_1e
    return v1
.end method
