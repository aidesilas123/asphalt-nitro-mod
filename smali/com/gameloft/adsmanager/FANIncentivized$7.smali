###### Class com.gameloft.adsmanager.FANIncentivized.AnonymousClass7 (com.gameloft.adsmanager.FANIncentivized$7)
.class Lcom/gameloft/adsmanager/FANIncentivized$7;
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

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANIncentivized$7;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANIncentivized$7;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANIncentivized;->access$100(Lcom/gameloft/adsmanager/FANIncentivized;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANIncentivized$7;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANIncentivized;->access$000(Lcom/gameloft/adsmanager/FANIncentivized;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22b8

    invoke-virtual {v0, v2, v1}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnShowError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANIncentivized$7;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANIncentivized;->access$100(Lcom/gameloft/adsmanager/FANIncentivized;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/adsmanager/FAN;->incentivized:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANIncentivized$7;->this$0:Lcom/gameloft/adsmanager/FANIncentivized;

    invoke-static {v1}, Lcom/gameloft/adsmanager/FANIncentivized;->access$000(Lcom/gameloft/adsmanager/FANIncentivized;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    return-void
.end method
