###### Class com.bytedance.sdk.openadsdk.core.b.AnonymousClass2 (com.bytedance.sdk.openadsdk.core.b$2)
.class final Lcom/bytedance/sdk/openadsdk/core/b$2;
.super Lcom/bytedance/sdk/component/g/h;
.source "AdInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/b;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/g/a;JLcom/bytedance/sdk/openadsdk/core/g/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/g/a;

.field final synthetic b:J

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/g/a/b$a;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/model/q;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/g/a;JLcom/bytedance/sdk/openadsdk/core/g/a/b$a;Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;)V
    .registers 8

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->b:J

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/g/a/b$a;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->d:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_ab

    const-string v2, "reason_code"

    const-string v3, "load_vast_fail"

    const-string v4, "error_code"

    if-eqz v1, :cond_5d

    :try_start_f
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->h()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v1, v5, v7

    if-gtz v1, :cond_32

    goto :goto_55

    :cond_32
    const-string v1, "duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->b:J

    sub-long/2addr v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/g/a/b$a;

    if-eqz v1, :cond_52

    const-string v2, "wrapper_count"

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/g/a/b$a;->b:I

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "impression_links_null"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/g/a/b$a;

    iget-boolean v2, v2, Lcom/bytedance/sdk/openadsdk/core/g/a/b$a;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_52
    const-string v3, "load_vast_success"

    goto :goto_6a

    :cond_55
    :goto_55
    const/4 v1, -0x3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_6a

    :cond_5d
    const/4 v1, -0x2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/g/a/b$a;

    if-eqz v1, :cond_6a

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/g/a/b$a;->a:I

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6a
    :goto_6a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->d:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/b/c;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->b()Lcom/bytedance/sdk/openadsdk/core/g/b;

    move-result-object v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->b()Lcom/bytedance/sdk/openadsdk/core/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ab

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_90} :catch_ab

    const/16 v1, 0x3e8

    :try_start_92
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "description"

    const-string v2, "1000:Image url is null"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_9c

    :catchall_9c
    :try_start_9c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->d:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->e:Ljava/lang/String;

    const-string v3, "load_vast_icon_fail"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/b/c;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/g/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/b;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_ab} :catch_ab

    :catch_ab
    :cond_ab
    return-void
.end method
