###### Class com.fyber.inneractive.sdk.config.global.l (com.fyber.inneractive.sdk.config.global.l)
.class public Lcom/fyber/inneractive/sdk/config/global/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/config/global/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/l;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/fyber/inneractive/sdk/config/global/l;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/fyber/inneractive/sdk/config/global/l;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/config/global/l;-><init>()V

    const-string v1, "features"

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_cf

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/fyber/inneractive/sdk/config/global/q;

    invoke-direct {v5}, Lcom/fyber/inneractive/sdk/config/global/q;-><init>()V

    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/fyber/inneractive/sdk/config/global/q;->b:Ljava/lang/String;

    const-string v7, "params"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_37

    new-instance v10, Lcom/fyber/inneractive/sdk/config/global/o;

    invoke-direct {v10, v8}, Lcom/fyber/inneractive/sdk/config/global/o;-><init>(Lorg/json/JSONObject;)V

    iput-object v10, v5, Lcom/fyber/inneractive/sdk/config/global/p;->a:Lcom/fyber/inneractive/sdk/config/global/n;

    goto :goto_42

    :cond_37
    new-array v8, v9, [Ljava/lang/Object;

    iget-object v10, v5, Lcom/fyber/inneractive/sdk/config/global/q;->b:Ljava/lang/String;

    aput-object v10, v8, v2

    const-string v10, "RemoteFeature fromJson. feature %s has no params!"

    invoke-static {v10, v8}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_42
    const-string v8, "experiments"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_c2

    const/4 v8, 0x0

    :goto_4b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v8, v10, :cond_c2

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v11, Lcom/fyber/inneractive/sdk/config/global/b;

    invoke-direct {v11}, Lcom/fyber/inneractive/sdk/config/global/b;-><init>()V

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/fyber/inneractive/sdk/config/global/b;->a:Ljava/lang/String;

    const/16 v12, 0xa

    const-string v13, "perc"

    invoke-virtual {v10, v13, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v11, Lcom/fyber/inneractive/sdk/config/global/b;->b:I

    const-string v12, "variants"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v14, 0x0

    :goto_71
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_a3

    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    new-instance v2, Lcom/fyber/inneractive/sdk/config/global/k;

    invoke-direct {v2}, Lcom/fyber/inneractive/sdk/config/global/k;-><init>()V

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/fyber/inneractive/sdk/config/global/k;->b:Ljava/lang/String;

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/fyber/inneractive/sdk/config/global/k;->c:I

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_99

    new-instance v15, Lcom/fyber/inneractive/sdk/config/global/o;

    invoke-direct {v15, v9}, Lcom/fyber/inneractive/sdk/config/global/o;-><init>(Lorg/json/JSONObject;)V

    iput-object v15, v2, Lcom/fyber/inneractive/sdk/config/global/p;->a:Lcom/fyber/inneractive/sdk/config/global/n;

    :cond_99
    iget-object v9, v11, Lcom/fyber/inneractive/sdk/config/global/b;->c:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x1

    goto :goto_71

    :cond_a3
    const-string v2, "include"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v9, 0x1

    invoke-static {v11, v2, v9}, Lcom/fyber/inneractive/sdk/config/global/b;->a(Lcom/fyber/inneractive/sdk/config/global/b;Lorg/json/JSONObject;Z)V

    const-string v2, "exclude"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v10, 0x0

    invoke-static {v11, v2, v10}, Lcom/fyber/inneractive/sdk/config/global/b;->a(Lcom/fyber/inneractive/sdk/config/global/b;Lorg/json/JSONObject;Z)V

    iget-object v2, v5, Lcom/fyber/inneractive/sdk/config/global/q;->c:Ljava/util/Map;

    iget-object v12, v11, Lcom/fyber/inneractive/sdk/config/global/b;->a:Ljava/lang/String;

    invoke-interface {v2, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_4b

    :cond_c2
    const/4 v10, 0x0

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/config/global/l;->a:Ljava/util/Map;

    iget-object v4, v5, Lcom/fyber/inneractive/sdk/config/global/q;->b:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_cf
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/config/global/q;
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/l;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/config/global/q;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fyber/inneractive/sdk/config/global/l;

    if-eq v1, v0, :cond_f

    goto :goto_1a

    :cond_f
    check-cast p1, Lcom/fyber/inneractive/sdk/config/global/l;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/l;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/config/global/l;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/l;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/global/l;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "remoteConfig - features: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
