###### Class com.json.adqualitysdk.sdk.i.ip (com.ironsource.adqualitysdk.sdk.i.ip)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ip;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/ip$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/ironsource/adqualitysdk/sdk/i/ip$c;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ip;->a:Ljava/lang/String;

    iput-wide p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ip;->c:J

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/ip$c;

    invoke-direct {p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ip$c;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ip;->b:Lcom/ironsource/adqualitysdk/sdk/i/ip$c;

    return-void
.end method


# virtual methods
.method public final ﻐ()Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ip;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ip;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public final ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/ip$c;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ip;->b:Lcom/ironsource/adqualitysdk/sdk/i/ip$c;

    return-object v0
.end method

.method public final ｋ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ip;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final ﾒ()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ip;->c:J

    return-wide v0
.end method
