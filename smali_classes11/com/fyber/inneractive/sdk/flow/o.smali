###### Class com.fyber.inneractive.sdk.flow.o (com.fyber.inneractive.sdk.flow.o)
.class public Lcom/fyber/inneractive/sdk/flow/o;
.super Lcom/fyber/inneractive/sdk/flow/h;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/h$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/flow/h<",
        "Lcom/fyber/inneractive/sdk/response/g;",
        "Lcom/fyber/inneractive/sdk/flow/f0;",
        ">;",
        "Lcom/fyber/inneractive/sdk/player/h$b;"
    }
.end annotation


# instance fields
.field public m:Lcom/fyber/inneractive/sdk/player/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/flow/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/h;->d()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/h;->k:Lcom/fyber/inneractive/sdk/flow/b;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/flow/b;->a()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/o;->m:Lcom/fyber/inneractive/sdk/player/h;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/h;->a()V

    return-void
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/o;->m:Lcom/fyber/inneractive/sdk/player/h;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    check-cast v0, Lcom/fyber/inneractive/sdk/response/g;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/response/g;->K:Lcom/fyber/inneractive/sdk/model/vast/b;

    if-eqz v0, :cond_27

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/model/vast/b;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;

    sget-object v2, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->ERROR_FAILED_PLAYING_ALL_MEDIA_FILES:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    invoke-direct {v0, v2, v1}, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_1f
    new-instance v0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;

    sget-object v2, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->ERROR_FAILED_PLAYING_MEDIA_FILE:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    invoke-direct {v0, v2, v1}, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_27
    move-object v0, v1

    :goto_28
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/flow/o;->m:Lcom/fyber/inneractive/sdk/player/h;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v1, v3}, Lcom/fyber/inneractive/sdk/player/h;->a(Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;Lorg/json/JSONObject;Z)V

    :cond_2e
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/o;->a()V

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/flow/h;->b()V

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const-string v0, "send_failed_vast_creatives"

    return-object v0
.end method

