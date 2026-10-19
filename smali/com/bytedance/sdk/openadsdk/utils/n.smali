###### Class com.bytedance.sdk.openadsdk.utils.n (com.bytedance.sdk.openadsdk.utils.n)
.class public Lcom/bytedance/sdk/openadsdk/utils/n;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/n;->a(F)J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/n;->a:J

    return-void
.end method

.method public static a()I
    .registers 5

    const/4 v0, 0x2

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide/32 v3, 0x2000000

    div-long/2addr v1, v3
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    long-to-int v2, v1

    const/4 v1, 0x5

    if-gt v2, v0, :cond_12

    goto :goto_17

    :cond_12
    if-lt v2, v1, :cond_16

    const/4 v0, 0x5

    goto :goto_17

    :cond_16
    move v0, v2

    :catchall_17
    :goto_17
    return v0
.end method

.method public static a(F)J
    .registers 3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float p0, p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(JLjava/lang/String;)Z
    .registers 11

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->d()Lcom/bytedance/sdk/openadsdk/core/settings/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/e;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    cmp-long v0, v2, p0

    if-ltz v0, :cond_2a

    return v1

    :cond_2a
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/n;->b(JLjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2f
    return v1
.end method

.method private static b(JLjava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/n$1;

    const-string v1, "isMemoryEnough"

    invoke-direct {v0, v1, p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/n$1;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p0, 0x5

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/aa;->b(Lcom/bytedance/sdk/component/g/h;I)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.utils.n.AnonymousClass1 (com.bytedance.sdk.openadsdk.utils.n$1)
.class final Lcom/bytedance/sdk/openadsdk/utils/n$1;
.super Lcom/bytedance/sdk/component/g/h;
.source "MemoryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/n;->b(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/n$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/utils/n$1;->b:J

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "dynamic_mem_not_enough"

    const-string v1, "MemoryUtils"

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "scene"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/utils/n$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mem_size"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/utils/n$1;->b:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/b;->a()Lcom/bytedance/sdk/openadsdk/j/b;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/bytedance/sdk/openadsdk/j/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception v0

    const-string v2, "run: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method
