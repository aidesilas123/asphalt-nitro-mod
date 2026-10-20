###### Class com.ironsource.adqualitysdk.sdk.i.ag.c (com.ironsource.adqualitysdk.sdk.i.ag$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ag$c;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ag;->N(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Ljava/util/List;

.field private synthetic e:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/util/List;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$c;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$c;->e:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ah;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$c;->e:Lorg/json/JSONObject;

    invoke-interface {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ah;->onEventReceived(Lorg/json/JSONObject;)V

    goto :goto_6

    :cond_18
    return-void
.end method
