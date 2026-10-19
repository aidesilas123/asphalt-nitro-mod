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

###### Class com.bytedance.sdk.openadsdk.b.a.l.AnonymousClass1 (com.bytedance.sdk.openadsdk.b.a.l$1)
.class Lcom/bytedance/sdk/openadsdk/b/a/l$1;
.super Lcom/bytedance/sdk/component/g/h;
.source "StatsLogAdLogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/a/l;->a(Lcom/bytedance/sdk/openadsdk/j/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/j/a;

.field final synthetic b:Z

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/b/a/l;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/b/a/l;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a;Z)V
    .registers 5

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/a/l$1;->c:Lcom/bytedance/sdk/openadsdk/b/a/l;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/a/l$1;->a:Lcom/bytedance/sdk/openadsdk/j/a;

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/b/a/l$1;->b:Z

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/l$1;->a:Lcom/bytedance/sdk/openadsdk/j/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/j/a;->getLogStats()Lcom/bytedance/sdk/openadsdk/j/a/a;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/j/a/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/e/a/d/a/a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/component/e/a/d/a/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/e/a/d/a/a;->c(B)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/l$1;->b:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    goto :goto_21

    :cond_20
    const/4 v0, 0x3

    :goto_21
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/e/a/d/a/a;->b(B)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/e/a/d/a/a;->a(B)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/b/a/d;->a(Landroid/content/Context;Z)V

    :cond_39
    invoke-static {v1}, Lcom/bytedance/sdk/component/e/a/b;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3c

    :catchall_3c
    return-void
.end method
