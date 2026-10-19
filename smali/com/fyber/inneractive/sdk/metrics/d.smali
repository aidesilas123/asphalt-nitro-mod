###### Class com.fyber.inneractive.sdk.metrics.d (com.fyber.inneractive.sdk.metrics.d)
.class public Lcom/fyber/inneractive/sdk/metrics/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/metrics/f;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->b:Ljava/lang/Long;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->d:Ljava/lang/Long;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->e:Ljava/lang/Long;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->f:Ljava/lang/Long;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->g:Ljava/lang/Long;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->h:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/Long;
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->g:Ljava/lang/Long;

    return-object v0
.end method

.method public c()Ljava/lang/Long;
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->f:Ljava/lang/Long;

    return-object v0
.end method

.method public f()Ljava/lang/Long;
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public g()Ljava/lang/Long;
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public h()Ljava/lang/Long;
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public i()Ljava/lang/Long;
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/metrics/d;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public j()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->b:Ljava/lang/Long;

    if-eqz v1, :cond_21

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/metrics/d;->a:Ljava/lang/Long;

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sdk_init_network_req"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->h:Ljava/lang/Long;

    if-eqz v1, :cond_3d

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/metrics/d;->b:Ljava/lang/Long;

    if-eqz v2, :cond_3d

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sdk_got_response_from_markup_url"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->d:Ljava/lang/Long;

    const-string v2, "sdk_parsed_res"

    if-eqz v1, :cond_59

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->h:Ljava/lang/Long;

    if-eqz v3, :cond_59

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->h:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->c:Ljava/lang/Long;

    if-eqz v1, :cond_75

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->b:Ljava/lang/Long;

    if-eqz v3, :cond_75

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "sdk_got_server_res"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->d:Ljava/lang/Long;

    if-eqz v1, :cond_8f

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->c:Ljava/lang/Long;

    if-eqz v3, :cond_8f

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8f
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->e:Ljava/lang/Long;

    if-eqz v1, :cond_ab

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/metrics/d;->d:Ljava/lang/Long;

    if-eqz v2, :cond_ab

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ad_loaded_result"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ab
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->f:Ljava/lang/Long;

    if-eqz v1, :cond_c7

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/metrics/d;->e:Ljava/lang/Long;

    if-eqz v2, :cond_c7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->e:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "publisher_notified"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c7
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->g:Ljava/lang/Long;

    if-eqz v1, :cond_e3

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/metrics/d;->a:Ljava/lang/Long;

    if-eqz v2, :cond_e3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "roundtrip"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MetricsCollectorData{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->a:Ljava/lang/Long;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->b:Ljava/lang/Long;

    if-eqz v1, :cond_27

    const-string v1, " sdk_init_network_req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_27
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->h:Ljava/lang/Long;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->b:Ljava/lang/Long;

    if-eqz v1, :cond_44

    const-string v1, ", sdk_got_response_from_markup_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->h:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_44
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->c:Ljava/lang/Long;

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->b:Ljava/lang/Long;

    if-eqz v1, :cond_61

    const-string v1, ", sdk_got_server_res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_61
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->d:Ljava/lang/Long;

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->c:Ljava/lang/Long;

    if-eqz v1, :cond_7e

    const-string v1, ", sdk_parsed_res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_7e
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->e:Ljava/lang/Long;

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->d:Ljava/lang/Long;

    if-eqz v1, :cond_9b

    const-string v1, ", ad_loaded_result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->f:Ljava/lang/Long;

    if-eqz v1, :cond_b8

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->e:Ljava/lang/Long;

    if-eqz v1, :cond_b8

    const-string v1, ", publisher_notified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->e:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_b8
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->g:Ljava/lang/Long;

    if-eqz v1, :cond_d5

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->a:Ljava/lang/Long;

    if-eqz v1, :cond_d5

    const-string v1, ", roundtrip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/metrics/d;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/metrics/d;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_d5
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
