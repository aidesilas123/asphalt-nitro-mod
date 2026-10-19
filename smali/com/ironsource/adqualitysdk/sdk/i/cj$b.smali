###### Class com.ironsource.adqualitysdk.sdk.i.cj.b (com.ironsource.adqualitysdk.sdk.i.cj$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cj$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/im;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cj;->D(Lcom/ironsource/adqualitysdk/sdk/i/dg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/dn;

.field private synthetic b:Lcom/ironsource/adqualitysdk/sdk/i/cj;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;Lcom/ironsource/adqualitysdk/sdk/i/dn;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$b;->b:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Landroid/view/View;)Z
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$b;->b:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->r(Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dr;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$b;->b:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾇ()Z

    move-result p1

    return p1
.end method
