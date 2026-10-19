###### Class com.bytedance.sdk.openadsdk.e.b (com.bytedance.sdk.openadsdk.e.b)
.class public Lcom/bytedance/sdk/openadsdk/e/b;
.super Ljava/lang/Object;
.source "HookObjectManager.java"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/c;
    .registers 2

    const-string v0, "net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/bytedance/sdk/openadsdk/e/d;->a:Lcom/bytedance/sdk/openadsdk/e/c;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method
