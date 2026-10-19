###### Class com.bytedance.sdk.openadsdk.b.o.AnonymousClass10 (com.bytedance.sdk.openadsdk.b.o$10)
.class Lcom/bytedance/sdk/openadsdk/b/o$10;
.super Ljava/lang/Object;
.source "WebviewTimeTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/o;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/b/o;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/b/o;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "WebviewTimeTrack"

    const-string v1, "webview_time_track"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/b/o;->e(Lcom/bytedance/sdk/openadsdk/b/o;)Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/b/o;->c(Lcom/bytedance/sdk/openadsdk/b/o;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/b/o;->c(Lcom/bytedance/sdk/openadsdk/b/o;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_34

    :try_start_21
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/b/o;->b(Lcom/bytedance/sdk/openadsdk/b/o;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "native_switchBackgroundAndForeground"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/b/o;->c(Lcom/bytedance/sdk/openadsdk/b/o;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    nop

    :cond_34
    :goto_34
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/b/o;->d(Lcom/bytedance/sdk/openadsdk/b/o;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/b/o;->d(Lcom/bytedance/sdk/openadsdk/b/o;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_59

    :try_start_48
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/b/o;->b(Lcom/bytedance/sdk/openadsdk/b/o;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "intercept_source"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/b/o;->d(Lcom/bytedance/sdk/openadsdk/b/o;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_59} :catch_59

    :catch_59
    :cond_59
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_5e
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/b/o;->b(Lcom/bytedance/sdk/openadsdk/b/o;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_67} :catch_68

    goto :goto_6e

    :catch_68
    move-exception v3

    const-string v4, "trySendTrackInfo json error"

    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/h;->q()Z

    move-result v3

    if-eqz v3, :cond_8d

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/b/o;->b(Lcom/bytedance/sdk/openadsdk/b/o;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_8d

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/b/o;->b(Lcom/bytedance/sdk/openadsdk/b/o;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/b/o;->a(Lcom/bytedance/sdk/openadsdk/b/o;)Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/o$10;->a:Lcom/bytedance/sdk/openadsdk/b/o;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/b/o;->f(Lcom/bytedance/sdk/openadsdk/b/o;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/c;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
