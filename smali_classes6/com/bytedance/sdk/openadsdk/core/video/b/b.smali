###### Class com.bytedance.sdk.openadsdk.core.video.b.b (com.bytedance.sdk.openadsdk.core.video.b.b)
.class public Lcom/bytedance/sdk/openadsdk/core/video/b/b;
.super Ljava/lang/Object;
.source "PlayableEvent.java"


# direct methods
.method public static a(Lcom/bytedance/sdk/openadsdk/core/model/q;)V
    .registers 4

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    const-string v1, "playable_preload"

    const-string v2, "preload_start"

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/b/c;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_e
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/model/q;ILjava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_2d

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->k(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_13
    const-string v1, "error_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "error_reason"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_26

    :catch_1e
    move-exception p1

    const-string p2, "PlayableEvent"

    const-string v1, "onFail json error"

    invoke-static {p2, v1, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_26
    const-string p1, "playable_preload"

    const-string p2, "preload_fail"

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/b/c;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2d
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/model/q;JJ)V
    .registers 7

    if-eqz p0, :cond_2d

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->k(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_13
    const-string v1, "loadzip_success_time"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "unzip_success_time"

    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_26

    :catch_1e
    move-exception p1

    const-string p2, "PlayableEvent"

    const-string p3, "onSuccess json error"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_26
    const-string p1, "playable_preload"

    const-string p2, "preload_success"

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/b/c;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2d
    return-void
.end method
