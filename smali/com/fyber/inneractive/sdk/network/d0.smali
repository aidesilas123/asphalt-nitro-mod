###### Class com.fyber.inneractive.sdk.network.d0 (com.fyber.inneractive.sdk.network.d0)
.class public Lcom/fyber/inneractive/sdk/network/d0;
.super Lcom/fyber/inneractive/sdk/network/f0;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/network/f0<",
        "Lcom/fyber/inneractive/sdk/response/e;",
        ">;",
        "Lcom/fyber/inneractive/sdk/network/n;"
    }
.end annotation


# instance fields
.field public final r:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

.field public s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/StringBuffer;

.field public final u:Lcom/fyber/inneractive/sdk/serverapi/c;

.field public v:Lcom/fyber/inneractive/sdk/dv/g;

.field public w:Z

.field public x:Lcom/fyber/inneractive/sdk/network/timeouts/request/a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/w;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/config/global/s;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/w<",
            "Lcom/fyber/inneractive/sdk/response/e;",
            ">;",
            "Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;",
            "Lcom/fyber/inneractive/sdk/config/global/s;",
            ")V"
        }
    .end annotation

    new-instance v3, Lcom/fyber/inneractive/sdk/serverapi/b;

    invoke-direct {v3, p3}, Lcom/fyber/inneractive/sdk/serverapi/b;-><init>(Lcom/fyber/inneractive/sdk/config/global/s;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/network/x;->a()Lcom/fyber/inneractive/sdk/network/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/network/x;->b()Lcom/fyber/inneractive/sdk/network/g;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/network/d0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/serverapi/c;Lcom/fyber/inneractive/sdk/network/g;Lcom/fyber/inneractive/sdk/config/global/s;)V

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/w;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/serverapi/c;Lcom/fyber/inneractive/sdk/network/g;Lcom/fyber/inneractive/sdk/config/global/s;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/w<",
            "Lcom/fyber/inneractive/sdk/response/e;",
            ">;",
            "Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;",
            "Lcom/fyber/inneractive/sdk/serverapi/c;",
            "Lcom/fyber/inneractive/sdk/network/g;",
            "Lcom/fyber/inneractive/sdk/config/global/s;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p4, p5}, Lcom/fyber/inneractive/sdk/network/f0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Lcom/fyber/inneractive/sdk/network/g;Lcom/fyber/inneractive/sdk/config/global/s;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/d0;->v:Lcom/fyber/inneractive/sdk/dv/g;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/network/d0;->w:Z

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/fyber/inneractive/sdk/network/f0;->q:Z

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/network/d0;->r:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/network/d0;->u:Lcom/fyber/inneractive/sdk/serverapi/c;

    if-eqz p2, :cond_29

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getSpotId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/fyber/inneractive/sdk/util/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/fyber/inneractive/sdk/network/timeouts/request/c;

    invoke-direct {p4}, Lcom/fyber/inneractive/sdk/network/timeouts/request/c;-><init>()V

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/flow/h0;->getMediationName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p3, p2, p5, p1}, Lcom/fyber/inneractive/sdk/network/timeouts/request/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/inneractive/sdk/config/global/s;Z)Lcom/fyber/inneractive/sdk/network/timeouts/request/a;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/d0;->x:Lcom/fyber/inneractive/sdk/network/timeouts/request/a;

    :cond_29
    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/network/j;Ljava/util/Map;I)Lcom/fyber/inneractive/sdk/network/b0;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I)",
            "Lcom/fyber/inneractive/sdk/network/b0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p3, 0x0

    if-eqz p2, :cond_3a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_10

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_38
    iput-object v0, p0, Lcom/fyber/inneractive/sdk/network/d0;->s:Ljava/util/Map;

    :cond_3a
    iget-object p1, p1, Lcom/fyber/inneractive/sdk/network/j;->c:Ljava/io/InputStream;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lcom/fyber/inneractive/sdk/network/f0;->d(J)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    const-string v0, "%s : NetworkRequestAd : set start read timestamp"

    invoke-static {v0, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_64

    :try_start_54
    invoke-static {p1, p3}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/io/InputStream;Z)Ljava/lang/StringBuffer;

    move-result-object p1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_58} :catch_59

    goto :goto_62

    :catch_59
    move-exception p1

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "failed create response builder in network request ad"

    invoke-static {v1, p1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object p1, p2

    :goto_62
    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/d0;->t:Ljava/lang/StringBuffer;

    :cond_64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/network/d0;->c(J)V

    new-instance p1, Lcom/fyber/inneractive/sdk/network/b0;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/network/b0;-><init>()V

    :try_start_70
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/d0;->s:Ljava/util/Map;

    if-eqz v0, :cond_8f

    sget-object v1, Lcom/fyber/inneractive/sdk/network/m;->RETURNED_AD_TYPE:Lcom/fyber/inneractive/sdk/network/m;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/network/m;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8f

    goto :goto_90

    :cond_8f
    move-object v0, p2

    :goto_90
    if-eqz v0, :cond_97

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_98

    :cond_97
    const/4 v0, 0x6

    :goto_98
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/d0;->v:Lcom/fyber/inneractive/sdk/dv/g;

    invoke-virtual {p0, v0, p0, p2, v1}, Lcom/fyber/inneractive/sdk/network/f0;->a(ILcom/fyber/inneractive/sdk/network/n;Lcom/fyber/inneractive/sdk/response/j;Lcom/fyber/inneractive/sdk/dv/g;)Lcom/fyber/inneractive/sdk/response/e;

    move-result-object p2

    iput-object p2, p1, Lcom/fyber/inneractive/sdk/network/b0;->a:Ljava/lang/Object;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_a0} :catch_a1

    return-object p1

    :catch_a1
    move-exception p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/network/d0;->c(J)V

    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "failed parse ad network request"

    invoke-static {p3, p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance p2, Lcom/fyber/inneractive/sdk/network/a0;

    invoke-direct {p2, p1}, Lcom/fyber/inneractive/sdk/network/a0;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/network/j;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/network/d0;->n()Lcom/fyber/inneractive/sdk/network/t0;

    move-result-object v1

    iget v1, v1, Lcom/fyber/inneractive/sdk/network/t0;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/network/d0;->n()Lcom/fyber/inneractive/sdk/network/t0;

    move-result-object v1

    iget v1, v1, Lcom/fyber/inneractive/sdk/network/t0;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s: NetworkRequestAd Ad request execution started, timeouts(connection: %d read: %d)"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/network/f0;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/network/j;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 17

    move-object/from16 v0, p0

    sget v1, Lcom/fyber/inneractive/sdk/config/f;->a:I

    const-string v1, "ia.testEnvironmentConfiguration.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->i:Lcom/fyber/inneractive/sdk/config/s;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/config/s;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_28
    const-string v2, "clientRequestEnhancedXmlAd"

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/config/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2e
    new-instance v2, Lcom/fyber/inneractive/sdk/network/e0;

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/network/d0;->r:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/network/d0;->u:Lcom/fyber/inneractive/sdk/serverapi/c;

    invoke-direct {v2, v3, v4}, Lcom/fyber/inneractive/sdk/network/e0;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/serverapi/c;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v2, Lcom/fyber/inneractive/sdk/network/e0;->c:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "fromSDK"

    invoke-virtual {v2, v7, v6}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ia.testEnvironmentConfiguration.number"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "po"

    invoke-virtual {v2, v7, v6}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/p;->a()Z

    move-result v6

    xor-int/2addr v6, v5

    const/4 v7, 0x0

    if-nez v6, :cond_64

    sget-object v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-boolean v6, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->r:Z

    if-eqz v6, :cond_62

    goto :goto_64

    :cond_62
    const/4 v6, 0x0

    goto :goto_65

    :cond_64
    :goto_64
    const/4 v6, 0x1

    :goto_65
    const-string v8, "0"

    const-string v9, "1"

    if-eqz v6, :cond_6d

    move-object v6, v9

    goto :goto_6e

    :cond_6d
    move-object v6, v8

    :goto_6e
    const-string v10, "secure"

    invoke-virtual {v2, v10, v6}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getSpotId()Ljava/lang/String;

    move-result-object v6

    const-string v10, "spotid"

    invoke-virtual {v2, v10, v6}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ia.testEnvironmentConfiguration.chosenUnitId"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_94

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getSelectedUnitConfig()Lcom/fyber/inneractive/sdk/config/b0;

    move-result-object v6

    if-nez v6, :cond_8c

    const/4 v6, 0x0

    goto :goto_94

    :cond_8c
    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getSelectedUnitConfig()Lcom/fyber/inneractive/sdk/config/b0;

    move-result-object v6

    check-cast v6, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/config/a0;->a:Ljava/lang/String;

    :cond_94
    :goto_94
    const-string v11, "uid"

    invoke-virtual {v2, v11, v6}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v11, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->o:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, "med"

    const/4 v13, 0x2

    if-nez v11, :cond_ba

    new-array v11, v13, [Ljava/lang/Object;

    iget-object v14, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->m:Ljava/lang/String;

    aput-object v14, v11, v7

    iget-object v14, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->o:Ljava/lang/String;

    aput-object v14, v11, v5

    const-string v14, "%s_%s"

    invoke-static {v14, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v12, v11}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    :cond_ba
    iget-object v11, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->m:Ljava/lang/String;

    invoke-virtual {v2, v12, v11}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_bf
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v11, 0x174

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "f"

    invoke-virtual {v2, v12, v11}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v4, Lcom/fyber/inneractive/sdk/serverapi/b;

    sget-object v11, Lcom/fyber/inneractive/sdk/serverapi/b;->d:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v14

    const-string v15, ","

    if-nez v14, :cond_e2

    invoke-static {v15, v11}, Lcom/fyber/inneractive/sdk/util/l;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "protocols"

    invoke-virtual {v2, v14, v11}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    sget-object v11, Lcom/fyber/inneractive/sdk/serverapi/b;->e:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_f3

    invoke-static {v15, v11}, Lcom/fyber/inneractive/sdk/util/l;->b(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "mimes"

    invoke-virtual {v2, v14, v11}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f3
    sget-object v11, Lcom/fyber/inneractive/sdk/serverapi/b;->c:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_104

    invoke-static {v15, v11}, Lcom/fyber/inneractive/sdk/util/l;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "api"

    invoke-virtual {v2, v14, v11}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_104
    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->isCurrentUserAChild()Z

    move-result v11

    if-nez v11, :cond_115

    iget-object v11, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->j:Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig;

    invoke-virtual {v11}, Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig;->getZipCode()Ljava/lang/String;

    move-result-object v11

    const-string v14, "zip"

    invoke-virtual {v2, v14, v11}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_115
    iget-object v11, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->j:Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig;

    invoke-virtual {v11}, Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig;->getAge()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v14, "a"

    invoke-virtual {v2, v14, v11}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->j:Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig;

    invoke-virtual {v11}, Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig;->getGender()Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig$Gender;

    move-result-object v11

    sget-object v14, Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig$Gender;->MALE:Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig$Gender;

    invoke-virtual {v14, v11}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v10, "g"

    if-eqz v14, :cond_13a

    const-string v11, "m"

    invoke-virtual {v2, v10, v11}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_145

    :cond_13a
    sget-object v14, Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig$Gender;->FEMALE:Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig$Gender;

    invoke-virtual {v14, v11}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_145

    invoke-virtual {v2, v10, v12}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_145
    :goto_145
    iget-object v10, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->k:Ljava/lang/String;

    const-string v11, "k"

    invoke-virtual {v2, v11, v10}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "t"

    invoke-virtual {v2, v11, v10}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "2.2.0"

    invoke-virtual {v4, v10}, Lcom/fyber/inneractive/sdk/serverapi/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "v"

    invoke-virtual {v2, v11, v10}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->D:Lcom/fyber/inneractive/sdk/config/d;

    invoke-virtual {v10}, Lcom/fyber/inneractive/sdk/config/d;->a()Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_17a

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_174

    move-object v10, v9

    goto :goto_175

    :cond_174
    move-object v10, v8

    :goto_175
    const-string v11, "gdpr_privacy_consent"

    invoke-virtual {v2, v11, v10}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17a
    iget-object v10, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->D:Lcom/fyber/inneractive/sdk/config/d;

    if-eqz v10, :cond_1a5

    sget-object v11, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    if-nez v11, :cond_184

    const/4 v10, 0x0

    goto :goto_186

    :cond_184
    iget-object v10, v10, Lcom/fyber/inneractive/sdk/config/d;->f:Ljava/lang/Boolean;

    :goto_186
    if-eqz v10, :cond_194

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_18f

    move-object v8, v9

    :cond_18f
    const-string v10, "lgpd_consent"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_194
    iget-object v8, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->D:Lcom/fyber/inneractive/sdk/config/d;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/config/d;->g:Ljava/lang/Boolean;

    if-eqz v8, :cond_1a5

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1a5

    const-string v8, "coppaApplies"

    invoke-virtual {v2, v8, v9}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a5
    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->isCurrentUserAChild()Z

    move-result v8

    if-nez v8, :cond_1c9

    const-string v8, "ia.testEnvironmentConfiguration.device"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/l;->b()Z

    move-result v10

    if-eqz v10, :cond_1ba

    const-string v10, "amazonId"

    goto :goto_1bc

    :cond_1ba
    const-string v10, "aaid"

    :goto_1bc
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1c6

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/l;->a()Ljava/lang/String;

    move-result-object v8

    :cond_1c6
    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c9
    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->isCurrentUserAChild()Z

    move-result v8

    if-nez v8, :cond_1dc

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/l;->c()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    const-string v10, "dnt"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1dc
    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/serverapi/b;->b()Ljava/lang/String;

    move-result-object v8

    const-string v10, "dml"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/l;->e()I

    move-result v8

    invoke-static {v8}, Lcom/fyber/inneractive/sdk/util/l;->c(I)I

    move-result v8

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/l;->d()I

    move-result v10

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/util/l;->c(I)I

    move-result v10

    if-lez v8, :cond_20b

    if-lez v10, :cond_20b

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v11, "w"

    invoke-virtual {v2, v11, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "h"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20b
    invoke-static {}, Lcom/fyber/inneractive/sdk/util/l;->c()I

    move-result v8

    if-ne v8, v5, :cond_214

    const-string v8, "p"

    goto :goto_21b

    :cond_214
    if-ne v8, v13, :cond_219

    const-string v8, "l"

    goto :goto_21b

    :cond_219
    const-string v8, "u"

    :goto_21b
    const-string v10, "o"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->isCurrentUserAChild()Z

    move-result v8

    if-nez v8, :cond_255

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/j;->g()Ljava/lang/String;

    move-result-object v8

    const-string v10, "ciso"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/serverapi/b;->c()Ljava/lang/String;

    move-result-object v8

    const-string v10, "mcc"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/serverapi/b;->d()Ljava/lang/String;

    move-result-object v8

    const-string v10, "mnc"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/f0;->e()Lcom/fyber/inneractive/sdk/util/f0;

    move-result-object v8

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/util/f0;->key:Ljava/lang/String;

    const-string v10, "nt"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/serverapi/b;->a()Ljava/lang/String;

    move-result-object v8

    const-string v10, "crn"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_255
    const-string v8, "os"

    const-string v10, "Android"

    invoke-virtual {v2, v8, v10}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->p:Ljava/lang/String;

    const-string v10, "lng"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->q:Ljava/util/List;

    if-eqz v8, :cond_276

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_276

    invoke-static {v15, v8}, Lcom/fyber/inneractive/sdk/util/l;->b(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "in_lng"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_276
    sget-object v8, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "bid"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/serverapi/b;->f()Ljava/lang/String;

    move-result-object v8

    const-string v10, "appv"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->D:Lcom/fyber/inneractive/sdk/config/d;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    if-nez v10, :cond_295

    const/4 v8, 0x0

    goto :goto_297

    :cond_295
    iget-object v8, v8, Lcom/fyber/inneractive/sdk/config/d;->b:Ljava/lang/String;

    :goto_297
    const-string v10, "gdpr_consent_data"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->D:Lcom/fyber/inneractive/sdk/config/d;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    if-nez v10, :cond_2a7

    const/4 v8, 0x0

    goto :goto_2a9

    :cond_2a7
    iget-object v8, v8, Lcom/fyber/inneractive/sdk/config/d;->e:Ljava/lang/String;

    :goto_2a9
    const-string v10, "us_privacy"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v8, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->l:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    const-string v10, "mute_video"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v10, "osv"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->E:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/ignite/c;->c:Ljava/lang/String;

    const-string v10, "ignitep"

    invoke-virtual {v2, v10, v8}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->E:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/ignite/c;->d:Ljava/lang/String;

    const-string v8, "ignitev"

    invoke-virtual {v2, v8, v6}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getSpotId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lcom/fyber/inneractive/sdk/serverapi/b;->a(Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_302

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e6

    :cond_302
    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->isCurrentUserAChild()Z

    move-result v3

    if-eqz v3, :cond_30d

    const-string v3, "childMode"

    invoke-virtual {v2, v3, v9}, Lcom/fyber/inneractive/sdk/network/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30d
    iget-object v2, v2, Lcom/fyber/inneractive/sdk/network/e0;->c:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_31d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_350

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v2, :cond_32e

    const-string v2, "?"

    goto :goto_330

    :cond_32e
    const-string v2, "&"

    :goto_330
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_31d

    :cond_350
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/fyber/inneractive/sdk/network/d0;->w:Z

    if-nez v2, :cond_36a

    sget v2, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    new-array v2, v13, [Ljava/lang/Object;

    const-string v3, "AD_REQUEST"

    aput-object v3, v2, v7

    aput-object v1, v2, v5

    const-string v3, "%s %s"

    const/4 v4, 0x0

    invoke-static {v5, v4, v3, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v5, v0, Lcom/fyber/inneractive/sdk/network/d0;->w:Z

    :cond_36a
    return-object v1
.end method

.method public a(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/fyber/inneractive/sdk/network/f0;->a(J)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/network/f0;->y()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "%s : NetworkRequestAd : set end connection timestamp, total execution time: %d"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/fyber/inneractive/sdk/network/f0;->b(J)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "%s : NetworkRequestAd : set start connection timestamp"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/fyber/inneractive/sdk/network/f0;->c(J)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/network/f0;->y()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "%s : NetworkRequestAd : set end read timestamp, total execution time: %d"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .registers 5

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/network/f0;->d()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s : NetworkRequestAd cancel by timeout - resolve request with no fill"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/network/f0;->a:Z

    new-instance v0, Lcom/fyber/inneractive/sdk/network/s0;

    const/16 v1, 0xcc

    const-string v2, "no fill"

    invoke-direct {v0, v1, v2}, Lcom/fyber/inneractive/sdk/network/s0;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/fyber/inneractive/sdk/network/f0;->a(Ljava/lang/Object;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public e()Ljava/lang/StringBuffer;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/d0;->t:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public h()I
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/d0;->x:Lcom/fyber/inneractive/sdk/network/timeouts/request/a;

    iget v0, v0, Lcom/fyber/inneractive/sdk/network/timeouts/a;->f:I

    return v0
.end method

.method public i()Lcom/fyber/inneractive/sdk/network/o0;
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/network/o0;->HIGH:Lcom/fyber/inneractive/sdk/network/o0;

    return-object v0
.end method

.method public n()Lcom/fyber/inneractive/sdk/network/t0;
    .registers 4

    new-instance v0, Lcom/fyber/inneractive/sdk/network/t0;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/d0;->x:Lcom/fyber/inneractive/sdk/network/timeouts/request/a;

    iget v2, v1, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->i:I

    iget v1, v1, Lcom/fyber/inneractive/sdk/network/timeouts/request/a;->h:I

    invoke-direct {v0, v2, v1}, Lcom/fyber/inneractive/sdk/network/t0;-><init>(II)V

    return-object v0
.end method

.method public o()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public r()Lcom/fyber/inneractive/sdk/network/z;
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/network/z;->POST:Lcom/fyber/inneractive/sdk/network/z;

    return-object v0
.end method

.method public t()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/d0;->s:Ljava/util/Map;

    return-object v0
.end method

.method public u()[B
    .registers 8

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/network/d0;->u:Lcom/fyber/inneractive/sdk/serverapi/c;

    check-cast v4, Lcom/fyber/inneractive/sdk/serverapi/b;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/serverapi/b;->a:Lcom/fyber/inneractive/sdk/config/global/s;

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/config/global/s;->d()Lorg/json/JSONArray;

    move-result-object v4

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2d

    const-string v5, "experiments"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sdk_experiments"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2d
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/network/d0;->r:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getSpotId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/serverapi/a;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    move-result-object v3

    sget-object v4, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v5, v4, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->x:Lcom/fyber/inneractive/sdk/config/f0;

    invoke-virtual {v5, v3}, Lcom/fyber/inneractive/sdk/config/f0;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_4c

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4c

    const-string v6, "user_sessions"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4c
    iget-object v5, v4, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->u:Lcom/fyber/inneractive/sdk/config/j;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    const-string v6, "dv_enabled_v2"

    invoke-virtual {v5, v6, v0, v0}, Lcom/fyber/inneractive/sdk/config/i;->a(Ljava/lang/String;II)I

    move-result v5

    const/4 v6, 0x1

    if-eqz v3, :cond_70

    if-ne v5, v6, :cond_70

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->F:Lcom/fyber/inneractive/sdk/dv/handler/a;

    invoke-virtual {v4, v3}, Lcom/fyber/inneractive/sdk/dv/handler/a;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;)Lcom/fyber/inneractive/sdk/dv/g;

    move-result-object v3

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/network/d0;->v:Lcom/fyber/inneractive/sdk/dv/g;

    if-eqz v3, :cond_70

    const-string v4, "gdem_signal"

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/dv/g;->a:Lcom/google/android/gms/ads/query/QueryInfo;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/query/QueryInfo;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_70
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_81

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    goto :goto_8b

    :cond_81
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_8b
    const-string v3, "request json body - %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_98} :catch_99

    goto :goto_a0

    :catch_99
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Failed building body for ad request!"

    invoke-static {v2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a0
    return-object v1
.end method

.method public v()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public w()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/fyber/inneractive/sdk/config/f;->a:I

    const-string v0, "ia.testEnvironmentConfiguration.response"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "mockadnetworkresponseid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "NetworkRequestAd: Adding mock response header - %s"

    invoke-static {v0, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return-object v1
.end method

.method public x()I
    .registers 2

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/network/f0;->y()I

    move-result v0

    return v0
.end method
