###### Class com.gameloft.adsmanager.Incentivized.BaseIncentivizedObject (com.gameloft.adsmanager.Incentivized.BaseIncentivizedObject)
.class public abstract Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;
.super Ljava/lang/Object;
.source "BaseIncentivizedObject.java"

# interfaces
.implements Lcom/gameloft/adsmanager/Incentivized/IncentivizedObjectAPIInterface;
.implements Lcom/gameloft/adsmanager/Incentivized/IncentivizedObjectInterface;


# instance fields
.field private m_adsLocation:Ljava/lang/String;

.field private m_onDisplay:Z

.field private m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;


# direct methods
.method public constructor <init>(Lcom/gameloft/adsmanager/BaseAdsProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_onDisplay:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_adsLocation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public CloseInternal()V
    .registers 4

    :try_start_0
    invoke-interface {p0}, Lcom/gameloft/adsmanager/Incentivized/IncentivizedObjectInterface;->Close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "BaseIncentivizedObject.java"

    const-string v2, "CloseInternal"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    return-void
.end method

.method public DestroyInternal()V
    .registers 4

    :try_start_0
    invoke-interface {p0}, Lcom/gameloft/adsmanager/Incentivized/IncentivizedObjectInterface;->Destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "BaseIncentivizedObject.java"

    const-string v2, "DestroyInternal"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    return-void
.end method

.method public IsValidInternal()Z
    .registers 4

    :try_start_0
    invoke-interface {p0}, Lcom/gameloft/adsmanager/Incentivized/IncentivizedObjectInterface;->IsValid()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    move-exception v0

    const-string v1, "BaseIncentivizedObject.java"

    const-string v2, "IsValidInternal"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public OnClick(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;

    iget-object v1, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_adsLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnIncentivizedClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnClose(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_onDisplay:Z

    iget-object v0, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;

    iget-object v1, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_adsLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnIncentivizedClosed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnDisplay(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_onDisplay:Z

    iget-object v0, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;

    iget-object v1, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_adsLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnIncentivizedOnScreen(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnReward(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;

    iget-object v1, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_adsLocation:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnIncentivizedReward(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnShowError(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_onDisplay:Z

    iget-object v0, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;

    iget-object v1, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_adsLocation:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnIncentivizedShowError(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShowInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_onDisplay:Z

    const-string v1, "ShowInternal"

    const-string v2, "BaseIncentivizedObject.java"

    if-eqz v0, :cond_e

    const-string p1, "Trying to show on screen incentivized"

    invoke-static {v2, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iput-object p1, p0, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->m_adsLocation:Ljava/lang/String;

    :try_start_10
    invoke-interface {p0, p1, p2, p3}, Lcom/gameloft/adsmanager/Incentivized/IncentivizedObjectInterface;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    invoke-static {v2, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method
