###### Class com.kidoz.sdk.api.general.cache.CacheWebViewFactory.CacheWebViewFactoryRunnable (com.kidoz.sdk.api.general.cache.CacheWebViewFactory$CacheWebViewFactoryRunnable)
.class Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryRunnable;
.super Ljava/lang/Object;
.source "CacheWebViewFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheWebViewFactoryRunnable"
.end annotation


# instance fields
.field private PlayerName:Ljava/lang/String;

.field private PlayerUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryRunnable;->this$0:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryRunnable;->PlayerName:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryRunnable;->PlayerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Lcom/kidoz/sdk/api/general/cache/WebViewDataRequest;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryRunnable;->PlayerUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/cache/WebViewDataRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->executeRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kidoz/sdk/api/general/cache/WebViewData;

    invoke-static {}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_12
    iget-object v2, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryRunnable;->this$0:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->access$100(Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryRunnable;->this$0:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->access$100(Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryRunnable;->PlayerName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    monitor-exit v1

    return-void

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_27

    throw v0
.end method
