###### Class com.mbridge.msdk.foundation.download.resource.ResourceStrategyExecutor (com.mbridge.msdk.foundation.download.resource.ResourceStrategyExecutor)
.class Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;
.super Ljava/lang/Object;
.source "ResourceStrategyExecutor.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/resource/IResourceStrategy;


# instance fields
.field private resourceStrategy:Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategy;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;->resourceStrategy:Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategy;

    return-void
.end method


# virtual methods
.method public getResourceStrategyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;->resourceStrategy:Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategy;

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/download/resource/IResourceStrategy;->getResourceStrategyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processResource(Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;->resourceStrategy:Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategy;

    if-eqz v0, :cond_c

    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Lcom/mbridge/msdk/foundation/download/resource/IResourceStrategy;->processResource(Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method
