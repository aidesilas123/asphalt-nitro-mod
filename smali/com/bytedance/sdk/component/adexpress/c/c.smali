###### Class com.bytedance.sdk.component.adexpress.c.c (com.bytedance.sdk.component.adexpress.c.c)
.class public Lcom/bytedance/sdk/component/adexpress/c/c;
.super Ljava/lang/Object;
.source "GlobalAdTypeUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/d;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "embeded_ad"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "banner_ad"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method
