###### Class com.bytedance.sdk.component.e.a.a.a.a (com.bytedance.sdk.component.e.a.a.a.a)
.class public Lcom/bytedance/sdk/component/e/a/a/a/a;
.super Lcom/bytedance/sdk/component/e/a/a/a/b;
.source "DBAdapter.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/component/e/a/a/a/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/e/a/a/a/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/component/e/a/a/a/a;
    .registers 3

    sget-object v0, Lcom/bytedance/sdk/component/e/a/a/a/a;->a:Lcom/bytedance/sdk/component/e/a/a/a/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/bytedance/sdk/component/e/a/a/a/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/e/a/a/a/a;->a:Lcom/bytedance/sdk/component/e/a/a/a/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/bytedance/sdk/component/e/a/a/a/a;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/e/a/a/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/component/e/a/a/a/a;->a:Lcom/bytedance/sdk/component/e/a/a/a/a;

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
    sget-object p0, Lcom/bytedance/sdk/component/e/a/a/a/a;->a:Lcom/bytedance/sdk/component/e/a/a/a/a;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Lcom/bytedance/sdk/component/e/a/a/a/b$b;
    .registers 2

    invoke-super {p0}, Lcom/bytedance/sdk/component/e/a/a/a/b;->a()Lcom/bytedance/sdk/component/e/a/a/a/b$b;

    move-result-object v0

    return-object v0
.end method
