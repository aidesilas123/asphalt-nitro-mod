###### Class com.tapjoy.v0 (com.tapjoy.v0)
.class public final Lcom/tapjoy/v0;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tapjoy/TJPlacement;

.field public final synthetic c:Lcom/tapjoy/internal/a4;

.field public final synthetic d:Lcom/tapjoy/internal/b8;

.field public final synthetic e:Lcom/tapjoy/o;


# direct methods
.method public constructor <init>(Lcom/tapjoy/o;Ljava/lang/String;Lcom/tapjoy/TJPlacement;Lcom/tapjoy/internal/a4;Lcom/tapjoy/internal/b8;)V
    .registers 6

    iput-object p1, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iput-object p2, p0, Lcom/tapjoy/v0;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/v0;->b:Lcom/tapjoy/TJPlacement;

    iput-object p4, p0, Lcom/tapjoy/v0;->c:Lcom/tapjoy/internal/a4;

    iput-object p5, p0, Lcom/tapjoy/v0;->d:Lcom/tapjoy/internal/b8;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending content request for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v3, v3, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v3}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TJCorePlacement"

    invoke-static {v3, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    sget-object v3, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    iget-object v4, v2, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v4}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v5, v5, Lcom/tapjoy/o;->b:Landroid/content/Context;

    iget-object v3, v3, Lcom/tapjoy/internal/v1;->d:Lcom/tapjoy/internal/i1;

    iget-object v6, v3, Lcom/tapjoy/internal/i1;->a:Lcom/tapjoy/internal/v1;

    iget-object v6, v6, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    invoke-virtual {v6}, Lcom/tapjoy/internal/d3;->b()Lcom/tapjoy/internal/y;

    new-instance v6, Lcom/tapjoy/internal/k3;

    iget-object v3, v3, Lcom/tapjoy/internal/i1;->a:Lcom/tapjoy/internal/v1;

    invoke-direct {v6, v3, v4, v5}, Lcom/tapjoy/internal/k3;-><init>(Lcom/tapjoy/internal/v1;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v6, v2, Lcom/tapjoy/o;->k:Lcom/tapjoy/internal/k3;

    new-instance v2, Lcom/tapjoy/j0;

    invoke-direct {v2}, Lcom/tapjoy/j0;-><init>()V

    iget-object v3, p0, Lcom/tapjoy/v0;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v4, v4, Lcom/tapjoy/o;->c:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v5, v4}, Lcom/tapjoy/j0;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/h0;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v3, v3, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    iget v4, v2, Lcom/tapjoy/h0;->a:I

    invoke-virtual {v3, v4}, Lcom/tapjoy/w;->w(I)V

    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v3, v3, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    iget-object v4, v2, Lcom/tapjoy/h0;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tapjoy/w;->v(Ljava/lang/String;)V

    const-string v3, "x-tapjoy-prerender"

    invoke-virtual {v2, v3}, Lcom/tapjoy/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_75

    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v3, v3, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v3, v4}, Lcom/tapjoy/w;->B(Z)V

    :cond_75
    const-string v3, "X-Tapjoy-Debug"

    invoke-virtual {v2, v3}, Lcom/tapjoy/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_88

    const-string v5, "Tapjoy-Server-Debug: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "TJCorePlacement"

    invoke-static {v5, v3}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    const-string v3, "x-tapjoy-handle-dismiss-on-pause"

    invoke-virtual {v2, v3}, Lcom/tapjoy/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9d

    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v3, v3, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v3, v4}, Lcom/tapjoy/w;->t(Z)V

    :cond_9d
    iget-wide v5, v2, Lcom/tapjoy/h0;->g:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_bf

    iget-wide v9, v2, Lcom/tapjoy/h0;->f:J

    cmp-long v3, v9, v7

    if-lez v3, :cond_ac

    goto :goto_b0

    :cond_ac
    invoke-static {}, Lcom/tapjoy/internal/na;->a()J

    move-result-wide v9

    :goto_b0
    sub-long/2addr v5, v9

    cmp-long v3, v5, v7

    if-lez v3, :cond_c3

    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/tapjoy/o;->g:J

    goto :goto_c3

    :cond_bf
    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iput-wide v7, v3, Lcom/tapjoy/o;->g:J

    :cond_c3
    :goto_c3
    iget-object v3, p0, Lcom/tapjoy/v0;->b:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacement;->d()Lcom/tapjoy/TJPlacementListener;

    move-result-object v3

    if-eqz v3, :cond_2e1

    iget v3, v2, Lcom/tapjoy/h0;->a:I

    if-eqz v3, :cond_281

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_dc

    iget-object v2, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v3, p0, Lcom/tapjoy/v0;->b:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v2, v3}, Lcom/tapjoy/o;->c(Lcom/tapjoy/TJPlacement;)V

    goto/16 :goto_2e1

    :cond_dc
    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/tapjoy/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d1

    const-string v5, "json"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d1

    const-string v3, "X-Tapjoy-Disable-Preload"

    invoke-virtual {v2, v3}, Lcom/tapjoy/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14c

    :try_start_fe
    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v5, v2, Lcom/tapjoy/h0;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/tapjoy/o;->g(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iput-boolean v4, v3, Lcom/tapjoy/o;->p:Z

    const-string v5, "REQUEST"

    invoke-virtual {v3, v5}, Lcom/tapjoy/o;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tapjoy/o;->c(Lcom/tapjoy/TJPlacement;)V

    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    invoke-virtual {v3}, Lcom/tapjoy/o;->b()V
    :try_end_117
    .catch Lcom/tapjoy/f0; {:try_start_fe .. :try_end_117} :catch_119

    goto/16 :goto_2e1

    :catch_119
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for placement "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v3, v3, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v3}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v6, p0, Lcom/tapjoy/v0;->b:Lcom/tapjoy/TJPlacement;

    sget-object v7, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->c:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v8, Lcom/tapjoy/r;

    iget v2, v2, Lcom/tapjoy/h0;->a:I

    invoke-direct {v8, v2, v3}, Lcom/tapjoy/r;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/tapjoy/o;->d(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/r;)V

    goto/16 :goto_2e1

    :cond_14c
    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v5, v2, Lcom/tapjoy/h0;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_15c
    iget-object v5, v3, Lcom/tapjoy/o;->k:Lcom/tapjoy/internal/k3;

    iget-object v7, v3, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v7}, Lcom/tapjoy/w;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/tapjoy/internal/f8;->b(Ljava/net/URI;Ljava/io/ByteArrayInputStream;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/internal/z2;

    iget-object v6, v5, Lcom/tapjoy/internal/z2;->a:Lcom/tapjoy/internal/x0;

    iput-object v6, v3, Lcom/tapjoy/o;->l:Lcom/tapjoy/internal/x0;

    invoke-virtual {v6}, Lcom/tapjoy/internal/x0;->c()V

    iget-object v3, v5, Lcom/tapjoy/internal/z2;->a:Lcom/tapjoy/internal/x0;

    invoke-virtual {v3}, Lcom/tapjoy/internal/x0;->b()Z

    move-result v3

    if-nez v3, :cond_185

    const-string v3, "TJCorePlacement"

    const-string v5, "Failed to load fiverocks placement"

    invoke-static {v3, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_184} :catch_195
    .catch Lcom/tapjoy/internal/q2; {:try_start_15c .. :try_end_184} :catch_187

    goto :goto_1a2

    :cond_185
    const/4 v3, 0x1

    goto :goto_1a3

    :catch_187
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TJCorePlacement"

    invoke-static {v6, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a2

    :catch_195
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TJCorePlacement"

    invoke-static {v6, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1a2
    const/4 v3, 0x0

    :goto_1a3
    if-eqz v3, :cond_1b9

    iget-object v2, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iput-boolean v4, v2, Lcom/tapjoy/o;->p:Z

    const-string v3, "REQUEST"

    invoke-virtual {v2, v3}, Lcom/tapjoy/o;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tapjoy/o;->c(Lcom/tapjoy/TJPlacement;)V

    iget-object v2, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    invoke-virtual {v2}, Lcom/tapjoy/o;->b()V

    goto/16 :goto_2e1

    :cond_1b9
    iget-object v3, v2, Lcom/tapjoy/h0;->d:Ljava/lang/String;

    if-nez v3, :cond_1bf

    const-string v3, "asset error"

    :cond_1bf
    iget-object v5, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v6, p0, Lcom/tapjoy/v0;->b:Lcom/tapjoy/TJPlacement;

    sget-object v7, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->c:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v8, Lcom/tapjoy/r;

    iget v2, v2, Lcom/tapjoy/h0;->a:I

    invoke-direct {v8, v2, v3}, Lcom/tapjoy/r;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/tapjoy/o;->d(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/r;)V

    goto/16 :goto_2e1

    :cond_1d1
    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iput-boolean v4, v3, Lcom/tapjoy/o;->p:Z

    const-string v5, "REQUEST"

    invoke-virtual {v3, v5}, Lcom/tapjoy/o;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tapjoy/o;->c(Lcom/tapjoy/TJPlacement;)V

    iget-object v3, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    new-instance v5, Lcom/tapjoy/internal/y3;

    invoke-direct {v5, p0}, Lcom/tapjoy/internal/y3;-><init>(Lcom/tapjoy/v0;)V

    const-string v6, "Begin caching content for placement "

    const-string v7, "Placement caching limit reached. No content will be cached for placement "

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Checking if there is content to cache for placement "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v9}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TJCorePlacement"

    invoke-static {v9, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "x-tapjoy-cacheable-assets"

    invoke-virtual {v2, v8}, Lcom/tapjoy/h0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x2

    :try_start_209
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->canCachePlacement()Z

    move-result v9

    if-nez v9, :cond_22b

    const-string v2, "TJCorePlacement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v3}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/tapjoy/internal/y3;->onCachingComplete(I)V

    goto/16 :goto_2e1

    :cond_22b
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_260

    const-string v2, "TJCorePlacement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v6}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->incrementPlacementCacheCount()V

    iput-boolean v4, v3, Lcom/tapjoy/o;->i:Z

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    new-instance v3, Lcom/tapjoy/internal/n6;

    invoke-direct {v3, v5}, Lcom/tapjoy/internal/n6;-><init>(Lcom/tapjoy/internal/y3;)V

    invoke-virtual {v2, v7, v3}, Lcom/tapjoy/TapjoyCache;->e(Lorg/json/JSONArray;Lcom/tapjoy/TJCacheListener;)V

    goto/16 :goto_2e1

    :cond_260
    invoke-virtual {v5, v4}, Lcom/tapjoy/internal/y3;->onCachingComplete(I)V
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_263} :catch_265

    goto/16 :goto_2e1

    :catch_265
    move-exception v2

    invoke-virtual {v5, v8}, Lcom/tapjoy/internal/y3;->onCachingComplete(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Error while handling placement cache: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TJCorePlacement"

    invoke-static {v3, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e1

    :cond_281
    iget-object v3, p0, Lcom/tapjoy/v0;->c:Lcom/tapjoy/internal/a4;

    iget-object v5, p0, Lcom/tapjoy/v0;->d:Lcom/tapjoy/internal/b8;

    iget-wide v5, v5, Lcom/tapjoy/internal/b8;->f:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_28a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v3, Lcom/tapjoy/internal/a4;->b:J

    sub-long/2addr v9, v11

    add-long/2addr v9, v5

    iget-wide v5, v3, Lcom/tapjoy/internal/a4;->a:J
    :try_end_294
    .catch Ljava/lang/NullPointerException; {:try_start_28a .. :try_end_294} :catch_29b

    cmp-long v3, v9, v5

    if-lez v3, :cond_299

    goto :goto_29b

    :cond_299
    const/4 v3, 0x0

    goto :goto_29c

    :catch_29b
    :goto_29b
    const/4 v3, 0x1

    :goto_29c
    if-eqz v3, :cond_2b5

    iget-object v3, v2, Lcom/tapjoy/h0;->d:Ljava/lang/String;

    if-nez v3, :cond_2a4

    const-string v3, "network error"

    :cond_2a4
    iget-object v5, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v6, p0, Lcom/tapjoy/v0;->b:Lcom/tapjoy/TJPlacement;

    sget-object v7, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->e:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v8, Lcom/tapjoy/r;

    iget v2, v2, Lcom/tapjoy/h0;->a:I

    invoke-direct {v8, v2, v3}, Lcom/tapjoy/r;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/tapjoy/o;->d(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/r;)V

    goto :goto_2e1

    :cond_2b5
    iget-object v2, p0, Lcom/tapjoy/v0;->d:Lcom/tapjoy/internal/b8;

    iget-wide v5, v2, Lcom/tapjoy/internal/b8;->f:J

    long-to-double v9, v5

    iget-wide v11, v2, Lcom/tapjoy/internal/b8;->e:D

    mul-double v9, v9, v11

    double-to-long v9, v9

    iget-wide v11, v2, Lcom/tapjoy/internal/b8;->c:J

    cmp-long v3, v9, v11

    if-gez v3, :cond_2c7

    :goto_2c5
    move-wide v9, v11

    goto :goto_2ce

    :cond_2c7
    iget-wide v11, v2, Lcom/tapjoy/internal/b8;->d:J

    cmp-long v3, v9, v11

    if-lez v3, :cond_2ce

    goto :goto_2c5

    :cond_2ce
    :goto_2ce
    iput-wide v9, v2, Lcom/tapjoy/internal/b8;->f:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_2df

    monitor-enter v2

    :try_start_2d5
    invoke-virtual {v2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2d8
    .catch Ljava/lang/InterruptedException; {:try_start_2d5 .. :try_end_2d8} :catch_2db
    .catchall {:try_start_2d5 .. :try_end_2d8} :catchall_2d9

    goto :goto_2db

    :catchall_2d9
    move-exception v0

    goto :goto_2dd

    :catch_2db
    :goto_2db
    :try_start_2db
    monitor-exit v2

    goto :goto_2df

    :goto_2dd
    monitor-exit v2
    :try_end_2de
    .catchall {:try_start_2db .. :try_end_2de} :catchall_2d9

    throw v0

    :cond_2df
    :goto_2df
    const/4 v2, 0x0

    goto :goto_2e6

    :cond_2e1
    :goto_2e1
    iget-object v2, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iput-boolean v0, v2, Lcom/tapjoy/o;->n:Z

    const/4 v2, 0x1

    :goto_2e6
    if-nez v2, :cond_2f8

    iget-object v2, p0, Lcom/tapjoy/v0;->e:Lcom/tapjoy/o;

    iget-object v2, v2, Lcom/tapjoy/o;->c:Ljava/util/Map;

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "retry"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2f8
    return-void
.end method
