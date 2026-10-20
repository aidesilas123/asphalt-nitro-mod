###### Class com.bytedance.sdk.openadsdk.b.a.l (com.bytedance.sdk.openadsdk.b.a.l)
.class Lcom/bytedance/sdk/openadsdk/b/a/l;
.super Ljava/lang/Object;
.source "StatsLogAdLogImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/j/c/a;


# static fields
.field public static final a:Lcom/bytedance/sdk/openadsdk/b/a/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/a/l;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/a/l;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/b/a/l;->a:Lcom/bytedance/sdk/openadsdk/b/a/l;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/g/h;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aa;->f()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/aa;->b(Lcom/bytedance/sdk/component/g/h;I)V

    goto :goto_11

    :cond_e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_11
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/j/a;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/b/a/l;->a(Lcom/bytedance/sdk/openadsdk/j/a;Z)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/j/a;Z)V
    .registers 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/a/l$1;

    const-string v1, "uploadLogEvent"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/a/l$1;-><init>(Lcom/bytedance/sdk/openadsdk/b/a/l;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a;Z)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/a/l;->a(Lcom/bytedance/sdk/component/g/h;)V

    return-void
.end method
