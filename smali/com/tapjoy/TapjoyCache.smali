###### Class com.tapjoy.TapjoyCache (com.tapjoy.TapjoyCache)
.class public Lcom/tapjoy/TapjoyCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyCache$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Lcom/tapjoy/TapjoyCache;


# instance fields
.field public final c:Landroid/content/Context;

.field public d:Lcom/tapjoy/b0;

.field public final e:Ljava/util/Vector;

.field public final f:Ljava/util/concurrent/ExecutorService;

.field public g:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tapjoy/TapjoyCache;->b:Lcom/tapjoy/TapjoyCache;

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/tapjoy/TapjoyCache;->a:Z

    if-eqz v0, :cond_28

    :cond_b
    sput-object p0, Lcom/tapjoy/TapjoyCache;->b:Lcom/tapjoy/TapjoyCache;

    iput-object p1, p0, Lcom/tapjoy/TapjoyCache;->c:Landroid/content/Context;

    new-instance v0, Lcom/tapjoy/b0;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/b0;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->d:Lcom/tapjoy/b0;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/TapjoyCache;->e:Ljava/util/Vector;

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TapjoyCache;->f:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCache;->b()V

    :cond_28
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "http:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_e
    :try_start_e
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid URL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TapjoyCache"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyCache;
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyCache;->b:Lcom/tapjoy/TapjoyCache;

    return-object v0
.end method

