###### Class com.fyber.inneractive.sdk.dv.handler.c (com.fyber.inneractive.sdk.dv.handler.c)
.class public Lcom/fyber/inneractive/sdk/dv/handler/c;
.super Lcom/fyber/inneractive/sdk/dv/handler/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/dv/handler/a<",
        "Lcom/google/android/gms/ads/query/QueryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/ads/AdFormat;",
            "Lcom/google/android/gms/ads/query/QueryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/dv/handler/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/dv/handler/c;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/dv/handler/c;->b:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/dv/handler/c;->c:Ljava/lang/Object;

    iput v0, p0, Lcom/fyber/inneractive/sdk/dv/handler/c;->d:I

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/dv/enums/a;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Ljava/lang/String;)V
    .registers 12

    const-string v0, "Got exception adding param to json object: %s, %s"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p4, v2, v3

    const-string v5, "Firing Event 1001 -Phase - %s  Fetch error DV - msg  %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/fyber/inneractive/sdk/network/s$a;

    sget-object v5, Lcom/fyber/inneractive/sdk/network/q;->DV_ERROR_PHASE:Lcom/fyber/inneractive/sdk/network/q;

    const/4 v6, 0x0

    invoke-direct {v2, v5, p2, p3, v6}, Lcom/fyber/inneractive/sdk/network/s$a;-><init>(Lcom/fyber/inneractive/sdk/network/q;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lorg/json/JSONArray;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "spot_id"

    :try_start_29
    invoke-virtual {p2, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_36

    :catch_2d
    new-array v5, v1, [Ljava/lang/Object;

    aput-object p3, v5, v4

    aput-object p0, v5, v3

    invoke-static {v0, v5}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_36
    const-string p0, "phase"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :try_start_40
    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_4d

    :catch_44
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v4

    aput-object p1, p3, v3

    invoke-static {v0, p3}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4d
    const-string p0, "version"

    invoke-static {}, Lcom/fyber/inneractive/sdk/dv/handler/c;->b()Ljava/lang/String;

    move-result-object p1

    :try_start_53
    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_60

    :catch_57
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v4

    aput-object p1, p3, v3

    invoke-static {v0, p3}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_60
    const-string p0, "message"

    :try_start_62
    invoke-virtual {p2, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6f

    :catch_66
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v4

    aput-object p4, p1, v3

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6f
    iget-object p0, v2, Lcom/fyber/inneractive/sdk/network/s$a;->f:Lorg/json/JSONArray;

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, v6}, Lcom/fyber/inneractive/sdk/network/s$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/fyber/inneractive/sdk/dv/handler/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/dv/handler/c;->b:Z

    return p1
.end method

.method public static b()Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "com.google.android.gms.ads.MobileAds"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_22

    :try_start_6
    const-string v1, "getVersion"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1c} :catch_1d
    .catchall {:try_start_6 .. :try_end_1c} :catchall_22

    goto :goto_24

    :catch_1d
    :try_start_1d
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getVersionString()Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_22

    goto :goto_24

    :catchall_22
    :cond_22
    const-string v0, "na"

    :goto_24
    return-object v0
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;)Lcom/fyber/inneractive/sdk/dv/g;
    .registers 6

    sget-object v0, Lcom/fyber/inneractive/sdk/dv/handler/c$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    const/4 v1, 0x3

    if-eq p1, v1, :cond_14

    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_19

    :cond_14
    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_19

    :cond_17
    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    :goto_19
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/dv/handler/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/query/QueryInfo;

    if-eqz v1, :cond_35

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/dv/handler/c;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_26
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/dv/handler/c;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_32

    new-instance v2, Lcom/fyber/inneractive/sdk/dv/g;

    invoke-direct {v2, v1}, Lcom/fyber/inneractive/sdk/dv/g;-><init>(Lcom/google/android/gms/ads/query/QueryInfo;)V

    goto :goto_36

    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1

    :cond_35
    const/4 v2, 0x0

    :goto_36
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const-string v1, "DVHanlder - get query: %s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/fyber/inneractive/sdk/dv/handler/b;

    invoke-direct {v0, p0, p1}, Lcom/fyber/inneractive/sdk/dv/handler/b;-><init>(Lcom/fyber/inneractive/sdk/dv/handler/c;Lcom/google/android/gms/ads/AdFormat;)V

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/m;->a(Ljava/lang/Runnable;)V

    return-object v2
.end method

.method public a()V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/AdFormat;->values()[Lcom/google/android/gms/ads/AdFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    sget-object v4, Lcom/google/android/gms/ads/AdFormat;->NATIVE:Lcom/google/android/gms/ads/AdFormat;

    if-eq v3, v4, :cond_16

    new-instance v4, Lcom/fyber/inneractive/sdk/dv/handler/b;

    invoke-direct {v4, p0, v3}, Lcom/fyber/inneractive/sdk/dv/handler/b;-><init>(Lcom/fyber/inneractive/sdk/dv/handler/c;Lcom/google/android/gms/ads/AdFormat;)V

    invoke-static {v4}, Lcom/fyber/inneractive/sdk/util/m;->a(Ljava/lang/Runnable;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    return-void
.end method
