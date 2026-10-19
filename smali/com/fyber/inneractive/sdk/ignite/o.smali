###### Class com.fyber.inneractive.sdk.ignite.o (com.fyber.inneractive.sdk.ignite.o)
.class public Lcom/fyber/inneractive/sdk/ignite/o;
.super Lcom/digitalturbine/ignite/cl/aidl/IIgniteServiceCallback$Stub;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/ignite/n;

.field public final b:Lcom/fyber/inneractive/sdk/ignite/g$a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/ignite/n;Lcom/fyber/inneractive/sdk/ignite/g$a;)V
    .registers 3

    invoke-direct {p0}, Lcom/digitalturbine/ignite/cl/aidl/IIgniteServiceCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/ignite/o;->a:Lcom/fyber/inneractive/sdk/ignite/n;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/ignite/o;->b:Lcom/fyber/inneractive/sdk/ignite/g$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "taskId"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public onError(Ljava/lang/String;)V
    .registers 7

    const-string v0, "data"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "InstallCallback onError %s"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/ignite/o;->a:Lcom/fyber/inneractive/sdk/ignite/n;

    if-eqz v1, :cond_3f

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/ignite/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_16
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_28

    const-string v4, "message"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    :cond_28
    move-object v3, v2

    :goto_29
    :try_start_29
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3a

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3a} :catch_3a

    :catch_3a
    :cond_3a
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ignite/o;->a:Lcom/fyber/inneractive/sdk/ignite/n;

    invoke-interface {p1, v1, v3, v2}, Lcom/fyber/inneractive/sdk/ignite/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method public onProgress(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "InstallCallback onProgress %s"

    invoke-static {v2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_b
    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/ignite/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3f

    const-string v2, "progress"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3f

    const-string v2, "action"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "value"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ignite/o;->a:Lcom/fyber/inneractive/sdk/ignite/n;

    if-eqz p1, :cond_3f

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/fyber/inneractive/sdk/ignite/n;->a(Ljava/lang/String;ID)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_37} :catch_38

    goto :goto_3f

    :catch_38
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Failed to resolve progress data"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public onScheduled(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "InstallCallback onScheduled %s"

    invoke-static {v2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_b
    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/ignite/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_2a

    :try_start_f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "application"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "packageName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    const/4 p1, 0x0

    :goto_22
    :try_start_22
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/ignite/o;->a:Lcom/fyber/inneractive/sdk/ignite/n;

    if-eqz v2, :cond_31

    invoke-interface {v2, v0, p1}, Lcom/fyber/inneractive/sdk/ignite/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_31

    :catch_2a
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Failed to resolve taskId"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "InstallCallback onStart %s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ignite/o;->a:Lcom/fyber/inneractive/sdk/ignite/n;

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/ignite/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ignite/o;->a:Lcom/fyber/inneractive/sdk/ignite/n;

    invoke-interface {v0, p1}, Lcom/fyber/inneractive/sdk/ignite/n;->a(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "InstallCallback onSuccess %s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ignite/o;->a:Lcom/fyber/inneractive/sdk/ignite/n;

    if-eqz v0, :cond_60

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/ignite/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ignite/o;->a:Lcom/fyber/inneractive/sdk/ignite/n;

    invoke-interface {v0, p1}, Lcom/fyber/inneractive/sdk/ignite/n;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ignite/o;->b:Lcom/fyber/inneractive/sdk/ignite/g$a;

    if-eqz p1, :cond_60

    check-cast p1, Lcom/fyber/inneractive/sdk/ignite/c$b;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/ignite/c$b;->b:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/ignite/c$b;->a:Lcom/fyber/inneractive/sdk/ignite/c$d;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/ignite/c$d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4d

    new-instance v2, Lcom/fyber/inneractive/sdk/network/j0;

    new-instance v3, Lcom/fyber/inneractive/sdk/ignite/f;

    invoke-direct {v3, v0, v1}, Lcom/fyber/inneractive/sdk/ignite/f;-><init>(Lcom/fyber/inneractive/sdk/ignite/c;Ljava/lang/String;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/network/x;->a()Lcom/fyber/inneractive/sdk/network/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/network/x;->b()Lcom/fyber/inneractive/sdk/network/g;

    move-result-object v0

    invoke-direct {v2, v3, v1, v0}, Lcom/fyber/inneractive/sdk/network/j0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/g;)V

    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->s:Lcom/fyber/inneractive/sdk/network/y;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/y;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    sget-object v0, Lcom/fyber/inneractive/sdk/network/q0;->QUEUED:Lcom/fyber/inneractive/sdk/network/q0;

    invoke-virtual {v2, v0}, Lcom/fyber/inneractive/sdk/network/f0;->a(Lcom/fyber/inneractive/sdk/network/q0;)V

    :cond_4d
    iget-object p1, p1, Lcom/fyber/inneractive/sdk/ignite/c$b;->a:Lcom/fyber/inneractive/sdk/ignite/c$d;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/ignite/c$d;->b:Lcom/fyber/inneractive/sdk/flow/p;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/ignite/c$d;->c:Lcom/fyber/inneractive/sdk/ignite/k;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/p;->h:Lcom/fyber/inneractive/sdk/ignite/j;

    sget-object v1, Lcom/fyber/inneractive/sdk/network/r;->IGNITE_FLOW_INSTALL_DONE:Lcom/fyber/inneractive/sdk/network/r;

    if-nez p1, :cond_5b

    sget-object p1, Lcom/fyber/inneractive/sdk/ignite/k;->SINGLE_TAP:Lcom/fyber/inneractive/sdk/ignite/k;

    :cond_5b
    check-cast v0, Lcom/fyber/inneractive/sdk/flow/p$a;

    invoke-virtual {v0, v1, p1}, Lcom/fyber/inneractive/sdk/flow/p$a;->a(Lcom/fyber/inneractive/sdk/network/r;Lcom/fyber/inneractive/sdk/ignite/k;)V

    :cond_60
    return-void
.end method
