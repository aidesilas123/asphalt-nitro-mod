###### Class com.json.adqualitysdk.sdk.i.b0 (com.ironsource.adqualitysdk.sdk.i.b0)
.class final Lcom/ironsource/adqualitysdk/sdk/i/b0;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/p;

.field private synthetic e:Lorg/json/JSONObject;

.field private synthetic f:Ljava/lang/Object;

.field private synthetic g:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/p;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->d:Lcom/ironsource/adqualitysdk/sdk/i/p;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->e:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->f:Ljava/lang/Object;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->g:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->d:Lcom/ironsource/adqualitysdk/sdk/i/p;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->e:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->f:Ljava/lang/Object;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->g:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/p;->ﻐ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
