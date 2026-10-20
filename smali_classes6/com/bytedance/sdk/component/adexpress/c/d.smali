###### Class com.bytedance.sdk.component.adexpress.c.d (com.bytedance.sdk.component.adexpress.c.d)
.class public Lcom/bytedance/sdk/component/adexpress/c/d;
.super Ljava/lang/Object;
.source "RitScreenUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "fullscreen_interstitial_ad"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "rewarded_video"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/d;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/c/d;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
