###### Class com.applovin.impl.mediation.a.c (com.applovin.impl.mediation.a.c)
.class public Lcom/applovin/impl/mediation/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aus:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_b

    :cond_6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_b
    iput-object p1, p0, Lcom/applovin/impl/mediation/a/c;->aus:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public mN()I
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->aus:Lorg/json/JSONObject;

    const-string v1, "background_color"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_12

    :cond_10
    const/high16 v0, -0x1000000

    :goto_12
    return v0
.end method

.method public xn()I
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->aus:Lorg/json/JSONObject;

    const-string v1, "close_button_top_margin"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public xo()I
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->aus:Lorg/json/JSONObject;

    const-string v1, "close_button_h_margin"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public xp()I
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->aus:Lorg/json/JSONObject;

    const-string v1, "close_button_size"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public xq()I
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->aus:Lorg/json/JSONObject;

    const-string v1, "close_button_extended_touch_area_size"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public xr()J
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->aus:Lorg/json/JSONObject;

    const-string v1, "close_button_delay_ms"

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
