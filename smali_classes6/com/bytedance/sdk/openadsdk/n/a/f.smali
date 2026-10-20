###### Class com.bytedance.sdk.openadsdk.n.a.f (com.bytedance.sdk.openadsdk.n.a.f)
.class public Lcom/bytedance/sdk/openadsdk/n/a/f;
.super Ljava/lang/Object;
.source "PAGMrcVisibilityTracker.java"


# direct methods
.method public static a(Landroid/view/View;I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/n/a/f;->a(Landroid/view/View;ZI)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/View;ZI)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-eqz p1, :cond_9

    const/16 p1, 0x1e

    goto :goto_b

    :cond_9
    const/16 p1, 0x32

    :goto_b
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method
