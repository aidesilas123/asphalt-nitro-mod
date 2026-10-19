###### Class com.gameloft.adsmanager.FANInterstitial.AnonymousClass3 (com.gameloft.adsmanager.FANInterstitial$3)
.class Lcom/gameloft/adsmanager/FANInterstitial$3;
.super Ljava/lang/Object;
.source "FANInterstitial.java"

# interfaces
.implements Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/FANInterstitial;-><init>(Lcom/gameloft/adsmanager/FAN;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/FANInterstitial;

.field final synthetic val$sdkLocation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/FANInterstitial;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    iput-object p2, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->val$sdkLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 7

    const-string v0, "FANInterstitial.java"

    const-string v1, "!!!!!!"

    const-string v2, "Interstitial load callback"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {p1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object p1

    iget-object v3, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialLoadError(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {p1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v2, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    const-string p1, "Null response"

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    :cond_2a
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v3}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialLoadError(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v2}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v2

    iget-object v2, v2, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v3, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error response interstitial:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    :cond_65
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_94

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interstitial JSON object IV:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "!!!!!!!"

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {p1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$3;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-virtual {p1, v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialAvailable(Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;)V

    :cond_94
    :goto_94
    return-void
.end method
