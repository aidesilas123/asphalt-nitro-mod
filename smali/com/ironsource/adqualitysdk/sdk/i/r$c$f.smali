###### Class com.ironsource.adqualitysdk.sdk.i.r.c.f (com.ironsource.adqualitysdk.sdk.i.r$c$f)
.class final Lcom/ironsource/adqualitysdk/sdk/i/r$c$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/r$c;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/r$c;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/r$c;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$f;->a:Lcom/ironsource/adqualitysdk/sdk/i/r$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adQualitySdkInitFailed(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$f;->a:Lcom/ironsource/adqualitysdk/sdk/i/r$c;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c;->i:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/r;->K(Lcom/ironsource/adqualitysdk/sdk/i/r;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V

    return-void
.end method

.method public final adQualitySdkInitSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$f;->a:Lcom/ironsource/adqualitysdk/sdk/i/r$c;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c;->i:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->m(Lcom/ironsource/adqualitysdk/sdk/i/r;)V

    return-void
.end method
