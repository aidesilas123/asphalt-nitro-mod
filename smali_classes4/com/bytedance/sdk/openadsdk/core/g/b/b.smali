###### Class com.bytedance.sdk.openadsdk.core.g.b.b (com.bytedance.sdk.openadsdk.core.g.b.b)
.class public Lcom/bytedance/sdk/openadsdk/core/g/b/b;
.super Lcom/bytedance/sdk/openadsdk/core/g/b/c;
.source "VastFractionalProgressTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/g/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/core/g/b/c;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/sdk/openadsdk/core/g/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:F


# direct methods
.method private constructor <init>(FLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/g/b/c$c;Ljava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/g/b/c$c;Ljava/lang/Boolean;)V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/b;->a:F

    return-void
.end method

.method synthetic constructor <init>(FLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/g/b/c$c;Ljava/lang/Boolean;Lcom/bytedance/sdk/openadsdk/core/g/b/b$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/g/b/b;-><init>(FLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/g/b/c$c;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/g/b/b;)I
    .registers 4

    if-eqz p1, :cond_13

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/b;->a:F

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/g/b/b;->a:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_b

    goto :goto_13

    :cond_b
    cmpg-float p1, v0, p1

    if-gez p1, :cond_11

    const/4 p1, -0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public a(F)Z
    .registers 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/b;->a:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_e

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;->e()Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public b()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/b;->a:F

    float-to-double v1, v1

    const-string v3, "trackingFraction"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/g/b/b;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/g/b/b;)I

    move-result p1

    return p1
.end method

.method public h_()V
    .registers 3

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/g/b/c;->h_()V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/b/b;->a:F

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_c

    goto :goto_10

    :cond_c
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    :goto_10
    return-void
.end method
