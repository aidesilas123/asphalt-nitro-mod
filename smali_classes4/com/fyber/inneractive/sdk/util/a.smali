###### Class com.fyber.inneractive.sdk.util.a (com.fyber.inneractive.sdk.util.a)
.class public Lcom/fyber/inneractive/sdk/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

.field public b:Z

.field public c:Z

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/util/a;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/util/a;->d:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/util/a;->e:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/util/a;->f:J

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/util/a;->d:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/util/a;->e:J

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/util/a;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/util/a;->b:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 12

    const-string v0, "Got exception adding param to json object: %s, %s"

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/util/a;->b:Z

    if-eqz v1, :cond_7f

    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/util/a;->d:J

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/util/a;->f:J

    invoke-static {v1, v2, v3, v4}, Lcom/fyber/inneractive/sdk/util/w;->a(JJ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/util/a;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    invoke-interface {v2}, Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;->getAdContent()Lcom/fyber/inneractive/sdk/flow/q;

    move-result-object v2

    goto :goto_19

    :cond_18
    move-object v2, v3

    :goto_19
    new-instance v4, Lcom/fyber/inneractive/sdk/network/s$a;

    iget-boolean v5, p0, Lcom/fyber/inneractive/sdk/util/a;->c:Z

    if-eqz v5, :cond_22

    sget-object v5, Lcom/fyber/inneractive/sdk/network/r;->USER_SKIP_ACTION_LATENCY:Lcom/fyber/inneractive/sdk/network/r;

    goto :goto_24

    :cond_22
    sget-object v5, Lcom/fyber/inneractive/sdk/network/r;->USER_CLOSE_ACTION_LATENCY:Lcom/fyber/inneractive/sdk/network/r;

    :goto_24
    if-eqz v2, :cond_29

    iget-object v6, v2, Lcom/fyber/inneractive/sdk/flow/q;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    goto :goto_2a

    :cond_29
    move-object v6, v3

    :goto_2a
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/flow/q;->d()Lcom/fyber/inneractive/sdk/response/e;

    move-result-object v7

    goto :goto_32

    :cond_31
    move-object v7, v3

    :goto_32
    if-eqz v2, :cond_3d

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/flow/q;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/config/global/s;->c()Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_3e

    :cond_3d
    move-object v2, v3

    :goto_3e
    invoke-direct {v4, v5, v6, v7, v2}, Lcom/fyber/inneractive/sdk/network/s$a;-><init>(Lcom/fyber/inneractive/sdk/network/r;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lorg/json/JSONArray;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v5, p0, Lcom/fyber/inneractive/sdk/util/a;->c:Z

    if-eqz v5, :cond_4d

    const-string v5, "skip_action_latency"

    goto :goto_4f

    :cond_4d
    const-string v5, "close_action_latency"

    :goto_4f
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    :try_start_52
    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5f

    :catch_56
    new-array v9, v8, [Ljava/lang/Object;

    aput-object v5, v9, v7

    aput-object v1, v9, v6

    invoke-static {v0, v9}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "origin"

    :try_start_67
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_74

    :catch_6b
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    aput-object p1, v5, v6

    invoke-static {v0, v5}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_74
    :goto_74
    iget-object p1, v4, Lcom/fyber/inneractive/sdk/network/s$a;->f:Lorg/json/JSONArray;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lcom/fyber/inneractive/sdk/network/s$a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/util/a;->a()V

    :cond_7f
    return-void
.end method

.method public a(Z)V
    .registers 9

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/util/a;->c:Z

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/util/a;->b:Z

    const-string v1, "skip"

    const-string v2, "close"

    const-string v3, "AdExperienceLatency: "

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v0, :cond_27

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v3, v0, v4

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    move-object v1, v2

    :goto_17
    aput-object v1, v0, v6

    const-string p1, "%s%s timer started"

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/util/a;->d:J

    iput-boolean v6, p0, Lcom/fyber/inneractive/sdk/util/a;->b:Z

    goto :goto_36

    :cond_27
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v3, v0, v4

    if-eqz p1, :cond_2e

    goto :goto_2f

    :cond_2e
    move-object v1, v2

    :goto_2f
    aput-object v1, v0, v6

    const-string p1, "%s%s timer could not start. Timer is in action!"

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_36
    return-void
.end method

.method public b()V
    .registers 7

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/util/a;->b:Z

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/util/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/fyber/inneractive/sdk/util/a;->e:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/fyber/inneractive/sdk/util/a;->f:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/fyber/inneractive/sdk/util/a;->f:J

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/util/a;->e:J

    :cond_1a
    return-void
.end method
