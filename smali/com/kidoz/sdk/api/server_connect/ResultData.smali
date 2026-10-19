###### Class com.kidoz.sdk.api.server_connect.ResultData (com.kidoz.sdk.api.server_connect.ResultData)
.class public Lcom/kidoz/sdk/api/server_connect/ResultData;
.super Ljava/lang/Object;
.source "ResultData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResponseStatus:Lcom/kidoz/sdk/api/server_connect/ResponseStatus;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/ResultData;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getResponseStatus()Lcom/kidoz/sdk/api/server_connect/ResponseStatus;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/ResultData;->mResponseStatus:Lcom/kidoz/sdk/api/server_connect/ResponseStatus;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/ResultData;->mData:Ljava/lang/Object;

    return-void
.end method

.method public setResponseStatus(Lcom/kidoz/sdk/api/server_connect/ResponseStatus;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/ResultData;->mResponseStatus:Lcom/kidoz/sdk/api/server_connect/ResponseStatus;

    return-void
.end method
