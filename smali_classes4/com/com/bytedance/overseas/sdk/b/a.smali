###### Class com.com.bytedance.overseas.sdk.b.a (com.com.bytedance.overseas.sdk.b.a)
.class public Lcom/com/bytedance/overseas/sdk/b/a;
.super Ljava/lang/Object;
.source "AdvertisingIdHelper.java"


# static fields
.field private static volatile b:Lcom/com/bytedance/overseas/sdk/b/a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/com/bytedance/overseas/sdk/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/com/bytedance/overseas/sdk/b/a;
    .registers 2

    sget-object v0, Lcom/com/bytedance/overseas/sdk/b/a;->b:Lcom/com/bytedance/overseas/sdk/b/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/com/bytedance/overseas/sdk/b/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/com/bytedance/overseas/sdk/b/a;->b:Lcom/com/bytedance/overseas/sdk/b/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/com/bytedance/overseas/sdk/b/a;

    invoke-direct {v1}, Lcom/com/bytedance/overseas/sdk/b/a;-><init>()V

    sput-object v1, Lcom/com/bytedance/overseas/sdk/b/a;->b:Lcom/com/bytedance/overseas/sdk/b/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/com/bytedance/overseas/sdk/b/a;->b:Lcom/com/bytedance/overseas/sdk/b/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    const-string v1, "gaid"

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->d()Lcom/bytedance/sdk/openadsdk/core/settings/e;

    move-result-object v0

    const-string v1, "gaid"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/e;->A(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/com/bytedance/overseas/sdk/b/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/com/bytedance/overseas/sdk/b/a;->a:Ljava/lang/String;

    return-object v0

    :cond_19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/com/bytedance/overseas/sdk/b/a;->a:Ljava/lang/String;

    return-object v0

    :cond_28
    return-object v2
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/com/bytedance/overseas/sdk/b/a;->a:Ljava/lang/String;

    return-void
.end method
