###### Class com.fyber.inneractive.sdk.external.InneractiveAdRequest (com.fyber.inneractive.sdk.external.InneractiveAdRequest)
.class public Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;
.super Lcom/fyber/inneractive/sdk/flow/h0;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lcom/fyber/inneractive/sdk/config/b0;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/flow/h0;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKeywords()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->getKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMuteVideo()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->getMuteVideo()Z

    move-result v0

    return v0
.end method

.method public getSelectedUnitConfig()Lcom/fyber/inneractive/sdk/config/b0;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->d:Lcom/fyber/inneractive/sdk/config/b0;

    return-object v0
.end method

.method public getSpotId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUserParams()Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->getUserParams()Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig;

    move-result-object v0

    return-object v0
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->setKeywords(Ljava/lang/String;)V

    return-void
.end method

.method public setMuteVideo(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->setMuteVideo(Z)V

    return-void
.end method

.method public setSelectedUnitConfig(Lcom/fyber/inneractive/sdk/config/b0;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->d:Lcom/fyber/inneractive/sdk/config/b0;

    return-void
.end method

.method public setUserParams(Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->setUserParams(Lcom/fyber/inneractive/sdk/external/InneractiveUserConfig;)V

    return-void
.end method
