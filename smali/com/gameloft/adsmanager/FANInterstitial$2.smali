###### Class com.gameloft.adsmanager.FANInterstitial.AnonymousClass2 (com.gameloft.adsmanager.FANInterstitial$2)
.class Lcom/gameloft/adsmanager/FANInterstitial$2;
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

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    iput-object p2, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->val$sdkLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 6

    const-string v0, "FANInterstitial.java"

    const-string v1, "!!!!!"

    const-string v2, "Interstitial show callback"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v2}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    if-nez p1, :cond_2f

    const-string p1, "Null response"

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnShowError(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {p1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    goto :goto_99

    :cond_2f
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    if-eqz v2, :cond_70

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v2

    iget-object v3, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnShowError(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error response :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "!!!!!!"

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {p1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    goto :goto_99

    :cond_70
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_99

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnClose(Ljava/lang/String;)V

    :cond_99
    :goto_99
    return-void
.end method
