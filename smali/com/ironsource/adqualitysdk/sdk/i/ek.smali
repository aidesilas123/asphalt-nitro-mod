###### Class com.json.adqualitysdk.sdk.i.ek (com.ironsource.adqualitysdk.sdk.i.ek)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ek;
.super Lcom/ironsource/adqualitysdk/sdk/i/dx;
.source ""


# instance fields
.field private e:Lcom/ironsource/adqualitysdk/sdk/i/ej;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ej;Lcom/ironsource/adqualitysdk/sdk/i/do;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ek;->e:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    return-void
.end method


# virtual methods
.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ek;->e:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾒ()Ljava/lang/Number;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ek;->e:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ej;->ｋ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dr;->ﾒ(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2
.end method
