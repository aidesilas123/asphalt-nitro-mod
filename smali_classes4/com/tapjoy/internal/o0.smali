###### Class com.tapjoy.internal.o0 (com.tapjoy.internal.o0)
.class public final Lcom/tapjoy/internal/o0;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lorg/json/JSONArray;

.field public final synthetic b:Lcom/tapjoy/TJCacheListener;

.field public final synthetic c:Lcom/tapjoy/TapjoyCache;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TapjoyCache;Lorg/json/JSONArray;Lcom/tapjoy/TJCacheListener;)V
    .registers 4

    iput-object p1, p0, Lcom/tapjoy/internal/o0;->c:Lcom/tapjoy/TapjoyCache;

    iput-object p2, p0, Lcom/tapjoy/internal/o0;->a:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/tapjoy/internal/o0;->b:Lcom/tapjoy/TJCacheListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const-string v0, "Caching thread failed: "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting to cache asset group size of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/o0;->a:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapjoyCache"

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_21
    iget-object v4, p0, Lcom/tapjoy/internal/o0;->a:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_43

    :try_start_29
    iget-object v4, p0, Lcom/tapjoy/internal/o0;->a:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/internal/o0;->c:Lcom/tapjoy/TapjoyCache;

    invoke-virtual {v5, v4}, Lcom/tapjoy/TapjoyCache;->c(Lorg/json/JSONObject;)Ljava/util/concurrent/Future;

    move-result-object v4

    if-eqz v4, :cond_40

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_3a} :catch_3b

    goto :goto_40

    :catch_3b
    const-string v4, "Failed to load JSON object from JSONArray"

    invoke-static {v2, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_43
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    :cond_49
    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    :try_start_55
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_5f} :catch_77
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_55 .. :try_end_5f} :catch_62

    if-nez v5, :cond_49

    goto :goto_8b

    :catch_62
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    :catch_77
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8b
    const/4 v3, 0x2

    goto :goto_49

    :cond_8d
    const-string v0, "Finished caching group"

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/o0;->b:Lcom/tapjoy/TJCacheListener;

    if-eqz v0, :cond_99

    invoke-interface {v0, v3}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V

    :cond_99
    return-void
.end method
