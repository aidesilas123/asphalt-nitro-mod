###### Class com.bytedance.sdk.openadsdk.n.a.a (com.bytedance.sdk.openadsdk.n.a.a)
.class public Lcom/bytedance/sdk/openadsdk/n/a/a;
.super Ljava/lang/Object;
.source "PAGAdViewInfo.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F


# direct methods
.method public constructor <init>(IIF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/n/a/a;->a:I

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/n/a/a;->b:I

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/n/a/a;->c:F

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/n/a/a;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/n/a/a;->a:I

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/n/a/a;->b:I

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/n/a/a;->c:F

    float-to-double v1, p0

    const-string p0, "alpha"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method
