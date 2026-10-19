###### Class com.bytedance.sdk.openadsdk.utils.q (com.bytedance.sdk.openadsdk.utils.q)
.class public Lcom/bytedance/sdk/openadsdk/utils/q;
.super Ljava/lang/Object;
.source "PAGNetworkTools.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/component/utils/v;->a(Landroid/content/Context;J)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_24

    const/4 v0, 0x3

    if-eq p0, v0, :cond_21

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x6

    if-eq p0, v0, :cond_18

    const-string p0, "mobile"

    goto :goto_26

    :cond_18
    const-string p0, "5g"

    goto :goto_26

    :cond_1b
    const-string p0, "4g"

    goto :goto_26

    :cond_1e
    const-string p0, "wifi"

    goto :goto_26

    :cond_21
    const-string p0, "3g"

    goto :goto_26

    :cond_24
    const-string p0, "2g"

    :goto_26
    return-object p0
.end method
