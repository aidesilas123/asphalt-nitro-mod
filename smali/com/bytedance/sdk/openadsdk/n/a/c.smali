###### Class com.bytedance.sdk.openadsdk.n.a.c (com.bytedance.sdk.openadsdk.n.a.c)
.class public Lcom/bytedance/sdk/openadsdk/n/a/c;
.super Lcom/bytedance/sdk/openadsdk/n/a/b;
.source "PAGDisplayMrcTracker.java"


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/q;I)V
    .registers 11

    const/16 v4, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/n/a/b;-><init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/q;II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/n/a/c;->d:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/n/a/c;->b(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez v0, :cond_1a

    if-lez p1, :cond_1a

    mul-int v0, v0, p1

    const p1, 0x3b344

    if-lt v0, p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/n/a/c;->d:I

    :cond_1a
    return-void
.end method


# virtual methods
.method protected b(I)V
    .registers 2

    return-void
.end method

.method protected c()Z
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/n/a/c;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/n/a/c;->b(Landroid/view/View;)V

    :cond_1b
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/n/a/c;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    const/4 v1, 0x1

    :cond_21
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/n/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/q;->aT()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/n/a/f;->a(Landroid/view/View;ZI)Z

    move-result v0

    return v0

    :cond_2c
    return v1
.end method

.method protected d()V
    .registers 1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->d()V

    return-void
.end method

.method public f()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method
