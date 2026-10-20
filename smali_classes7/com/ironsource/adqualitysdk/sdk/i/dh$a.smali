###### Class com.ironsource.adqualitysdk.sdk.i.dh.a (com.ironsource.adqualitysdk.sdk.i.dh$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/dh$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ju$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/dh;->ﱡ()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/ju$a<",
        "Lcom/ironsource/adqualitysdk/sdk/i/di;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/dh;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dh;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ｋ(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/di;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dh$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/dh;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/dh;->b(Lcom/ironsource/adqualitysdk/sdk/i/dh;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/di;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method
