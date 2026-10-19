###### Class com.gameloft.adsmanager.Tapjoy.AnonymousClass1.C02071 (com.gameloft.adsmanager.Tapjoy$1$1)
.class Lcom/gameloft/adsmanager/Tapjoy$1$1;
.super Ljava/lang/Object;
.source "Tapjoy.java"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/Tapjoy$1;->onConnectSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gameloft/adsmanager/Tapjoy$1;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/Tapjoy$1;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/tapjoy/TJPlacement;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy;->onScreenOfferWall:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/gameloft/adsmanager/TapjoyOfferWall;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;->OnClick(Ljava/lang/String;)V

    :cond_12
    monitor-exit p1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy;->onScreenOfferWall:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/gameloft/adsmanager/TapjoyOfferWall;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;->OnClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    :cond_19
    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallObjectCreated:Z

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->onScreenOfferWall:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    monitor-exit p1

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public onContentReady(Lcom/tapjoy/TJPlacement;)V
    .registers 5

    iget-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallLoading:Z

    const-string v0, "Tapjoy.java"

    const-string v1, "Offerwall loaded"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-boolean v0, v0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallObjectCreated:Z

    if-nez v0, :cond_36

    new-instance v0, Lcom/gameloft/adsmanager/TapjoyOfferWall;

    iget-object v1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v1, v1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-object v2, v1, Lcom/gameloft/adsmanager/Tapjoy;->offerWallSdkLocation:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/gameloft/adsmanager/TapjoyOfferWall;-><init>(Lcom/gameloft/adsmanager/Tapjoy;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v1, v1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/gameloft/adsmanager/Tapjoy;->offerWallObjectCreated:Z

    iget-object v1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v1, v1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    invoke-virtual {v1, v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnOfferWallAvailable(Lcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;)V

    :cond_36
    monitor-exit p1

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onContentShow(Lcom/tapjoy/TJPlacement;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy;->onScreenOfferWall:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/gameloft/adsmanager/TapjoyOfferWall;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;->OnDisplay(Ljava/lang/String;)V

    :cond_12
    monitor-exit p1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/r;)V
    .registers 7

    iget-object p1, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/Tapjoy;->offerWallLoading:Z

    const-string v0, ""

    if-eqz p2, :cond_14

    iget v1, p2, Lcom/tapjoy/r;->a:I

    iget-object v0, p2, Lcom/tapjoy/r;->b:Ljava/lang/String;

    :cond_14
    const-string p2, "Tapjoy.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offerwall failed to load with errorCode = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") and errorMessage = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {p2, v0, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gameloft/adsmanager/Tapjoy$1$1;->this$1:Lcom/gameloft/adsmanager/Tapjoy$1;

    iget-object p2, p2, Lcom/gameloft/adsmanager/Tapjoy$1;->this$0:Lcom/gameloft/adsmanager/Tapjoy;

    iget-object v0, p2, Lcom/gameloft/adsmanager/Tapjoy;->offerWallSdkLocation:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnOfferWallLoadError(ILjava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_44
    move-exception p2

    monitor-exit p1
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_44

    throw p2
.end method

.method public onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .registers 4

    const-string p1, "Tapjoy.java"

    const-string v0, "onRequestSuccess"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .registers 5

    return-void
.end method
