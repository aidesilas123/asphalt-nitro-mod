###### Class com.fyber.inneractive.sdk.config.e0 (com.fyber.inneractive.sdk.config.e0)
.class public Lcom/fyber/inneractive/sdk/config/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/util/h0$a;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/fyber/inneractive/sdk/config/enums/Vendor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/config/e0;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/config/e0;->b:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/config/e0;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/e0;->a:Ljava/lang/Integer;

    const-string v2, "pausePct"

    invoke-static {v0, v2, v1}, Lcom/fyber/inneractive/sdk/util/h0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/e0;->b:Ljava/lang/Integer;

    const-string v2, "playPct"

    invoke-static {v0, v2, v1}, Lcom/fyber/inneractive/sdk/util/h0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/config/e0;->c:Ljava/util/Set;

    if-eqz v2, :cond_32

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/config/enums/Vendor;

    if-eqz v3, :cond_20

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_20

    :cond_32
    const-string v2, "vendor"

    invoke-static {v0, v2, v1}, Lcom/fyber/inneractive/sdk/util/h0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/e0;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/fyber/inneractive/sdk/config/enums/Vendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/e0;->c:Ljava/util/Set;

    return-object v0
.end method
