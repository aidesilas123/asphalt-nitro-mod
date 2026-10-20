###### Class com.bytedance.sdk.openadsdk.l.f.AnonymousClass8 (com.bytedance.sdk.openadsdk.l.f$8)
.class Lcom/bytedance/sdk/openadsdk/l/f$8;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/l/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/f$8;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "code"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/f$8;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/l/f;->c(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/f$8;->a:Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/l/f;->e(Lcom/bytedance/sdk/openadsdk/l/f;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/l/j;->a(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v1

    const-string v2, "PlayableJsBridge"

    const-string v3, "invoke close_gyro_observer error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codeMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
