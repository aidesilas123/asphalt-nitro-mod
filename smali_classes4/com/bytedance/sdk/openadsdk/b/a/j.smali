###### Class com.bytedance.sdk.openadsdk.b.a.j (com.bytedance.sdk.openadsdk.b.a.j)
.class public Lcom/bytedance/sdk/openadsdk/b/a/j;
.super Ljava/lang/Object;
.source "OverSeaEventUploadImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/component/e/a/b/c;


# instance fields
.field public a:Lcom/bytedance/sdk/openadsdk/core/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/p<",
            "Lcom/bytedance/sdk/openadsdk/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bytedance/sdk/openadsdk/b/a/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/a/c;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/b/a/j;Ljava/util/List;)Ljava/util/HashMap;
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/a/j;->d(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/b/a/j;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/b/e;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/a/j;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/b/e;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/b/e;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/b/a;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/b/e;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/a/j;->c(Ljava/util/List;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    return v0

    :cond_8
    iget p1, p2, Lcom/bytedance/sdk/openadsdk/b/e;->b:I

    const/16 p2, 0x190

    if-lt p1, p2, :cond_13

    const/16 p2, 0x1f4

    if-ge p1, p2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method private c(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/b/a;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_22

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_22

    :cond_a
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/a;->c()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_22

    const-string v0, "app_log_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_22
    :goto_22
    return v0
.end method

.method private d(Ljava/util/List;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/e/a/d/a;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/e/a/d/a;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/e/a/d/a;

    invoke-interface {v2}, Lcom/bytedance/sdk/component/e/a/d/a;->g()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_36

    const-string v4, "app_log_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_33

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_39
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/b/e;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/b/a;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/b/e;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->c()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    if-nez v0, :cond_10

    const/4 p1, 0x0

    return-object p1

    :cond_10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/o;->aj()Lcom/bytedance/sdk/openadsdk/core/settings/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/e;->af()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_41

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    invoke-virtual {v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/b/a/c;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/a/c;->a()Lorg/json/JSONObject;

    move-result-object v8

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/b/a/c;->a(Ljava/util/List;JLorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/b/a/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/b/e;

    move-result-object p1

    return-object p1

    :cond_41
    const/4 v1, 0x2

    if-ne v1, v0, :cond_83

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/b/a/c;->a()Lorg/json/JSONObject;

    move-result-object v10

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    invoke-virtual {v4, p1, v2}, Lcom/bytedance/sdk/openadsdk/b/a/c;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    const/4 v9, 0x1

    move-wide v6, v0

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/b/a/c;->a(Ljava/util/List;JLorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    invoke-virtual {v6, p1}, Lcom/bytedance/sdk/openadsdk/b/a/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/b/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/b/a/c;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    const/4 v9, 0x0

    move-wide v6, v0

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/b/a/c;->a(Ljava/util/List;JLorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/b/a/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/b/e;

    move-result-object p1

    return-object p1

    :cond_83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/a/c;->a()Lorg/json/JSONObject;

    move-result-object v8

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/b/a/c;->a(Ljava/util/List;JLorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->b:Lcom/bytedance/sdk/openadsdk/b/a/c;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/b/a/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/b/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;Lcom/bytedance/sdk/component/e/a/b/b;)V
    .registers 11
    .param p2    # Lcom/bytedance/sdk/component/e/a/b/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/e/a/d/a;",
            ">;",
            "Lcom/bytedance/sdk/component/e/a/b/b;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_73

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_73

    :cond_a
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/e/a/d/a;

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_30

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/a/j$1;

    const-string v3, "upload_ad_event"

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/b/a/j$1;-><init>(Lcom/bytedance/sdk/openadsdk/b/a/j;Ljava/lang/String;Ljava/util/List;Lcom/bytedance/sdk/component/e/a/b/b;Ljava/util/List;)V

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/aa;->b(Lcom/bytedance/sdk/component/g/h;I)V

    goto :goto_73

    :cond_30
    const/4 v1, 0x1

    if-ne v0, v1, :cond_73

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/e/a/d/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/e/a/d/a;->g()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/j/c/b$a;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/e/a/d/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/j/c/b$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_59
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/a/a;->e:Lcom/bytedance/sdk/openadsdk/b/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/a/b;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_73

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/a/j$2;

    const-string v3, "upload_stats_event"

    move-object v1, v0

    move-object v2, p0

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/b/a/j$2;-><init>(Lcom/bytedance/sdk/openadsdk/b/a/j;Ljava/lang/String;Ljava/util/List;Lcom/bytedance/sdk/component/e/a/b/b;Ljava/util/List;Ljava/util/List;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/aa;->b(Lcom/bytedance/sdk/component/g/h;I)V

    :cond_73
    :goto_73
    return-void
.end method

.method public b(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/b/e;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/j/c/b$a;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/b/e;"
        }
    .end annotation

    const-string v0, "stats_list"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    if-nez v1, :cond_c

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->c()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    :cond_c
    if-eqz p1, :cond_62

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_62

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/k;->a()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_62

    :cond_1b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_20
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/j/c/b$a;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/j/c/b$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_29

    :cond_3b
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string p1, "ts"

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "req_sign"

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5b} :catch_5b

    :catch_5b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/a/j;->a:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/b/e;

    move-result-object p1

    return-object p1

    :cond_62
    :goto_62
    const/4 p1, 0x0

    return-object p1
.end method
