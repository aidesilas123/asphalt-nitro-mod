###### Class com.bytedance.sdk.openadsdk.core.s (com.bytedance.sdk.openadsdk.core.s)
.class public Lcom/bytedance/sdk/openadsdk/core/s;
.super Ljava/lang/Object;
.source "SingleAppData.java"


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/core/s;


# instance fields
.field private b:Lcom/bytedance/sdk/openadsdk/core/model/a;

.field private c:Lcom/bytedance/sdk/openadsdk/core/model/q;

.field private d:Lcom/bytedance/sdk/openadsdk/apiImpl/d/a;

.field private e:Lcom/bytedance/sdk/openadsdk/apiImpl/b/b;

.field private f:Lcom/bytedance/sdk/openadsdk/apiImpl/c/b;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/s;
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/s;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/s;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/s;->a:Lcom/bytedance/sdk/openadsdk/core/s;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/apiImpl/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Lcom/bytedance/sdk/openadsdk/apiImpl/b/b;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/apiImpl/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->f:Lcom/bytedance/sdk/openadsdk/apiImpl/c/b;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/apiImpl/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Lcom/bytedance/sdk/openadsdk/apiImpl/d/a;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/model/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/model/a;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/model/q;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/s;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    return-void
.end method

.method public b()Lcom/bytedance/sdk/openadsdk/core/model/q;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/apiImpl/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Lcom/bytedance/sdk/openadsdk/apiImpl/d/a;

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/apiImpl/b/b;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Lcom/bytedance/sdk/openadsdk/apiImpl/b/b;

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/apiImpl/c/b;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->f:Lcom/bytedance/sdk/openadsdk/apiImpl/c/b;

    return-object v0
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/model/a;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->d:Lcom/bytedance/sdk/openadsdk/apiImpl/d/a;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->e:Lcom/bytedance/sdk/openadsdk/apiImpl/b/b;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->f:Lcom/bytedance/sdk/openadsdk/apiImpl/c/b;

    return-void
.end method

.method public g()Lcom/bytedance/sdk/openadsdk/core/model/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/s;->b:Lcom/bytedance/sdk/openadsdk/core/model/a;

    return-object v0
.end method
