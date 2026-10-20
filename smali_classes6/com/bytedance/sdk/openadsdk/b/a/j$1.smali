###### Class com.bytedance.sdk.openadsdk.b.a.j.AnonymousClass1 (com.bytedance.sdk.openadsdk.b.a.j$1)
.class Lcom/bytedance/sdk/openadsdk/b/a/j$1;
.super Lcom/bytedance/sdk/component/g/h;
.source "OverSeaEventUploadImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/a/j;->a(Ljava/util/List;Lcom/bytedance/sdk/component/e/a/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/bytedance/sdk/component/e/a/b/b;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/b/a/j;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/b/a/j;Ljava/lang/String;Ljava/util/List;Lcom/bytedance/sdk/component/e/a/b/b;Ljava/util/List;)V
    .registers 6

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->d:Lcom/bytedance/sdk/openadsdk/b/a/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->b:Lcom/bytedance/sdk/component/e/a/b/b;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->c:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const-string v0, "OverSeaEventUploadImp"

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->d:Lcom/bytedance/sdk/openadsdk/b/a/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/b/a/j;->a(Lcom/bytedance/sdk/openadsdk/b/a/j;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_13

    goto :goto_1c

    :catchall_13
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1c
    if-nez v1, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->b:Lcom/bytedance/sdk/component/e/a/b/b;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/e/a/b/b;->a(Ljava/util/List;)V

    :cond_27
    return-void

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b6

    :try_start_2e
    sget-object v2, Lcom/bytedance/sdk/openadsdk/b/a/a;->d:Lcom/bytedance/sdk/openadsdk/b/a/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/a/b;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/component/e/a/d/a;

    invoke-interface {v5}, Lcom/bytedance/sdk/component/e/a/d/a;->g()Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/bytedance/sdk/openadsdk/b/a;

    invoke-interface {v5}, Lcom/bytedance/sdk/component/e/a/d/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/b/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_65
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->d:Lcom/bytedance/sdk/openadsdk/b/a/j;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/b/a/j;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/b/e;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->b:Lcom/bytedance/sdk/component/e/a/b/b;

    if-eqz v5, :cond_28

    if-eqz v4, :cond_28

    iget-boolean v5, v4, Lcom/bytedance/sdk/openadsdk/b/e;->d:Z

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->d:Lcom/bytedance/sdk/openadsdk/b/a/j;

    invoke-static {v6, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/a/j;->a(Lcom/bytedance/sdk/openadsdk/b/a/j;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/b/e;)Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_7d

    const/4 v5, 0x1

    :cond_7d
    new-instance v3, Lcom/bytedance/sdk/component/e/a/b/c/b;

    iget-boolean v8, v4, Lcom/bytedance/sdk/openadsdk/b/e;->a:Z

    iget v9, v4, Lcom/bytedance/sdk/openadsdk/b/e;->b:I

    iget-object v10, v4, Lcom/bytedance/sdk/openadsdk/b/e;->c:Ljava/lang/String;

    const-string v12, ""

    move-object v7, v3

    move v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/bytedance/sdk/component/e/a/b/c/b;-><init>(ZILjava/lang/String;ZLjava/lang/String;)V

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->c:Ljava/util/List;

    new-instance v8, Lcom/bytedance/sdk/component/e/a/b/c/a;

    invoke-direct {v8, v3, v2}, Lcom/bytedance/sdk/component/e/a/b/c/a;-><init>(Lcom/bytedance/sdk/component/e/a/b/c/b;Ljava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v4, Lcom/bytedance/sdk/openadsdk/b/e;->b:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_a2

    sget-object v2, Lcom/bytedance/sdk/openadsdk/b/a/a;->d:Lcom/bytedance/sdk/openadsdk/b/a/b;

    invoke-static {v2, v6}, Lcom/bytedance/sdk/openadsdk/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/a/b;Z)V

    goto :goto_28

    :cond_a2
    if-eqz v5, :cond_28

    sget-object v2, Lcom/bytedance/sdk/openadsdk/b/a/a;->d:Lcom/bytedance/sdk/openadsdk/b/a/b;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/a/b;Z)V
    :try_end_aa
    .catchall {:try_start_2e .. :try_end_aa} :catchall_ac

    goto/16 :goto_28

    :catchall_ac
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    :cond_b6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->b:Lcom/bytedance/sdk/component/e/a/b/b;

    if-eqz v0, :cond_bf

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/e/a/b/b;->a(Ljava/util/List;)V

    :cond_bf
    return-void
.end method
