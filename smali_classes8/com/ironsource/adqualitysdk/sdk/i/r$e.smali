###### Class com.ironsource.adqualitysdk.sdk.i.r.e (com.ironsource.adqualitysdk.sdk.i.r$e)
.class final Lcom/ironsource/adqualitysdk/sdk/i/r$e;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/r;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/r;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/r;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->a(Lcom/ironsource/adqualitysdk/sdk/i/r;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->a(Lcom/ironsource/adqualitysdk/sdk/i/r;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;->adQualitySdkInitSuccess()V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/r;->S(Lcom/ironsource/adqualitysdk/sdk/i/r;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    :cond_17
    return-void
.end method
