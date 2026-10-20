###### Class com.kidoz.sdk.api.general.ContentLogicLoader.IOnContentDataReadyCallback (com.kidoz.sdk.api.general.ContentLogicLoader$IOnContentDataReadyCallback)
.class public interface abstract Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;
.super Ljava/lang/Object;
.source "ContentLogicLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/ContentLogicLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnContentDataReadyCallback"
.end annotation


# virtual methods
.method public abstract onDataReady(Lcom/kidoz/sdk/api/structure/ContentData;)V
.end method

.method public abstract onLoadContentFailed()V
.end method

.method public abstract onNoContentOffers()V
.end method
