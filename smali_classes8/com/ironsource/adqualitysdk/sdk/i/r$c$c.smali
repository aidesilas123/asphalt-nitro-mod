###### Class com.ironsource.adqualitysdk.sdk.i.r.c.C0354c (com.ironsource.adqualitysdk.sdk.i.r$c$c)
.class Lcom/ironsource/adqualitysdk/sdk/i/r$c$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ah;


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

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$c;->a:Lcom/ironsource/adqualitysdk/sdk/i/r$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$c;->a:Lcom/ironsource/adqualitysdk/sdk/i/r$c;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c;->i:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->p(Lcom/ironsource/adqualitysdk/sdk/i/r;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ib;->Ṿ:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ik;->ﻛ(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/Object;)V

    return-void
.end method