.method public static setInstance(Lcom/tapjoy/TapjoyCache;)V
    .registers 1

    sput-object p0, Lcom/tapjoy/TapjoyCache;->b:Lcom/tapjoy/TapjoyCache;

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 14

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "tapjoy"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "tjcache/tmp/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    :cond_22
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/Tapjoy/Cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "TapjoyCache"

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Created directory at: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyCache;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    :cond_68
    const-string v0, "Error initalizing cache"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyCache;->b:Lcom/tapjoy/TapjoyCache;

    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "tapjoyCacheData"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_89
    :goto_89
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Ljava/io/File;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_156

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_156

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tapjoy/TapjoyCachedAssetData;->fromRawJSONString(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v4

    const-string v5, "Removing asset because deserialization failed."

    if-eqz v4, :cond_144

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Loaded Asset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCachedAssetData;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCachedAssetData;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_132

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_132

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_132

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCachedAssetData;->g()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    cmp-long v3, v7, v9

    if-gez v3, :cond_12b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Asset expired, removing from cache: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCachedAssetData;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCachedAssetData;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_89

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCachedAssetData;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_89

    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCachedAssetData;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    goto/16 :goto_89

    :cond_12b
    iget-object v3, p0, Lcom/tapjoy/TapjoyCache;->d:Lcom/tapjoy/b0;

    invoke-virtual {v3, v6, v4}, Lcom/tapjoy/b0;->a(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;

    goto/16 :goto_89

    :cond_132
    invoke-static {v1, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_89

    :cond_144
    invoke-static {v1, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_89

    :cond_156
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing reference to missing asset: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_89

    :cond_17c
    return-void
.end method

.method public c(Lorg/json/JSONObject;)Ljava/util/concurrent/Future;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "offerId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeToLive"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tapjoy/TapjoyCache;->d(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    const-string p1, "TapjoyCache"

    const-string v0, "Required parameters to cache an asset from JSON is not present"

    invoke-static {p1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/Future;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "TapjoyCache"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_8} :catch_23

    invoke-static {p1}, Lcom/tapjoy/TapjoyCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyCache;->e:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string p2, "URL is already in the process of being cached: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1e
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/tapjoy/TapjoyCache;->i(Ljava/net/URL;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    :catch_23
    const-string p1, "Invalid cache assetURL"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public e(Lorg/json/JSONArray;Lcom/tapjoy/TJCacheListener;)V
    .registers 4

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_11

    new-instance v0, Lcom/tapjoy/internal/o0;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/internal/o0;-><init>(Lcom/tapjoy/TapjoyCache;Lorg/json/JSONArray;Lcom/tapjoy/TJCacheListener;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_17

    :cond_11
    if-eqz p2, :cond_17

    const/4 p1, 0x1

    invoke-interface {p2, p1}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V

    :cond_17
    :goto_17
    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;
    .registers 3

    invoke-static {p1}, Lcom/tapjoy/TapjoyCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->d:Lcom/tapjoy/b0;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/TapjoyCachedAssetData;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->d:Lcom/tapjoy/b0;

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/TapjoyCachedAssetData;

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCachedAssetData;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_39
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    :cond_40
    const-string v0, ""

    :goto_42
    return-object v0
.end method

.method public h(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Lcom/tapjoy/TapjoyCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eq p1, v0, :cond_12

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->d:Lcom/tapjoy/b0;

    invoke-virtual {v0, p1}, Lcom/tapjoy/b0;->b(Ljava/lang/Object;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public i(Ljava/net/URL;Ljava/lang/String;J)Ljava/util/concurrent/Future;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/tapjoy/TapjoyCache$a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/tapjoy/TapjoyCache$a;-><init>(Lcom/tapjoy/TapjoyCache;Ljava/net/URL;Ljava/lang/String;J)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.tapjoy.TapjoyCache.a (com.tapjoy.TapjoyCache$a)
.class public Lcom/tapjoy/TapjoyCache$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final synthetic d:Lcom/tapjoy/TapjoyCache;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TapjoyCache;Ljava/net/URL;Ljava/lang/String;J)V
    .registers 8

    iput-object p1, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tapjoy/TapjoyCache$a;->a:Ljava/net/URL;

    iput-object p3, p0, Lcom/tapjoy/TapjoyCache$a;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/tapjoy/TapjoyCache$a;->c:J

    const-wide/16 v0, 0x0

    cmp-long p3, p4, v0

    if-gtz p3, :cond_16

    const-wide/32 p3, 0x15180

    iput-wide p3, p0, Lcom/tapjoy/TapjoyCache$a;->c:J

    :cond_16
    iget-object p1, p1, Lcom/tapjoy/TapjoyCache;->e:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tapjoy/TapjoyCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 11

    const-string v0, "Unexpected response code: "

    const-string v1, "Network timeout during caching: "

    const-string v2, "Error caching asset: "

    iget-object v3, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    iget-object v4, p0, Lcom/tapjoy/TapjoyCache$a;->a:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/tapjoy/TapjoyCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    iget-object v4, v4, Lcom/tapjoy/TapjoyCache;->d:Lcom/tapjoy/b0;

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "TapjoyCache"

    if-eqz v4, :cond_8a

    iget-object v4, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    iget-object v4, v4, Lcom/tapjoy/TapjoyCache;->d:Lcom/tapjoy/b0;

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/TapjoyCachedAssetData;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyCachedAssetData;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_83

    iget-wide v0, p0, Lcom/tapjoy/TapjoyCache$a;->c:J

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-eqz v2, :cond_52

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache;->d:Lcom/tapjoy/b0;

    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyCachedAssetData;

    iget-wide v1, p0, Lcom/tapjoy/TapjoyCache$a;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyCachedAssetData;->j(J)V

    goto :goto_62

    :cond_52
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache;->d:Lcom/tapjoy/b0;

    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyCachedAssetData;

    const-wide/32 v1, 0x15180

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyCachedAssetData;->j(J)V

    :goto_62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reseting time to live for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$a;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache;->e:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_83
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tapjoy/TapjoyCache;->h(Ljava/lang/String;)Z

    :cond_8a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    :try_start_91
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    iget-object v7, v7, Lcom/tapjoy/TapjoyCache;->g:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_b2} :catch_1ef

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Downloading and caching asset from: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tapjoy/TapjoyCache$a;->a:Ljava/net/URL;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_ce
    iget-object v7, p0, Lcom/tapjoy/TapjoyCache$a;->a:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    const/16 v8, 0x3a98

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v8, 0x7530

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    instance-of v8, v7, Ljava/net/HttpURLConnection;

    if-eqz v8, :cond_103

    move-object v8, v7

    check-cast v8, Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_f1

    goto :goto_103

    :cond_f1
    new-instance v7, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_103
    :goto_103
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10c
    .catch Ljava/net/SocketTimeoutException; {:try_start_ce .. :try_end_10c} :catch_1a8
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_10c} :catch_179
    .catchall {:try_start_ce .. :try_end_10c} :catchall_176

    :try_start_10c
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_116
    .catch Ljava/net/SocketTimeoutException; {:try_start_10c .. :try_end_116} :catch_172
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_116} :catch_16e
    .catchall {:try_start_10c .. :try_end_116} :catchall_16b

    :try_start_116
    invoke-static {v0, v7}, Lcom/tapjoy/TapjoyUtil;->writeFileToDevice(Ljava/io/BufferedInputStream;Ljava/io/OutputStream;)V
    :try_end_119
    .catch Ljava/net/SocketTimeoutException; {:try_start_116 .. :try_end_119} :catch_169
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_119} :catch_167
    .catchall {:try_start_116 .. :try_end_119} :catchall_164

    :try_start_119
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11c} :catch_11c

    :catch_11c
    :try_start_11c
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_120

    goto :goto_121

    :catch_120
    nop

    :goto_121
    new-instance v0, Lcom/tapjoy/TapjoyCachedAssetData;

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$a;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-wide v6, p0, Lcom/tapjoy/TapjoyCache$a;->c:J

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/tapjoy/TapjoyCachedAssetData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_139

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyCachedAssetData;->n(Ljava/lang/String;)V

    :cond_139
    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    iget-object v1, v1, Lcom/tapjoy/TapjoyCache;->d:Lcom/tapjoy/b0;

    invoke-virtual {v1, v3, v0}, Lcom/tapjoy/b0;->a(Ljava/lang/String;Lcom/tapjoy/TapjoyCachedAssetData;)Lcom/tapjoy/TapjoyCachedAssetData;

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    iget-object v1, v1, Lcom/tapjoy/TapjoyCache;->e:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----- Download complete -----"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :catchall_164
    move-exception v1

    goto/16 :goto_1e1

    :catch_167
    move-exception v1

    goto :goto_170

    :catch_169
    move-exception v2

    goto :goto_174

    :catchall_16b
    move-exception v1

    goto/16 :goto_1e2

    :catch_16e
    move-exception v1

    move-object v7, v6

    :goto_170
    move-object v6, v0

    goto :goto_17c

    :catch_172
    move-exception v2

    move-object v7, v6

    :goto_174
    move-object v6, v0

    goto :goto_1ab

    :catchall_176
    move-exception v0

    move-object v7, v6

    goto :goto_1df

    :catch_179
    move-exception v0

    move-object v1, v0

    move-object v7, v6

    :goto_17c
    :try_start_17c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache;->e:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_19b
    .catchall {:try_start_17c .. :try_end_19b} :catchall_1de

    if-eqz v6, :cond_1a2

    :try_start_19d
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a0} :catch_1a1

    goto :goto_1a2

    :catch_1a1
    nop

    :cond_1a2
    :goto_1a2
    if-eqz v7, :cond_1a7

    :try_start_1a4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1a7} :catch_1a7

    :catch_1a7
    :cond_1a7
    return-object v0

    :catch_1a8
    move-exception v0

    move-object v2, v0

    move-object v7, v6

    :goto_1ab
    :try_start_1ab
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v8, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->e:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v5, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache;->e:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1d1
    .catchall {:try_start_1ab .. :try_end_1d1} :catchall_1de

    if-eqz v6, :cond_1d8

    :try_start_1d3
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1d6
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1d6} :catch_1d7

    goto :goto_1d8

    :catch_1d7
    nop

    :cond_1d8
    :goto_1d8
    if-eqz v7, :cond_1dd

    :try_start_1da
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1dd} :catch_1dd

    :catch_1dd
    :cond_1dd
    return-object v0

    :catchall_1de
    move-exception v0

    :goto_1df
    move-object v1, v0

    move-object v0, v6

    :goto_1e1
    move-object v6, v7

    :goto_1e2
    if-eqz v0, :cond_1e9

    :try_start_1e4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_1e8

    goto :goto_1e9

    :catch_1e8
    nop

    :cond_1e9
    :goto_1e9
    if-eqz v6, :cond_1ee

    :try_start_1eb
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1ee
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_1ee} :catch_1ee

    :catch_1ee
    :cond_1ee
    throw v1

    :catch_1ef
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache$a;->d:Lcom/tapjoy/TapjoyCache;

    iget-object v0, v0, Lcom/tapjoy/TapjoyCache;->e:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCache$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
