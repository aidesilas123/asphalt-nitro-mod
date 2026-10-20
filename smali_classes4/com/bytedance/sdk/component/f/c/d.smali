###### Class com.bytedance.sdk.component.f.c.d (com.bytedance.sdk.component.f.c.d)
.class public Lcom/bytedance/sdk/component/f/c/d;
.super Ljava/lang/Object;
.source "TNCConfigHandler.java"


# static fields
.field private static final d:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/sdk/component/f/c/c;

.field private c:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/f/c/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/d;->c:Z

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/c/d;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/f/c/d;->c:Z

    iput p3, p0, Lcom/bytedance/sdk/component/f/c/d;->e:I

    new-instance p1, Lcom/bytedance/sdk/component/f/c/c;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/f/c/c;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/c/d;->b:Lcom/bytedance/sdk/component/f/c/c;

    return-void
.end method

.method private b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/f/c/c;
    .registers 11

    const-string v0, "host_replace_map"

    const-string v1, "local_host_filter"

    const-string v2, "probe_enable"

    const-string v3, "local_enable"

    const/4 v4, 0x0

    :try_start_9
    new-instance v5, Lcom/bytedance/sdk/component/f/c/c;

    invoke-direct {v5}, Lcom/bytedance/sdk/component/f/c/c;-><init>()V

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_21

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x1

    :goto_1f
    iput-boolean v3, v5, Lcom/bytedance/sdk/component/f/c/c;->a:Z

    :cond_21
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2e

    const/4 v7, 0x0

    :cond_2e
    iput-boolean v7, v5, Lcom/bytedance/sdk/component/f/c/c;->b:Z

    :cond_30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_61

    const/4 v3, 0x0

    :goto_46
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_61

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_57

    goto :goto_5e

    :cond_57
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_61
    iput-object v2, v5, Lcom/bytedance/sdk/component/f/c/c;->c:Ljava/util/Map;

    goto :goto_66

    :cond_64
    iput-object v4, v5, Lcom/bytedance/sdk/component/f/c/c;->c:Ljava/util/Map;

    :goto_66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_a0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_7f
    :goto_7f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7f

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9c

    goto :goto_7f

    :cond_9c
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    :cond_a0
    iput-object v1, v5, Lcom/bytedance/sdk/component/f/c/c;->d:Ljava/util/Map;

    goto :goto_a5

    :cond_a3
    iput-object v4, v5, Lcom/bytedance/sdk/component/f/c/c;->d:Ljava/util/Map;

    :goto_a5
    const-string v0, "req_to_cnt"

    iget v1, v5, Lcom/bytedance/sdk/component/f/c/c;->e:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/component/f/c/c;->e:I

    const-string v0, "req_to_api_cnt"

    iget v1, v5, Lcom/bytedance/sdk/component/f/c/c;->f:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/component/f/c/c;->f:I

    const-string v0, "req_to_ip_cnt"

    iget v1, v5, Lcom/bytedance/sdk/component/f/c/c;->g:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/component/f/c/c;->g:I

    const-string v0, "req_err_cnt"

    iget v1, v5, Lcom/bytedance/sdk/component/f/c/c;->h:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/component/f/c/c;->h:I

    const-string v0, "req_err_api_cnt"

    iget v1, v5, Lcom/bytedance/sdk/component/f/c/c;->i:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/component/f/c/c;->i:I

    const-string v0, "req_err_ip_cnt"

    iget v1, v5, Lcom/bytedance/sdk/component/f/c/c;->j:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/component/f/c/c;->j:I

    const-string v0, "update_interval"

    iget v1, v5, Lcom/bytedance/sdk/component/f/c/c;->k:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/component/f/c/c;->k:I

    const-string v0, "update_random_range"

    iget v1, v5, Lcom/bytedance/sdk/component/f/c/c;->l:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bytedance/sdk/component/f/c/c;->l:I

    const-string v0, "http_code_black"

    iget-object v1, v5, Lcom/bytedance/sdk/component/f/c/c;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/bytedance/sdk/component/f/c/c;->m:Ljava/lang/String;
    :try_end_ff
    .catchall {:try_start_9 .. :try_end_ff} :catchall_100

    return-object v5

    :catchall_100
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v4
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/d;->c:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/d;->a:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/component/f/c/d;->e:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/f/c/e;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "tnc_config_str"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "TNCConfigHandler"

    if-eqz v1, :cond_2f

    const-string v0, "loadLocalConfig: no existed"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    :try_start_2f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/f/c/d;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/f/c/c;

    move-result-object v0

    if-eqz v0, :cond_3c

    iput-object v0, p0, Lcom/bytedance/sdk/component/f/c/d;->b:Lcom/bytedance/sdk/component/f/c/c;

    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocalConfig: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4b

    const-string v0, "null"

    goto :goto_4f

    :cond_4b
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/c;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_2f .. :try_end_59} :catchall_5a

    goto :goto_76

    :catchall_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocalConfig: except: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_76
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 12

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/f/c/d;->c:Z

    if-nez v0, :cond_c

    const-string p1, "TNCConfigHandler"

    const-string v0, "handleConfigChanged: no mainProc"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/f/c/d;->e:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/f/c/e;->e()V

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1d
    const-string v3, "ttnet_url_dispatcher_enabled"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    const-string v4, "ttnet_dispatch_actions"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v6

    iget v7, p0, Lcom/bytedance/sdk/component/f/c/d;->e:I

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/f/c/e;->c()Z

    move-result v6

    if-eqz v6, :cond_aa

    if-eqz v3, :cond_aa

    if-eqz v4, :cond_aa

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_49
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_77

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "param"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "service_name"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "idc_selection"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    const-string v8, "strategy_info"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    :cond_77
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_aa

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_96
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_96

    :cond_aa
    const-string v3, "tnc_config"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_bc

    if-nez v5, :cond_bc

    const-string v3, "TNCConfigHandler"

    const-string v4, " tnc host_replace_map config is null"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/f/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d0

    :cond_bc
    if-nez p1, :cond_c9

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "host_replace_map"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d0

    :cond_c9
    if-eqz v5, :cond_d0

    const-string v3, "host_replace_map"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d0
    :goto_d0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/f/c/d;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/f/c/c;

    move-result-object v3

    const-string v4, "TNCConfigHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConfigChanged, newConfig: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_e5

    const-string v6, "null"

    goto :goto_e9

    :cond_e5
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/f/c/c;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_e9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_1d .. :try_end_f3} :catchall_15b

    if-nez v3, :cond_125

    sget-object v4, Lcom/bytedance/sdk/component/f/c/d;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_f8
    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/d;->a:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v3

    iget v5, p0, Lcom/bytedance/sdk/component/f/c/d;->e:I

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/f/c/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "tnc_config_str"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/f/c/d;->a:Landroid/content/Context;

    iget v2, p0, Lcom/bytedance/sdk/component/f/c/d;->e:I

    invoke-static {p1, v1, v0, v2}, Lcom/bytedance/sdk/component/f/d/d;->a(Landroid/content/Context;ILjava/lang/String;I)V

    monitor-exit v4

    return-void

    :catchall_122
    move-exception p1

    monitor-exit v4
    :try_end_124
    .catchall {:try_start_f8 .. :try_end_124} :catchall_122

    throw p1

    :cond_125
    :try_start_125
    iput-object v3, p0, Lcom/bytedance/sdk/component/f/c/d;->b:Lcom/bytedance/sdk/component/f/c/c;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_12b
    .catchall {:try_start_125 .. :try_end_12b} :catchall_15b

    sget-object v3, Lcom/bytedance/sdk/component/f/c/d;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_12e
    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/d;->a:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/component/f/c/d;->e:I

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/f/c/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "tnc_config_str"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/d;->a:Landroid/content/Context;

    iget v2, p0, Lcom/bytedance/sdk/component/f/c/d;->e:I

    invoke-static {v0, v1, p1, v2}, Lcom/bytedance/sdk/component/f/d/d;->a(Landroid/content/Context;ILjava/lang/String;I)V

    monitor-exit v3

    goto :goto_192

    :catchall_158
    move-exception p1

    monitor-exit v3
    :try_end_15a
    .catchall {:try_start_12e .. :try_end_15a} :catchall_158

    throw p1

    :catchall_15b
    move-exception p1

    :try_start_15c
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/bytedance/sdk/component/f/c/c;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/f/c/c;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/f/c/d;->b:Lcom/bytedance/sdk/component/f/c/c;
    :try_end_166
    .catchall {:try_start_15c .. :try_end_166} :catchall_196

    sget-object p1, Lcom/bytedance/sdk/component/f/c/d;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_169
    iget-object v3, p0, Lcom/bytedance/sdk/component/f/c/d;->a:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/component/f/c/d;->e:I

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/f/c/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "tnc_config_str"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/bytedance/sdk/component/f/c/d;->a:Landroid/content/Context;

    iget v3, p0, Lcom/bytedance/sdk/component/f/c/d;->e:I

    invoke-static {v2, v1, v0, v3}, Lcom/bytedance/sdk/component/f/d/d;->a(Landroid/content/Context;ILjava/lang/String;I)V

    monitor-exit p1

    :goto_192
    return-void

    :catchall_193
    move-exception v0

    monitor-exit p1
    :try_end_195
    .catchall {:try_start_169 .. :try_end_195} :catchall_193

    throw v0

    :catchall_196
    move-exception p1

    sget-object v3, Lcom/bytedance/sdk/component/f/c/d;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_19a
    iget-object v4, p0, Lcom/bytedance/sdk/component/f/c/d;->a:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/sdk/component/f/c/g;->a()Lcom/bytedance/sdk/component/f/c/g;

    move-result-object v5

    iget v6, p0, Lcom/bytedance/sdk/component/f/c/d;->e:I

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/component/f/c/g;->a(I)Lcom/bytedance/sdk/component/f/c/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/f/c/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "tnc_config_str"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/bytedance/sdk/component/f/c/d;->a:Landroid/content/Context;

    iget v4, p0, Lcom/bytedance/sdk/component/f/c/d;->e:I

    invoke-static {v2, v1, v0, v4}, Lcom/bytedance/sdk/component/f/d/d;->a(Landroid/content/Context;ILjava/lang/String;I)V

    monitor-exit v3
    :try_end_1c3
    .catchall {:try_start_19a .. :try_end_1c3} :catchall_1c4

    throw p1

    :catchall_1c4
    move-exception p1

    :try_start_1c5
    monitor-exit v3
    :try_end_1c6
    .catchall {:try_start_1c5 .. :try_end_1c6} :catchall_1c4

    throw p1
.end method

.method public b()V
    .registers 5

    const-string v0, "TNCConfigHandler"

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/component/f/c/d;->a:Landroid/content/Context;

    const/4 v2, 0x1

    iget v3, p0, Lcom/bytedance/sdk/component/f/c/d;->e:I

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/component/f/d/d;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v1, "loadLocalConfigForOtherProcess, data empty"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/f/c/d;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/f/c/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocalConfigForOtherProcess, config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_2f

    const-string v3, "null"

    goto :goto_33

    :cond_2f
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/f/c/c;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5b

    iput-object v1, p0, Lcom/bytedance/sdk/component/f/c/d;->b:Lcom/bytedance/sdk/component/f/c/c;
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_42

    goto :goto_5b

    :catchall_42
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLocalConfigForOtherProcess, except: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/f/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public c()Lcom/bytedance/sdk/component/f/c/c;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/f/c/d;->b:Lcom/bytedance/sdk/component/f/c/c;

    return-object v0
.end method
