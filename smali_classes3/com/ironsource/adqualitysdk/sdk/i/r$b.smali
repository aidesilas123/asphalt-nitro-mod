###### Class com.ironsource.adqualitysdk.sdk.i.r.b (com.ironsource.adqualitysdk.sdk.i.r$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/r$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/r;->v(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;

.field private synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$b;->d:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$b;->e:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$b;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$b;->d:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$b;->e:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$b;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;->adQualitySdkInitFailed(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V

    :cond_b
    return-void
.end method
