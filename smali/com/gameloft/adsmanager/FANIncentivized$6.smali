###### Class com.gameloft.adsmanager.FANIncentivized.AnonymousClass6 (com.gameloft.adsmanager.FANIncentivized$6)
.class Lcom/gameloft/adsmanager/FANIncentivized$6;
.super Ljava/lang/Object;
.source "FANIncentivized.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/FANIncentivized;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/FANIncentivized;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/FANIncentivized;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANIncentivized$6;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/adsmanager/FANIncentivized$6;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANIncentivized;->access$000(Lcom/gameloft/adsmanager/FANIncentivized;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnDisplay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANIncentivized$6;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANIncentivized;->access$100(Lcom/gameloft/adsmanager/FANIncentivized;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnPauseGameAudio()V

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANIncentivized$6;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {v1}, Lcom/gameloft/adsmanager/FANIncentivized;->access$000(Lcom/gameloft/adsmanager/FANIncentivized;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/adsmanager/FANIncentivized$6;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {v2}, Lcom/gameloft/adsmanager/FANIncentivized;->access$400(Lcom/gameloft/adsmanager/FANIncentivized;)Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/gamingservices/cloudgaming/InAppAdLibrary;->showRewardedVideo(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_6d

    :catch_2c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show error exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FANIncentivized.java"

    const-string v2, "!!!!!"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANIncentivized$6;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANIncentivized;->access$100(Lcom/gameloft/adsmanager/FANIncentivized;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANIncentivized$6;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANIncentivized;->access$000(Lcom/gameloft/adsmanager/FANIncentivized;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnShowError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANIncentivized$6;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANIncentivized;->access$100(Lcom/gameloft/adsmanager/FANIncentivized;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/adsmanager/FAN;->incentivized:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANIncentivized$6;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {v1}, Lcom/gameloft/adsmanager/FANIncentivized;->access$000(Lcom/gameloft/adsmanager/FANIncentivized;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    :goto_6d
    return-void
.end method
