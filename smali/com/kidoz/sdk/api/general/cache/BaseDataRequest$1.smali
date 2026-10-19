###### Class com.kidoz.sdk.api.general.cache.BaseDataRequest.AnonymousClass1 (com.kidoz.sdk.api.general.cache.BaseDataRequest$1)
.class Lcom/kidoz/sdk/api/general/cache/BaseDataRequest$1;
.super Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;
.source "BaseDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->executeRequestAsync(Lcom/kidoz/sdk/api/general/cache/DataRequestResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor<",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;

.field final synthetic val$result:Lcom/kidoz/sdk/api/general/cache/DataRequestResult;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;Lcom/kidoz/sdk/api/general/cache/DataRequestResult;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest$1;->this$0:Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest$1;->val$result:Lcom/kidoz/sdk/api/general/cache/DataRequestResult;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic executeAsync(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest$1;->executeAsync(Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public executeAsync(Ljava/lang/Void;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest$1;->this$0:Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest;->executeRequest()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public postExecute(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/BaseDataRequest$1;->val$result:Lcom/kidoz/sdk/api/general/cache/DataRequestResult;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/general/cache/DataRequestResult;->onResult(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
