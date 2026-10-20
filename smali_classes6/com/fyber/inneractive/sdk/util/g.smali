###### Class com.fyber.inneractive.sdk.util.g (com.fyber.inneractive.sdk.util.g)
.class public Lcom/fyber/inneractive/sdk/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;Lcom/fyber/inneractive/sdk/config/i;)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->isFullscreenUnit()Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_9
    const-string p0, "use_fraud_detection_fullscreen"

    invoke-virtual {p1, p0, v0}, Lcom/fyber/inneractive/sdk/config/i;->a(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :cond_13
    :goto_13
    return v0
.end method
