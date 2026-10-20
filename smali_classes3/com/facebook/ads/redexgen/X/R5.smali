###### Class com.facebook.ads.redexgen.X.R5 (com.facebook.ads.redexgen.X.R5)
.class public final Lcom/facebook/ads/redexgen/X/R5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/R4;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 6

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v3, 0x0

    if-eq v1, v0, :cond_c

    return v3

    :cond_c
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_28

    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/R4;->A00(Lorg/json/JSONArray;I)Lcom/facebook/ads/redexgen/X/R4;

    move-result-object v1

    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/R4;->A00(Lorg/json/JSONArray;I)Lcom/facebook/ads/redexgen/X/R4;

    move-result-object v0

    if-eq v1, v0, :cond_1e

    return v3

    :cond_1e
    invoke-virtual {v1, p0, p1, v2}, Lcom/facebook/ads/redexgen/X/R4;->A05(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Z

    move-result v0

    if-nez v0, :cond_25

    return v3

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic A01(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/R5;->A00(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result p0

    return p0
.end method

.method public static A02(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 7

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v4, 0x0

    if-eq v1, v0, :cond_c

    return v4

    :cond_c
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    return v4

    :cond_23
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/R4;->A01(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/R4;

    move-result-object v1

    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/R4;->A01(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/R4;

    move-result-object v0

    if-eq v1, v0, :cond_2e

    return v4

    :cond_2e
    invoke-virtual {v1, p0, p1, v2}, Lcom/facebook/ads/redexgen/X/R4;->A07(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    return v4

    :cond_35
    const/4 v0, 0x1

    return v0
.end method
