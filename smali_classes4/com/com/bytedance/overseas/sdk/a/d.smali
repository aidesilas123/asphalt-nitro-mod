###### Class com.com.bytedance.overseas.sdk.a.d (com.com.bytedance.overseas.sdk.a.d)
.class public Lcom/com/bytedance/overseas/sdk/a/d;
.super Ljava/lang/Object;
.source "TTDownloadFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;)Lcom/com/bytedance/overseas/sdk/a/c;
    .registers 4

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/com/bytedance/overseas/sdk/a/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/com/bytedance/overseas/sdk/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;)V

    goto :goto_11

    :cond_c
    new-instance v0, Lcom/com/bytedance/overseas/sdk/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/com/bytedance/overseas/sdk/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;)V

    :goto_11
    return-object v0
.end method
