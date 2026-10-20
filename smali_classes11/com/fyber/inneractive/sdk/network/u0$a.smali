###### Class com.fyber.inneractive.sdk.network.u0.a (com.fyber.inneractive.sdk.network.u0$a)
.class public Lcom/fyber/inneractive/sdk/network/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/network/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/network/u0;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/u0;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/u0$a;->a:Lcom/fyber/inneractive/sdk/network/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const-string v0, "Got exception adding param to json object: %s, %s"

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/u0$a;->a:Lcom/fyber/inneractive/sdk/network/u0;

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/network/u0;->b:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fyber/inneractive/sdk/network/c0;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/network/u0$a;->a:Lcom/fyber/inneractive/sdk/network/u0;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/network/u0;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2c

    invoke-interface {v2}, Lcom/fyber/inneractive/sdk/network/c0;->p()Lcom/fyber/inneractive/sdk/network/q0;

    move-result-object v6

    sget-object v7, Lcom/fyber/inneractive/sdk/network/q0;->DONE:Lcom/fyber/inneractive/sdk/network/q0;

    if-eq v6, v7, :cond_2c

    invoke-interface {v2}, Lcom/fyber/inneractive/sdk/network/c0;->p()Lcom/fyber/inneractive/sdk/network/q0;

    move-result-object v6

    sget-object v7, Lcom/fyber/inneractive/sdk/network/q0;->RESOLVED:Lcom/fyber/inneractive/sdk/network/q0;

    if-eq v6, v7, :cond_2c

    const/4 v6, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v6, 0x0

    :goto_2d
    if-eqz v6, :cond_da

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/network/u0;->a(Lcom/fyber/inneractive/sdk/network/c0;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_c2

    const-string v6, ""

    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-static {v8}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4c

    :cond_4b
    move-object v3, v6

    :goto_4c
    if-eqz v2, :cond_52

    invoke-interface {v2}, Lcom/fyber/inneractive/sdk/network/c0;->a()Ljava/lang/String;

    move-result-object v6

    :cond_52
    instance-of v8, v2, Lcom/fyber/inneractive/sdk/network/d0;

    const/4 v9, 0x0

    if-eqz v8, :cond_5d

    move-object v8, v2

    check-cast v8, Lcom/fyber/inneractive/sdk/network/d0;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/network/d0;->r:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    goto :goto_5e

    :cond_5d
    move-object v8, v9

    :goto_5e
    instance-of v10, v2, Lcom/fyber/inneractive/sdk/network/n0;

    if-eqz v10, :cond_68

    move-object v10, v2

    check-cast v10, Lcom/fyber/inneractive/sdk/network/n0;

    iget-object v10, v10, Lcom/fyber/inneractive/sdk/network/n0;->u:Lcom/fyber/inneractive/sdk/response/e;

    goto :goto_69

    :cond_68
    move-object v10, v9

    :goto_69
    new-instance v11, Lcom/fyber/inneractive/sdk/network/s$a;

    sget-object v12, Lcom/fyber/inneractive/sdk/network/r;->NETWORK_REQUEST_PASSED_ALLOWED_TIME:Lcom/fyber/inneractive/sdk/network/r;

    if-eqz v2, :cond_7e

    invoke-interface {v2}, Lcom/fyber/inneractive/sdk/network/c0;->m()Lcom/fyber/inneractive/sdk/config/global/s;

    move-result-object v13

    if-eqz v13, :cond_7e

    invoke-interface {v2}, Lcom/fyber/inneractive/sdk/network/c0;->m()Lcom/fyber/inneractive/sdk/config/global/s;

    move-result-object v13

    invoke-virtual {v13}, Lcom/fyber/inneractive/sdk/config/global/s;->c()Lorg/json/JSONArray;

    move-result-object v13

    goto :goto_7f

    :cond_7e
    move-object v13, v9

    :goto_7f
    invoke-direct {v11, v12, v8, v10, v13}, Lcom/fyber/inneractive/sdk/network/s$a;-><init>(Lcom/fyber/inneractive/sdk/network/r;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lorg/json/JSONArray;)V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "url"

    :try_start_89
    invoke-virtual {v8, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_96

    :catch_8d
    new-array v12, v7, [Ljava/lang/Object;

    aput-object v10, v12, v5

    aput-object v6, v12, v4

    invoke-static {v0, v12}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_96
    const-string v6, "stack_trace"

    :try_start_98
    invoke-virtual {v8, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_a5

    :catch_9c
    new-array v10, v7, [Ljava/lang/Object;

    aput-object v6, v10, v5

    aput-object v3, v10, v4

    invoke-static {v0, v10}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a5
    const-string v3, "total_time"

    iget v6, v1, Lcom/fyber/inneractive/sdk/network/u0;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :try_start_ad
    invoke-virtual {v8, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_ba

    :catch_b1
    new-array v10, v7, [Ljava/lang/Object;

    aput-object v3, v10, v5

    aput-object v6, v10, v4

    invoke-static {v0, v10}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_ba
    iget-object v0, v11, Lcom/fyber/inneractive/sdk/network/s$a;->f:Lorg/json/JSONArray;

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v11, v9}, Lcom/fyber/inneractive/sdk/network/s$a;->a(Ljava/lang/String;)V

    :cond_c2
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    iget v1, v1, Lcom/fyber/inneractive/sdk/network/u0;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "%s : NetworkWatchdogHolder should cancel by timeout: %d"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/fyber/inneractive/sdk/network/c0;->d()V

    :cond_da
    return-void
.end method
