###### Class com.bytedance.sdk.openadsdk.core.e (com.bytedance.sdk.openadsdk.core.e)
.class public Lcom/bytedance/sdk/openadsdk/core/e;
.super Lcom/bytedance/sdk/openadsdk/core/f;
.source "DBAdapter.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/e;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/e;
    .registers 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    if-nez v0, :cond_17

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/e;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    if-nez v1, :cond_12

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/e;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/e;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Lcom/bytedance/sdk/openadsdk/core/f$c;
    .registers 2

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/f;->a()Lcom/bytedance/sdk/openadsdk/core/f$c;

    move-result-object v0

    return-object v0
.end method
