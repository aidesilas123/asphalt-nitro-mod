###### Class com.unity3d.services.ads.webplayer.WebPlayerViewCache (com.unity3d.services.ads.webplayer.WebPlayerViewCache)
.class public Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;
.super Ljava/lang/Object;
.source "WebPlayerViewCache.java"


# static fields
.field private static instance:Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;


# instance fields
.field private _webPlayerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/unity3d/services/ads/webplayer/WebPlayerView;",
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

    iput-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->_webPlayerMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;
    .registers 1

    sget-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->instance:Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    if-nez v0, :cond_b

    new-instance v0, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    invoke-direct {v0}, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;-><init>()V

    sput-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->instance:Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    :cond_b
    sget-object v0, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->instance:Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addWebPlayer(Ljava/lang/String;Lcom/unity3d/services/ads/webplayer/WebPlayerView;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->_webPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getWebPlayer(Ljava/lang/String;)Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->_webPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->_webPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/ads/webplayer/WebPlayerView;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    monitor-exit p0

    return-object p1

    :cond_13
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeWebPlayer(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->_webPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/WebPlayerViewCache;->_webPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method