.method public j()V
    .registers 13

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "start called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/h;->g()Lcom/fyber/inneractive/sdk/config/b0;

    move-result-object v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    const/4 v4, 0x0

    if-nez v3, :cond_28

    move-object v3, v4

    goto :goto_2c

    :cond_28
    check-cast v3, Lcom/fyber/inneractive/sdk/response/g;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/response/g;->K:Lcom/fyber/inneractive/sdk/model/vast/b;

    :goto_2c
    if-eqz v3, :cond_50

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/model/vast/b;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    iget v6, v3, Lcom/fyber/inneractive/sdk/model/vast/b;->i:I

    if-ge v5, v6, :cond_50

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/model/vast/b;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->clear()V

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/model/vast/b;->g:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->clear()V

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/model/vast/b;->d:Ljava/util/PriorityQueue;

    iget-object v6, v3, Lcom/fyber/inneractive/sdk/model/vast/b;->k:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/model/vast/b;->g:Ljava/util/PriorityQueue;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/model/vast/b;->l:Ljava/util/List;

    invoke-virtual {v5, v3}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    :cond_50
    new-instance v3, Lcom/fyber/inneractive/sdk/flow/f0;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/flow/h;->g:Lcom/fyber/inneractive/sdk/config/global/s;

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v6, Lcom/fyber/inneractive/sdk/response/g;

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/flow/h;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    invoke-direct {v3, v1, v5, v6, v7}, Lcom/fyber/inneractive/sdk/flow/f0;-><init>(Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/response/g;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;)V

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/flow/h;->c:Lcom/fyber/inneractive/sdk/flow/q;

    new-instance v1, Lcom/fyber/inneractive/sdk/player/h;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v5, Lcom/fyber/inneractive/sdk/response/g;

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/flow/h;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    invoke-direct {v1, v5, v6, v3, p0}, Lcom/fyber/inneractive/sdk/player/h;-><init>(Lcom/fyber/inneractive/sdk/response/g;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/flow/f0;Lcom/fyber/inneractive/sdk/player/h$b;)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/flow/o;->m:Lcom/fyber/inneractive/sdk/player/h;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/flow/h;->c:Lcom/fyber/inneractive/sdk/flow/q;

    check-cast v3, Lcom/fyber/inneractive/sdk/flow/f0;

    iput-object v1, v3, Lcom/fyber/inneractive/sdk/flow/f0;->i:Lcom/fyber/inneractive/sdk/player/h;

    iget-boolean v6, p0, Lcom/fyber/inneractive/sdk/flow/h;->h:Z

    iput-boolean v6, v3, Lcom/fyber/inneractive/sdk/flow/q;->f:Z

    iput-object v4, v1, Lcom/fyber/inneractive/sdk/player/h;->e:Lcom/fyber/inneractive/sdk/model/vast/o;

    if-eqz v5, :cond_88

    iget-object v3, v5, Lcom/fyber/inneractive/sdk/response/g;->K:Lcom/fyber/inneractive/sdk/model/vast/b;

    if-eqz v3, :cond_88

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/model/vast/b;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/model/vast/o;

    iput-object v3, v1, Lcom/fyber/inneractive/sdk/player/h;->e:Lcom/fyber/inneractive/sdk/model/vast/o;

    :cond_88
    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/h;->e:Lcom/fyber/inneractive/sdk/model/vast/o;

    if-nez v3, :cond_a4

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/h;->b()V

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/h;->d:Lcom/fyber/inneractive/sdk/player/h$b;

    new-instance v1, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;

    sget-object v2, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->SDK_INTERNAL_ERROR:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    sget-object v3, Lcom/fyber/inneractive/sdk/flow/g;->VAST_NO_MEDIA_FILES:Lcom/fyber/inneractive/sdk/flow/g;

    invoke-direct {v1, v2, v3}, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;Lcom/fyber/inneractive/sdk/flow/g;)V

    check-cast v0, Lcom/fyber/inneractive/sdk/flow/o;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/flow/h;->a(Lcom/fyber/inneractive/sdk/external/InneractiveError;)V

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/flow/h;->a(Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;)V

    goto/16 :goto_164

    :cond_a4
    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/h;->e()V

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/h;->f:Lcom/fyber/inneractive/sdk/player/a$a;

    if-eqz v3, :cond_161

    check-cast v3, Lcom/fyber/inneractive/sdk/player/e;

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/player/c;->g:Lcom/fyber/inneractive/sdk/measurement/a;

    if-eqz v5, :cond_131

    new-instance v5, Lcom/fyber/inneractive/sdk/measurement/d;

    invoke-direct {v5}, Lcom/fyber/inneractive/sdk/measurement/d;-><init>()V

    iget-object v6, v3, Lcom/fyber/inneractive/sdk/player/c;->g:Lcom/fyber/inneractive/sdk/measurement/a;

    iget-object v7, v3, Lcom/fyber/inneractive/sdk/player/e;->v:Lcom/fyber/inneractive/sdk/model/vast/b;

    iget-object v7, v7, Lcom/fyber/inneractive/sdk/model/vast/b;->e:Ljava/util/List;

    iget-object v8, v3, Lcom/fyber/inneractive/sdk/player/c;->e:Lcom/fyber/inneractive/sdk/flow/f0;

    :try_start_be
    sget-object v9, Lcom/iab/omid/library/fyber/adsession/CreativeType;->VIDEO:Lcom/iab/omid/library/fyber/adsession/CreativeType;

    sget-object v10, Lcom/iab/omid/library/fyber/adsession/ImpressionType;->UNSPECIFIED:Lcom/iab/omid/library/fyber/adsession/ImpressionType;

    sget-object v11, Lcom/iab/omid/library/fyber/adsession/Owner;->NATIVE:Lcom/iab/omid/library/fyber/adsession/Owner;

    invoke-static {v9, v10, v11, v11, v2}, Lcom/iab/omid/library/fyber/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/fyber/adsession/CreativeType;Lcom/iab/omid/library/fyber/adsession/ImpressionType;Lcom/iab/omid/library/fyber/adsession/Owner;Lcom/iab/omid/library/fyber/adsession/Owner;Z)Lcom/iab/omid/library/fyber/adsession/AdSessionConfiguration;

    move-result-object v9
    :try_end_c8
    .catchall {:try_start_be .. :try_end_c8} :catchall_c9

    goto :goto_ce

    :catchall_c9
    move-exception v9

    :try_start_ca
    invoke-virtual {v5, v9}, Lcom/fyber/inneractive/sdk/measurement/d;->a(Ljava/lang/Throwable;)V

    move-object v9, v4

    :goto_ce
    invoke-virtual {v5, v7}, Lcom/fyber/inneractive/sdk/measurement/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object v10, v6

    check-cast v10, Lcom/fyber/inneractive/sdk/measurement/b;

    iget-object v10, v10, Lcom/fyber/inneractive/sdk/measurement/b;->e:Lcom/iab/omid/library/fyber/adsession/Partner;

    if-eqz v10, :cond_f2

    move-object v10, v6

    check-cast v10, Lcom/fyber/inneractive/sdk/measurement/b;

    iget-object v10, v10, Lcom/fyber/inneractive/sdk/measurement/b;->b:Ljava/lang/String;
    :try_end_de
    .catchall {:try_start_ca .. :try_end_de} :catchall_124

    if-eqz v10, :cond_f2

    :try_start_e0
    move-object v10, v6

    check-cast v10, Lcom/fyber/inneractive/sdk/measurement/b;

    iget-object v10, v10, Lcom/fyber/inneractive/sdk/measurement/b;->e:Lcom/iab/omid/library/fyber/adsession/Partner;

    check-cast v6, Lcom/fyber/inneractive/sdk/measurement/b;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/measurement/b;->b:Ljava/lang/String;

    invoke-static {v10, v6, v7, v0, v0}, Lcom/iab/omid/library/fyber/adsession/AdSessionContext;->createNativeAdSessionContext(Lcom/iab/omid/library/fyber/adsession/Partner;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/fyber/adsession/AdSessionContext;

    move-result-object v4
    :try_end_ed
    .catchall {:try_start_e0 .. :try_end_ed} :catchall_ee

    goto :goto_f2

    :catchall_ee
    move-exception v0

    :try_start_ef
    invoke-virtual {v5, v0}, Lcom/fyber/inneractive/sdk/measurement/d;->a(Ljava/lang/Throwable;)V

    :cond_f2
    :goto_f2
    invoke-static {v9, v4}, Lcom/iab/omid/library/fyber/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/fyber/adsession/AdSessionConfiguration;Lcom/iab/omid/library/fyber/adsession/AdSessionContext;)Lcom/iab/omid/library/fyber/adsession/AdSession;

    move-result-object v0

    iput-object v0, v5, Lcom/fyber/inneractive/sdk/measurement/d;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/fyber/adsession/AdSession;->getAdSessionStatePublisher()Lcom/iab/omid/library/fyber/publisher/AdSessionStatePublisher;

    move-result-object v0

    if-eqz v0, :cond_10c

    invoke-virtual {v0}, Lcom/iab/omid/library/fyber/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    invoke-virtual {v0}, Lcom/iab/omid/library/fyber/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_10c

    iget-object v4, v5, Lcom/fyber/inneractive/sdk/measurement/d;->g:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_10c
    iget-object v0, v5, Lcom/fyber/inneractive/sdk/measurement/d;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    invoke-static {v0}, Lcom/iab/omid/library/fyber/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/fyber/adsession/AdSession;)Lcom/iab/omid/library/fyber/adsession/AdEvents;

    move-result-object v0

    iput-object v0, v5, Lcom/fyber/inneractive/sdk/measurement/d;->b:Lcom/iab/omid/library/fyber/adsession/AdEvents;

    iget-object v0, v5, Lcom/fyber/inneractive/sdk/measurement/d;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    invoke-static {v0}, Lcom/iab/omid/library/fyber/adsession/media/MediaEvents;->createMediaEvents(Lcom/iab/omid/library/fyber/adsession/AdSession;)Lcom/iab/omid/library/fyber/adsession/media/MediaEvents;

    move-result-object v0

    iput-object v0, v5, Lcom/fyber/inneractive/sdk/measurement/d;->c:Lcom/iab/omid/library/fyber/adsession/media/MediaEvents;

    iget-object v0, v5, Lcom/fyber/inneractive/sdk/measurement/d;->a:Lcom/iab/omid/library/fyber/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/fyber/adsession/AdSession;->start()V

    iput-object v8, v5, Lcom/fyber/inneractive/sdk/measurement/d;->f:Lcom/fyber/inneractive/sdk/flow/f0;
    :try_end_123
    .catchall {:try_start_ef .. :try_end_123} :catchall_124

    goto :goto_128

    :catchall_124
    move-exception v0

    invoke-virtual {v5, v0}, Lcom/fyber/inneractive/sdk/measurement/d;->a(Ljava/lang/Throwable;)V

    :goto_128
    iput-object v5, v3, Lcom/fyber/inneractive/sdk/player/c;->h:Lcom/fyber/inneractive/sdk/measurement/d;

    new-instance v0, Lcom/fyber/inneractive/sdk/player/f;

    invoke-direct {v0, v5}, Lcom/fyber/inneractive/sdk/player/f;-><init>(Lcom/fyber/inneractive/sdk/measurement/d;)V

    iput-object v0, v3, Lcom/fyber/inneractive/sdk/player/c;->i:Lcom/fyber/inneractive/sdk/player/f;

    :cond_131
    iget-object v0, v3, Lcom/fyber/inneractive/sdk/player/c;->h:Lcom/fyber/inneractive/sdk/measurement/d;

    if-nez v0, :cond_161

    iget-object v0, v3, Lcom/fyber/inneractive/sdk/player/e;->v:Lcom/fyber/inneractive/sdk/model/vast/b;

    if-eqz v0, :cond_161

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/model/vast/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_161

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/measurement/f;

    sget-object v4, Lcom/fyber/inneractive/sdk/measurement/g;->ERROR_DURING_RESOURCE_LOAD:Lcom/fyber/inneractive/sdk/measurement/g;

    sget-object v5, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_VERIFICATION_NOT_EXECUTED:Lcom/fyber/inneractive/sdk/model/vast/t;

    invoke-virtual {v3, v5}, Lcom/fyber/inneractive/sdk/measurement/f;->a(Lcom/fyber/inneractive/sdk/model/vast/t;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/fyber/inneractive/sdk/measurement/e;

    invoke-direct {v7, v3, v6, v4}, Lcom/fyber/inneractive/sdk/measurement/e;-><init>(Lcom/fyber/inneractive/sdk/measurement/f;Ljava/util/List;Lcom/fyber/inneractive/sdk/measurement/g;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/fyber/inneractive/sdk/model/vast/t;

    aput-object v5, v3, v2

    invoke-static {v7, v3}, Lcom/fyber/inneractive/sdk/player/e;->a(Lcom/fyber/inneractive/sdk/response/i;[Lcom/fyber/inneractive/sdk/model/vast/t;)V

    goto :goto_13f

    :cond_161
    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/h;->d()V

    :goto_164
    return-void
.end method
