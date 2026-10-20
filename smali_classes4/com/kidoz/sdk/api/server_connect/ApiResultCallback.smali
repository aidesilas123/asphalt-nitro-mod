###### Class com.kidoz.sdk.api.server_connect.ApiResultCallback (com.kidoz.sdk.api.server_connect.ApiResultCallback)
.class public interface abstract Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;
.super Ljava/lang/Object;
.source "ApiResultCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailed()V
.end method

.method public abstract onServerResult(Lcom/kidoz/sdk/api/server_connect/ResultData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kidoz/sdk/api/server_connect/ResultData<",
            "*>;)V"
        }
    .end annotation
.end method
