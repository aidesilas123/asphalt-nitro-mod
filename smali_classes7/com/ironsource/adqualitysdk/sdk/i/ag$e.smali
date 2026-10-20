###### Class com.ironsource.adqualitysdk.sdk.i.ag.e (com.ironsource.adqualitysdk.sdk.i.ag$e)
.class Lcom/ironsource/adqualitysdk/sdk/i/ag$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ai$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ag;->ﻛ(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/ag;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$e;->a:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventGenerated(Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$e;->a:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->P(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Lcom/ironsource/adqualitysdk/sdk/i/a0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->o(Lorg/json/JSONObject;)Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$e;->a:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$e$a;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag$e$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag$e;)V

    invoke-static {v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->J(Lcom/ironsource/adqualitysdk/sdk/i/ag;Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method
