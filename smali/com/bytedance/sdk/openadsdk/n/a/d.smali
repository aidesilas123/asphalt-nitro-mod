###### Class com.bytedance.sdk.openadsdk.n.a.d (com.bytedance.sdk.openadsdk.n.a.d)
.class public Lcom/bytedance/sdk/openadsdk/n/a/d;
.super Ljava/lang/Object;
.source "PAGMRCEventManager.java"


# direct methods
.method public static a(Lcom/bytedance/sdk/openadsdk/core/model/q;Lcom/bytedance/sdk/openadsdk/n/a/a;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->aA()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/n/a/d$1;

    const-string v1, "mrc_report"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/n/a/d$1;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/q;Lcom/bytedance/sdk/openadsdk/n/a/a;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aa;->c(Lcom/bytedance/sdk/component/g/h;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.n.a.d.AnonymousClass1 (com.bytedance.sdk.openadsdk.n.a.d$1)
.class final Lcom/bytedance/sdk/openadsdk/n/a/d$1;
.super Lcom/bytedance/sdk/component/g/h;
.source "PAGMRCEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/n/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Lcom/bytedance/sdk/openadsdk/n/a/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/model/q;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/n/a/a;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/q;Lcom/bytedance/sdk/openadsdk/n/a/a;I)V
    .registers 5

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/n/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/n/a/d$1;->b:Lcom/bytedance/sdk/openadsdk/n/a/a;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/n/a/d$1;->c:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->az()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->bd()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->S()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/n/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/q;

    const-string v3, "show_urls"

    invoke-direct {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/q;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/g/b/c$b;)V

    goto :goto_28

    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)V

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/n/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/n/a/d$1;->b:Lcom/bytedance/sdk/openadsdk/n/a/a;

    if-eqz v2, :cond_4a

    :try_start_37
    const-string v3, "root_view"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/n/a/a;->a(Lcom/bytedance/sdk/openadsdk/n/a/a;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/n/a/d$1;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4a

    const-string v3, "dynamic_show_type"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4a
    .catchall {:try_start_37 .. :try_end_4a} :catchall_4a

    :catchall_4a
    :cond_4a
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/n/a/d$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/q;

    const-string v3, "mrc_show"

    invoke-static {v2, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/b/c;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
