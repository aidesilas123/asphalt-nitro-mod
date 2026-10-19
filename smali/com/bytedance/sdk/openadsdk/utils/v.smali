###### Class com.bytedance.sdk.openadsdk.utils.v (com.bytedance.sdk.openadsdk.utils.v)
.class public Lcom/bytedance/sdk/openadsdk/utils/v;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# direct methods
.method public static a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->aS()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1d

    const/4 v2, 0x7

    if-ne v1, v2, :cond_10

    goto :goto_1d

    :cond_10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->I()Lcom/bytedance/sdk/openadsdk/core/model/q$a;

    move-result-object p0

    if-eqz p0, :cond_1d

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt p0, v1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    :goto_1d
    return v0
.end method
