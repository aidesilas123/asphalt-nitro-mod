###### Class com.bytedance.sdk.openadsdk.b.a.i (com.bytedance.sdk.openadsdk.b.a.i)
.class Lcom/bytedance/sdk/openadsdk/b/a/i;
.super Ljava/lang/Object;
.source "NetResponseWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/component/e/a/e/d;


# instance fields
.field private final a:Lcom/bytedance/sdk/component/f/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/f/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/a/i;->a:Lcom/bytedance/sdk/component/f/b;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/i;->a:Lcom/bytedance/sdk/component/f/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/b;->f()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/i;->a:Lcom/bytedance/sdk/component/f/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/b;->a()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/i;->a:Lcom/bytedance/sdk/component/f/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, ""

    return-object v0
.end method
