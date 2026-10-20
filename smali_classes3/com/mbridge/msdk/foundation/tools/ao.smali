###### Class com.mbridge.msdk.foundation.tools.ao (com.mbridge.msdk.foundation.tools.ao)
.class public final Lcom/mbridge/msdk/foundation/tools/ao;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method public static a(Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    return-void
.end method
