###### Class com.gameloft.adsmanager.FANIncentivized.AnonymousClass2 (com.gameloft.adsmanager.FANIncentivized$2)
.class Lcom/gameloft/adsmanager/FANIncentivized$2;
.super Ljava/lang/Object;
.source "FANIncentivized.java"

# interfaces
.implements Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/FANIncentivized;-><init>(Lcom/gameloft/adsmanager/FAN;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/FANIncentivized;

.field final synthetic val$sdkLocation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/FANIncentivized;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    iput-object p2, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->val$sdkLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 7

    const-string v0, "FANIncentivized.java"

    const-string v1, "!!!!!!"

    const-string v2, "Incentivized show callback"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {v2}, Lcom/gameloft/adsmanager/FANIncentivized;->access$100(Lcom/gameloft/adsmanager/FANIncentivized;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    const-string v2, "!!!!!"

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnShowError(ILjava/lang/String;)V

    const-string p1, "Null response"

    invoke-static {v0, v2, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {p1}, Lcom/gameloft/adsmanager/FANIncentivized;->access$100(Lcom/gameloft/adsmanager/FANIncentivized;)Lcom/gameloft/adsmanager/FAN;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/adsmanager/FAN;->incentivized:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    goto :goto_a5

    :cond_31
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    if-eqz v3, :cond_70

    iget-object v2, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v3

    iget-object v4, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnShowError(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error response :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {p1}, Lcom/gameloft/adsmanager/FANIncentivized;->access$100(Lcom/gameloft/adsmanager/FANIncentivized;)Lcom/gameloft/adsmanager/FAN;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/adsmanager/FAN;->incentivized:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    goto :goto_a5

    :cond_70
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON object"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {p1}, Lcom/gameloft/adsmanager/FANIncentivized;->access$200(Lcom/gameloft/adsmanager/FANIncentivized;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnReward(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANIncentivized$2;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnClose(Ljava/lang/String;)V

    :cond_a5
    :goto_a5
    return-void
.end method
