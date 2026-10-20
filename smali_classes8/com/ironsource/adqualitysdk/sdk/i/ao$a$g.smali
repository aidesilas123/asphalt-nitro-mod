###### Class com.ironsource.adqualitysdk.sdk.i.ao.a.g (com.ironsource.adqualitysdk.sdk.i.ao$a$g)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ao$a$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ju$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ao$a;->ﻛ()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/ju$a<",
        "Lcom/ironsource/adqualitysdk/sdk/i/au;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ｋ(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/au;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/au;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
