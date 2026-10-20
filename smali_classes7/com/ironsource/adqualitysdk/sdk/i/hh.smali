###### Class com.json.adqualitysdk.sdk.i.hh (com.ironsource.adqualitysdk.sdk.i.hh)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/hh;
.super Lcom/ironsource/adqualitysdk/sdk/i/cx;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/hh$b;
    }
.end annotation


# instance fields
.field protected h:Z

.field protected i:I

.field protected j:I

.field protected k:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cx;-><init>()V

    return-void
.end method


# virtual methods
.method protected d()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->j:I

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->k:I

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->h:Z

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->i:I

    return-void
.end method

.method public final ﻐ()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->j:I

    return v0
.end method

.method public final ﻛ()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->h:Z

    return v0
.end method

.method public final ﾇ()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->k:I

    return v0
.end method

.method public final ﾒ()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hh;->i:I

    return v0
.end method
