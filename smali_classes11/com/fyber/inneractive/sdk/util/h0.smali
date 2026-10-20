###### Class com.fyber.inneractive.sdk.util.h0 (com.fyber.inneractive.sdk.util.h0)
.class public final Lcom/fyber/inneractive/sdk/util/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/util/h0$a;
    }
.end annotation


# direct methods
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-eqz p2, :cond_13

    :try_start_2
    instance-of v0, p2, Lcom/fyber/inneractive/sdk/util/h0$a;

    if-eqz v0, :cond_10

    check-cast p2, Lcom/fyber/inneractive/sdk/util/h0$a;

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/util/h0$a;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_13

    :cond_10
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    :goto_13
    return-void
.end method
