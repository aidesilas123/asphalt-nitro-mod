###### Class com.ironsource.adqualitysdk.sdk.i.ai.a.C0335a (com.ironsource.adqualitysdk.sdk.i.ai$a$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lorg/json/JSONObject;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/ai$a;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ai$a;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ai$a;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ai$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/ai$e;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ai$a$a;->d:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ai$e;->onEventGenerated(Lorg/json/JSONObject;)V

    return-void
.end method
