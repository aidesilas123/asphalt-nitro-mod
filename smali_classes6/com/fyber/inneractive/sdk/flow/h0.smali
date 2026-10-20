###### Class com.fyber.inneractive.sdk.flow.h0 (com.fyber.inneractive.sdk.flow.h0)
.class public abstract Lcom/fyber/inneractive/sdk/flow/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/flow/h0;->a:Z

    return-void
.end method


# virtual methods
.method public getAllowFullscreen()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/flow/h0;->a:Z

    return v0
.end method

.method public getMediationName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->o:Ljava/lang/String;

    return-object v0
.end method
