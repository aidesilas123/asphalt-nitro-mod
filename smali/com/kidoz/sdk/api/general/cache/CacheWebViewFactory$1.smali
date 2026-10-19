###### Class com.kidoz.sdk.api.general.cache.CacheWebViewFactory.AnonymousClass1 (com.kidoz.sdk.api.general.cache.CacheWebViewFactory$1)
.class Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$1;
.super Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;
.source "CacheWebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->addCacheAsync(Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$playerFactoryCallback:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryCallBack;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryCallBack;)V
    .registers 5

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$1;->this$0:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$1;->val$playerFactoryCallback:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryCallBack;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public executeAsync(Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$1;->this$0:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$1;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$1;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->addCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic executeAsync(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$1;->executeAsync(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public postExecute(Ljava/lang/Boolean;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$1;->val$playerFactoryCallback:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryCallBack;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryCallBack;->onReady(Z)V

    :cond_b
    return-void
.end method

.method public bridge synthetic postExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$1;->postExecute(Ljava/lang/Boolean;)V

    return-void
.end method
