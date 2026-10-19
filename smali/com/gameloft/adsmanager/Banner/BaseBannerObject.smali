###### Class com.gameloft.adsmanager.Banner.BaseBannerObject (com.gameloft.adsmanager.Banner.BaseBannerObject)
.class public abstract Lcom/gameloft/adsmanager/Banner/BaseBannerObject;
.super Ljava/lang/Object;
.source "BaseBannerObject.java"

# interfaces
.implements Lcom/gameloft/adsmanager/Banner/BannerObjectAPIInterface;
.implements Lcom/gameloft/adsmanager/Banner/BannerObjectInterface;


# instance fields
.field private m_adsLocation:Ljava/lang/String;

.field private m_onDisplay:Z

.field private m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;


# direct methods
.method public constructor <init>(Lcom/gameloft/adsmanager/BaseAdsProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_onDisplay:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_adsLocation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public CloseInternal()V
    .registers 4

    iget-boolean v0, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_onDisplay:Z

    const-string v1, "BaseBannerObject.java"

    if-nez v0, :cond_e

    const-string v0, "ShowInternal"

    const-string v2, "Trying to close banner while banner is not on screen"

    invoke-static {v1, v0, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    :try_start_e
    invoke-interface {p0}, Lcom/gameloft/adsmanager/Banner/BannerObjectInterface;->Close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception v0

    const-string v2, "CloseInternal"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method public DestroyInternal()V
    .registers 4

    :try_start_0
    invoke-interface {p0}, Lcom/gameloft/adsmanager/Banner/BannerObjectInterface;->Destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "BaseBannerObject.java"

    const-string v2, "DestroyInternal"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    return-void
.end method

.method public IsValidInternal()Z
    .registers 4

    :try_start_0
    invoke-interface {p0}, Lcom/gameloft/adsmanager/Banner/BannerObjectInterface;->IsValid()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    move-exception v0

    const-string v1, "BaseBannerObject.java"

    const-string v2, "IsValidInternal"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public MoveInternal(III)V
    .registers 6

    iget-boolean v0, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_onDisplay:Z

    const-string v1, "BaseBannerObject.java"

    if-nez v0, :cond_e

    const-string p1, "ShowInternal"

    const-string p2, "Trying to move banner while banner is not on screen"

    invoke-static {v1, p1, p2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    :try_start_e
    invoke-interface {p0, p1, p2, p3}, Lcom/gameloft/adsmanager/Banner/BannerObjectInterface;->Move(III)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception p1

    const-string p2, "MoveInternal"

    invoke-static {v1, p2, p1}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method public OnClick(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;

    iget-object v1, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_adsLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnBannerClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnClosed(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_onDisplay:Z

    iget-object v0, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;

    iget-object v1, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_adsLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnBannerClosed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnDisplay(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_onDisplay:Z

    iget-object v0, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;

    iget-object v1, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_adsLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnBannerOnScreen(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnRefreshed(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_onDisplay:Z

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshe called for object that is not on screen on location : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseBannerObject.java"

    const-string v1, "OnRefreshed"

    invoke-static {v0, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;

    iget-object v1, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_adsLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnBannerRefreshed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnShowError(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_onDisplay:Z

    iget-object v0, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;

    iget-object v1, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_adsLocation:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnBannerShowError(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShowInternal(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-boolean v0, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_onDisplay:Z

    const-string v1, "ShowInternal"

    const-string v2, "BaseBannerObject.java"

    if-eqz v0, :cond_e

    const-string p1, "Trying to display banner while banner is on screen"

    invoke-static {v2, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iput-object p4, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_adsLocation:Ljava/lang/String;

    :try_start_10
    invoke-interface/range {p0 .. p5}, Lcom/gameloft/adsmanager/Banner/BannerObjectInterface;->Show(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_23

    :catch_14
    move-exception p1

    invoke-static {v2, v1, p1}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_provider:Lcom/gameloft/adsmanager/BaseAdsProvider;

    const/16 p2, 0x22b8

    iget-object p3, p0, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->m_adsLocation:Ljava/lang/String;

    const-string p4, "exception"

    invoke-virtual {p1, p2, p3, p4}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnBannerShowError(ILjava/lang/String;Ljava/lang/String;)V

    :goto_23
    return-void
.end method
