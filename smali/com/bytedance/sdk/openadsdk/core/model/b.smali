###### Class com.bytedance.sdk.openadsdk.core.model.b (com.bytedance.sdk.openadsdk.core.model.b)
.class public Lcom/bytedance/sdk/openadsdk/core/model/b;
.super Ljava/lang/Object;
.source "AdLogInfoModel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/b;->c:I

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/model/b;)V
    .registers 3

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/b;->d()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_21

    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/b;->b()I

    move-result v0

    if-gez v0, :cond_21

    const/4 v1, -0x8

    if-ne v0, v1, :cond_13

    goto :goto_21

    :cond_13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/b;->a()Lcom/bytedance/sdk/openadsdk/j/b;

    const/4 v0, 0x0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/b;)V

    const-string p0, "rd_client_custom_error"

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/j/b;->a(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/j/a;)V

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/b;->b:I

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/b;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/b;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/b;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/b;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/b;->c:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/b;->c:I

    return v0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/b;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-object v0
.end method

.method public e()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/b;->d:Ljava/util/ArrayList;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.core.model.b.AnonymousClass1 (com.bytedance.sdk.openadsdk.core.model.b$1)
.class final Lcom/bytedance/sdk/openadsdk/core/model/b$1;
.super Ljava/lang/Object;
.source "AdLogInfoModel.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/j/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/b;->a(Lcom/bytedance/sdk/openadsdk/core/model/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/model/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/j/a/a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/b;->c()I

    move-result v1

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/b;->b()I

    move-result v1

    const-string v2, "err_code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "server_res_str"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/b;->e()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/b;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4e

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/b;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mate_unavailable_code_list"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4e
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rd_client_custom_error = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "AdLogInfoModel"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a/b;->b()Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object v1

    const-string v2, "rd_client_custom_error"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/model/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/b;->d()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(I)Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/j/a/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object v0

    return-object v0
.end method
