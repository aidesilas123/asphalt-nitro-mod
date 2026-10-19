###### Class com.fyber.inneractive.sdk.external.InneractiveAdSpot (com.fyber.inneractive.sdk.external.InneractiveAdSpot)
.class public interface abstract Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot$RequestListenerAdapter;,
        Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot$RequestListener;
    }
.end annotation


# virtual methods
.method public abstract addUnitController(Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getAdContent()Lcom/fyber/inneractive/sdk/flow/q;
.end method

.method public abstract getCurrentProcessedRequest()Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;
.end method

.method public abstract getLocalUniqueId()Ljava/lang/String;
.end method

.method public abstract getMediationName()Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;
.end method

.method public abstract getMediationNameString()Ljava/lang/String;
.end method

.method public abstract getMediationVersion()Ljava/lang/String;
.end method

.method public abstract getRequestedSpotId()Ljava/lang/String;
.end method

.method public abstract getSelectedUnitController()Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;
.end method

.method public abstract isReady()Z
.end method

.method public abstract loadAd(Ljava/lang/String;)V
.end method

.method public abstract removeUnitController(Lcom/fyber/inneractive/sdk/external/InneractiveUnitController;)V
.end method

.method public abstract requestAd(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;)V
.end method

.method public abstract setMediationName(Lcom/fyber/inneractive/sdk/external/InneractiveMediationName;)V
.end method

.method public abstract setMediationName(Ljava/lang/String;)V
.end method

.method public abstract setMediationVersion(Ljava/lang/String;)V
.end method

.method public abstract setRequestListener(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot$RequestListener;)V
.end method

###### Class com.fyber.inneractive.sdk.external.InneractiveAdSpot.RequestListener (com.fyber.inneractive.sdk.external.InneractiveAdSpot$RequestListener)
.class public interface abstract Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot$RequestListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestListener"
.end annotation


# virtual methods
.method public abstract onInneractiveFailedAdRequest(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;)V
.end method

.method public abstract onInneractiveSuccessfulAdRequest(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)V
.end method

###### Class com.fyber.inneractive.sdk.external.InneractiveAdSpot.RequestListenerAdapter (com.fyber.inneractive.sdk.external.InneractiveAdSpot$RequestListenerAdapter)
.class public abstract Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot$RequestListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RequestListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onInneractiveAdRequestResult(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;ZLcom/fyber/inneractive/sdk/external/InneractiveErrorCode;)V
.end method

.method public onInneractiveFailedAdRequest(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot$RequestListenerAdapter;->onInneractiveAdRequestResult(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;ZLcom/fyber/inneractive/sdk/external/InneractiveErrorCode;)V

    return-void
.end method

.method public onInneractiveSuccessfulAdRequest(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot$RequestListenerAdapter;->onInneractiveAdRequestResult(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;ZLcom/fyber/inneractive/sdk/external/InneractiveErrorCode;)V

    return-void
.end method
