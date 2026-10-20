###### Class com.json.mediationsdk.demandOnly.m (com.ironsource.mediationsdk.demandOnly.m)
.class public Lcom/ironsource/mediationsdk/demandOnly/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/demandOnly/m$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field protected b:Lcom/ironsource/h0;

.field protected c:Lorg/json/JSONObject;

.field private d:Lcom/ironsource/mediationsdk/demandOnly/m$a;

.field private e:Ljava/util/Timer;

.field f:J

.field protected g:Ljava/lang/String;

.field protected h:Lorg/json/JSONObject;

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/lang/String;

.field private final k:Ljava/lang/Object;

.field private final l:Ljava/lang/Object;

.field protected final m:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;


# direct methods
.method public constructor <init>(Lcom/ironsource/h0;Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->k:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->l:Ljava/lang/Object;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->b:Lcom/ironsource/h0;

    invoke-virtual {p1}, Lcom/ironsource/h0;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->m:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1}, Lcom/ironsource/h0;->c()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->c:Lorg/json/JSONObject;

    :try_start_21
    const-string p2, "demandOnly"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_27} :catch_27

    :catch_27
    sget-object p1, Lcom/ironsource/mediationsdk/demandOnly/m$a;->a:Lcom/ironsource/mediationsdk/demandOnly/m$a;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->d:Lcom/ironsource/mediationsdk/demandOnly/m$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->e:Ljava/util/Timer;

    const-string p2, ""

    iput-object p2, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->h:Lorg/json/JSONObject;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a([Lcom/ironsource/mediationsdk/demandOnly/m$a;Lcom/ironsource/mediationsdk/demandOnly/m$a;)Lcom/ironsource/mediationsdk/demandOnly/m$a;
    .registers 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->d:Lcom/ironsource/mediationsdk/demandOnly/m$a;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->d:Lcom/ironsource/mediationsdk/demandOnly/m$a;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/demandOnly/m;->f(Lcom/ironsource/mediationsdk/demandOnly/m$a;)V

    :cond_14
    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->h:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Z)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->c:Lorg/json/JSONObject;

    const-string v1, "isOneFlow"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_2b

    :catch_8
    move-exception v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t set isOneFlow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ". Error: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :goto_2b
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->j:Ljava/lang/String;

    return-void
.end method

.method protected b(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/ironsource/d8;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v1

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v1

    invoke-virtual {v1, p5, p2, v0}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_37
    return-void
.end method

.method c(Ljava/util/TimerTask;)V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/demandOnly/m;->p()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->e:Ljava/util/Timer;

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->f:J

    invoke-virtual {v1, p1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method d(Lcom/ironsource/mediationsdk/demandOnly/m$a;)Z
    .registers 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->d:Lcom/ironsource/mediationsdk/demandOnly/m$a;

    if-ne v1, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    monitor-exit v0

    return p1

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method e(Lcom/ironsource/mediationsdk/demandOnly/m$a;Lcom/ironsource/mediationsdk/demandOnly/m$a;)Z
    .registers 5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->d:Lcom/ironsource/mediationsdk/demandOnly/m$a;

    if-ne v1, p1, :cond_d

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/demandOnly/m;->f(Lcom/ironsource/mediationsdk/demandOnly/m$a;)V

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_d
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public f()Lcom/ironsource/h0;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->b:Lcom/ironsource/h0;

    return-object v0
.end method

.method f(Lcom/ironsource/mediationsdk/demandOnly/m$a;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DemandOnlySmash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->b:Lcom/ironsource/h0;

    invoke-virtual {v1}, Lcom/ironsource/h0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->d:Lcom/ironsource/mediationsdk/demandOnly/m$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_31
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->d:Lcom/ironsource/mediationsdk/demandOnly/m$a;

    monitor-exit v0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->b:Lcom/ironsource/h0;

    invoke-virtual {v0}, Lcom/ironsource/h0;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->b:Lcom/ironsource/h0;

    invoke-virtual {v0}, Lcom/ironsource/h0;->d()I

    move-result v0

    return v0
.end method

.method public j()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    const-string v1, "providerAdapterVersion"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_91

    const-string v3, ""

    if-eqz v2, :cond_12

    :try_start_d
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_12
    move-object v2, v3

    :goto_13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "providerSDKVersion"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getCoreSDKVersion()Ljava/lang/String;

    move-result-object v3

    :cond_20
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "spId"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->b:Lcom/ironsource/h0;

    invoke-virtual {v2}, Lcom/ironsource/h0;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "provider"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->b:Lcom/ironsource/h0;

    invoke-virtual {v2}, Lcom/ironsource/h0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isDemandOnly"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "instanceType"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->b:Lcom/ironsource/h0;

    invoke-virtual {v3}, Lcom/ironsource/h0;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    const-string v1, "auctionId"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_72

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_72

    const-string v1, "genericParams"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->h:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_81

    const-string v1, "dynamicDemandSource"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_81
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/demandOnly/m;->o()Z

    move-result v1

    if-eqz v1, :cond_b5

    const-string v1, "isOneFlow"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_90} :catch_91

    goto :goto_b5

    :catch_91
    move-exception v1

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProviderEventData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/demandOnly/m;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b5
    :goto_b5
    return-object v0
.end method

.method k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->d:Lcom/ironsource/mediationsdk/demandOnly/m$a;

    if-nez v0, :cond_7

    const-string v0, "null"

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->b:Lcom/ironsource/h0;

    invoke-virtual {v0}, Lcom/ironsource/h0;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->i:Ljava/util/List;

    return-object v0
.end method

.method public n()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->b:Lcom/ironsource/h0;

    invoke-virtual {v0}, Lcom/ironsource/h0;->j()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .registers 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->c:Lorg/json/JSONObject;

    const-string v1, "isOneFlow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method p()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->e:Ljava/util/Timer;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/m;->e:Ljava/util/Timer;

    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method
