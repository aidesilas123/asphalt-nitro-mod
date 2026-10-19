###### Class com.bytedance.sdk.openadsdk.b.d.a.a (com.bytedance.sdk.openadsdk.b.d.a.a)
.class public Lcom/bytedance/sdk/openadsdk/b/d/a/a;
.super Ljava/lang/Object;
.source "VideoEventManager.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bykv/vk/openvk/component/video/api/b/a;",
            "Lcom/bytedance/sdk/openadsdk/b/d/b/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/api/c/c;)J
    .registers 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->c(Lcom/bykv/vk/openvk/component/video/api/c/c;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/c/c;)Lorg/json/JSONObject;
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "session_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    if-lez p2, :cond_1b

    const-string p1, "play_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b
    if-eqz p0, :cond_6b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->K()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p1

    if-eqz p1, :cond_59

    const-string p2, "video_resolution"

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "video_size"

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "video_url"

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/c/b;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "player_type"

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/api/c/c;->o()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "video_encode_type"

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/component/video/api/c/c;->k()Z

    move-result p2

    if-eqz p2, :cond_55

    const/4 p2, 0x1

    goto :goto_56

    :cond_55
    const/4 p2, 0x0

    :goto_56
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_59
    const-string p1, "dp_creative_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->be()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_62} :catch_63

    goto :goto_6b

    :catch_63
    move-exception p0

    const-string p1, "TTAD.VideoEventManager"

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6b
    :goto_6b
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;Lcom/bytedance/sdk/openadsdk/b/g;)V
    .registers 10

    if-eqz p0, :cond_83

    if-eqz p1, :cond_83

    if-nez p2, :cond_8

    goto/16 :goto_83

    :cond_8
    sget-object p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/b/d/b/o;

    if-nez p0, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v0

    if-eqz p1, :cond_83

    if-nez v0, :cond_20

    goto :goto_83

    :cond_20
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->j()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;)V

    :cond_29
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/d/b/h;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/b/d/b/h;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/h;->a(I)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->aK()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/a/b;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/bykv/vk/openvk/component/video/api/a/b;->b(Lcom/bykv/vk/openvk/component/video/api/c/c;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/d/b/h;->b(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/d/b/h;->a(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/c/c;)Lorg/json/JSONObject;

    move-result-object p0

    iget p1, p1, Lcom/bykv/vk/openvk/component/video/api/c/c;->d:I

    if-lez p1, :cond_6e

    :try_start_60
    const-string v2, "play_time"

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_65} :catch_66

    goto :goto_6e

    :catch_66
    move-exception p1

    const-string v2, "TTAD.VideoEventManager"

    const-string v3, ""

    invoke-static {v2, v3, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6e
    :goto_6e
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/b/d/b/a;

    invoke-direct {v2, v0, p1, p0, v1}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/d/b/c;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->j()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->a(Z)V

    const-string p0, "feed_play"

    invoke-static {v2, p0, p3}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/g;)V

    :cond_83
    :goto_83
    return-void
.end method

.method public static a(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;)V
    .registers 11

    if-eqz p0, :cond_8b

    if-nez p1, :cond_6

    goto/16 :goto_8b

    :cond_6
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/b/d/b/o;

    if-nez p0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v1

    if-eqz v0, :cond_8b

    if-nez v1, :cond_1e

    goto :goto_8b

    :cond_1e
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_8b

    cmp-long v8, v2, v6

    if-gtz v8, :cond_31

    goto :goto_8b

    :cond_31
    new-instance v6, Lcom/bytedance/sdk/openadsdk/b/d/b/g;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/b/d/b/g;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->b()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/b/d/b/g;->a(J)V

    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/b/d/b/g;->b(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/c/c;)Lorg/json/JSONObject;

    move-result-object p0

    iget v0, v0, Lcom/bykv/vk/openvk/component/video/api/c/c;->d:I

    const-string v4, ""

    const-string v5, "TTAD.VideoEventManager"

    if-lez v0, :cond_5e

    :try_start_54
    const-string v7, "play_time"

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception v0

    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/openadsdk/b/d/b/a;

    invoke-direct {v7, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/d/b/c;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->j()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->a(Z)V

    :try_start_6e
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->f()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_pause"

    invoke-static {v7, p1, p0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_86} :catch_87

    goto :goto_8b

    :catch_87
    move-exception p0

    invoke-static {v5, v4, p0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8b
    :goto_8b
    return-void
.end method

.method public static a(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;Lcom/bytedance/sdk/openadsdk/b/g;)V
    .registers 12

    if-eqz p0, :cond_8e

    if-nez p1, :cond_6

    goto/16 :goto_8e

    :cond_6
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/b/d/b/o;

    if-nez p0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v1

    if-eqz v0, :cond_8e

    if-nez v1, :cond_1e

    goto :goto_8e

    :cond_1e
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->c()J

    move-result-wide v4

    new-instance v6, Lcom/bytedance/sdk/openadsdk/b/d/b/d;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/b/d/b/d;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->b()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/b/d/b/d;->b(J)V

    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/b/d/b/d;->a(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->g()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/b/d/b/d;->a(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->h()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/b/d/b/d;->b(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/c/c;)Lorg/json/JSONObject;

    move-result-object p0

    iget v0, v0, Lcom/bykv/vk/openvk/component/video/api/c/c;->d:I

    const-string v4, ""

    const-string v5, "TTAD.VideoEventManager"

    if-lez v0, :cond_61

    :try_start_57
    const-string v7, "play_time"

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception v0

    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_61
    :goto_61
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/openadsdk/b/d/b/a;

    invoke-direct {v7, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/d/b/c;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->j()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->a(Z)V

    :try_start_71
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->f()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_break"

    invoke-static {v7, p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/g;)V
    :try_end_89
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_89} :catch_8a

    goto :goto_8e

    :catch_8a
    move-exception p0

    invoke-static {v5, v4, p0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/b/d/b/a<",
            "Lcom/bytedance/sdk/openadsdk/b/d/b/k;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_start"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/g;)V

    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/g;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/g;)V

    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/g;)V

    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/g;)V
    .registers 12

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_a

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_a
    move-object v5, p2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->e()Z

    move-result p2

    if-eqz p2, :cond_44

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_44

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "stream"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "embeded_ad"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_33

    goto :goto_44

    :cond_33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "customer_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_44
    :goto_44
    move-object v4, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->a()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/bytedance/sdk/openadsdk/b/d/a/a$1;

    invoke-direct {v7, p0, v4, p3}, Lcom/bytedance/sdk/openadsdk/b/d/a/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/g;)V

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/b/c;->a(JLcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/g;Lcom/bytedance/sdk/openadsdk/b/b/a;)V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/model/q;Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bykv/vk/openvk/component/video/api/c/c;)V
    .registers 14

    if-eqz p0, :cond_62

    if-eqz p1, :cond_62

    if-nez p2, :cond_7

    goto :goto_62

    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/r;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->aK()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/component/video/api/a/b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bykv/vk/openvk/component/video/api/a/b;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1c

    const/4 v9, 0x1

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x2

    const/4 v9, 0x2

    :goto_1e
    new-instance v10, Lcom/bytedance/sdk/openadsdk/b/d/b/o;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object v0, v10

    move-object v3, v7

    move v4, v9

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;-><init>(JLjava/lang/String;ILcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/core/model/q;)V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v7, v9, p2}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/c/c;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/bykv/vk/openvk/component/video/api/c/c;->d:I

    if-lez v1, :cond_4b

    :try_start_3d
    const-string v2, "play_time"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_4b

    :catch_43
    move-exception v1

    const-string v2, "TTAD.VideoEventManager"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/d/b/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/d/b/c;)V

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/c/c;->o()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v8, 0x0

    :goto_5a
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->a(Z)V

    const-string p0, "play_start"

    invoke-static {v1, p0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/model/q;Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;)V
    .registers 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/b;->a()Lcom/bytedance/sdk/openadsdk/j/b;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a$2;-><init>(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;Lcom/bytedance/sdk/openadsdk/core/model/q;)V

    const-string p0, "pangle_video_play_state"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/j/b;->a(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/j/a;)V

    return-void
.end method

.method static synthetic b(Lcom/bykv/vk/openvk/component/video/api/c/c;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->d(Lcom/bykv/vk/openvk/component/video/api/c/c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;)V
    .registers 11

    if-eqz p0, :cond_8b

    if-nez p1, :cond_6

    goto/16 :goto_8b

    :cond_6
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/b/d/b/o;

    if-nez p0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v1

    if-eqz v0, :cond_8b

    if-nez v1, :cond_1e

    goto :goto_8b

    :cond_1e
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_8b

    cmp-long v8, v2, v6

    if-gtz v8, :cond_31

    goto :goto_8b

    :cond_31
    new-instance v6, Lcom/bytedance/sdk/openadsdk/b/d/b/e;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/b/d/b/e;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->b()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/b/d/b/e;->a(J)V

    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/b/d/b/e;->b(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/c/c;)Lorg/json/JSONObject;

    move-result-object p0

    iget v0, v0, Lcom/bykv/vk/openvk/component/video/api/c/c;->d:I

    const-string v4, ""

    const-string v5, "TTAD.VideoEventManager"

    if-lez v0, :cond_5e

    :try_start_54
    const-string v7, "play_time"

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception v0

    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/openadsdk/b/d/b/a;

    invoke-direct {v7, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/d/b/c;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->j()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->a(Z)V

    :try_start_6e
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->f()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_continue"

    invoke-static {v7, p1, p0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_86} :catch_87

    goto :goto_8b

    :catch_87
    move-exception p0

    invoke-static {v5, v4, p0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8b
    :goto_8b
    return-void
.end method

.method public static b(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;Lcom/bytedance/sdk/openadsdk/b/g;)V
    .registers 13

    if-eqz p0, :cond_8f

    if-nez p1, :cond_6

    goto/16 :goto_8f

    :cond_6
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->e(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;)V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/b/d/b/o;

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v2

    if-eqz v1, :cond_8f

    if-nez v2, :cond_21

    goto :goto_8f

    :cond_21
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->a()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->c()J

    move-result-wide v5

    new-instance v7, Lcom/bytedance/sdk/openadsdk/b/d/b/f;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/b/d/b/f;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->b()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/b/d/b/f;->b(J)V

    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/b/d/b/f;->a(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->h()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/b/d/b/f;->a(I)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->c()I

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/c/c;)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, v1, Lcom/bykv/vk/openvk/component/video/api/c/c;->d:I

    const-string v5, ""

    const-string v6, "TTAD.VideoEventManager"

    if-lez v1, :cond_5d

    :try_start_53
    const-string v8, "play_time"

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception v1

    invoke-static {v6, v5, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5d
    :goto_5d
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/bytedance/sdk/openadsdk/b/d/b/a;

    invoke-direct {v8, v2, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/d/b/c;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->j()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->a(Z)V

    :try_start_6d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "duration"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->f()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_over"

    invoke-static {v8, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/g;)V
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_6d .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p1

    invoke-static {v6, v5, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8a
    sget-object p1, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8f
    :goto_8f
    return-void
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/b/d/b/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/b/d/b/a<",
            "Lcom/bytedance/sdk/openadsdk/b/d/b/l;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_success"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Lcom/bykv/vk/openvk/component/video/api/c/c;)J
    .registers 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    :cond_5
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->k()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->u()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p0

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->t()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p0

    :goto_14
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->f()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    :cond_29
    return-wide v0
.end method

.method public static c(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;)V
    .registers 12

    if-eqz p0, :cond_89

    if-nez p1, :cond_6

    goto/16 :goto_89

    :cond_6
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/b/d/b/o;

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v2

    if-eqz v1, :cond_89

    if-nez v2, :cond_1e

    goto :goto_89

    :cond_1e
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->a()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->c()J

    move-result-wide v5

    new-instance v7, Lcom/bytedance/sdk/openadsdk/b/d/b/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->l()Lcom/bykv/vk/openvk/component/video/api/c/a;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/bytedance/sdk/openadsdk/b/d/b/n;-><init>(Lcom/bykv/vk/openvk/component/video/api/c/a;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->b()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/b/d/b/n;->a(J)V

    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/b/d/b/n;->b(J)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->c()I

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/c/c;)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, v1, Lcom/bykv/vk/openvk/component/video/api/c/c;->d:I

    const-string v5, ""

    const-string v6, "TTAD.VideoEventManager"

    if-lez v1, :cond_57

    :try_start_4d
    const-string v8, "play_time"

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v1

    invoke-static {v6, v5, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    :goto_57
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/bytedance/sdk/openadsdk/b/d/b/a;

    invoke-direct {v8, v2, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/d/b/c;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->j()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->a(Z)V

    :try_start_67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "duration"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->f()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "play_error"

    invoke-static {v8, p1, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_7f} :catch_80

    goto :goto_84

    :catch_80
    move-exception p1

    invoke-static {v6, v5, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_84
    sget-object p1, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_89
    :goto_89
    return-void
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/b/d/b/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/b/d/b/a<",
            "Lcom/bytedance/sdk/openadsdk/b/d/b/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_error"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Lcom/bykv/vk/openvk/component/video/api/c/c;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/c;->n()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;)V
    .registers 11

    if-eqz p0, :cond_80

    if-nez p1, :cond_6

    goto/16 :goto_80

    :cond_6
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/b/d/b/o;

    if-nez p0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v1

    if-eqz v0, :cond_80

    if-nez v1, :cond_1e

    goto :goto_80

    :cond_1e
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->c()J

    move-result-wide v4

    new-instance v6, Lcom/bytedance/sdk/openadsdk/b/d/b/b;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/b/d/b/b;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->b()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/b/d/b/b;->a(J)V

    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/b/d/b/b;->b(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->d()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/b/d/b/b;->a(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->e()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/b/d/b/b;->b(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/c/c;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/b/d/b/a;

    invoke-direct {v4, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/d/b/c;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->j()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->a(Z)V

    :try_start_5f
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->f()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "endcard_skip"

    invoke-static {v4, p1, p0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_77} :catch_78

    goto :goto_80

    :catch_78
    move-exception p0

    const-string p1, "TTAD.VideoEventManager"

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/b/d/b/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/b/d/b/a<",
            "Lcom/bytedance/sdk/openadsdk/b/d/b/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_cancel"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Lcom/bykv/vk/openvk/component/video/api/b/a;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;)V
    .registers 10

    if-eqz p0, :cond_76

    if-nez p1, :cond_5

    goto :goto_76

    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->i()I

    move-result v0

    const-string v1, "TTAD.VideoEventManager"

    if-gtz v0, :cond_13

    const-string p0, "Cancel log report when buffer count is 0"

    invoke-static {v1, p0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/b/d/b/o;

    if-nez p0, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->d()Lcom/bykv/vk/openvk/component/video/api/c/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->e()Lcom/bytedance/sdk/openadsdk/core/model/q;

    move-result-object v2

    if-eqz v0, :cond_76

    if-nez v2, :cond_2b

    goto :goto_76

    :cond_2b
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->c()J

    move-result-wide v3

    new-instance v5, Lcom/bytedance/sdk/openadsdk/b/d/b/m;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/b/d/b/m;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->b()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/b/d/b/m;->a(J)V

    invoke-virtual {v5, v3, v4}, Lcom/bytedance/sdk/openadsdk/b/d/b/m;->b(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->i()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/bytedance/sdk/openadsdk/b/d/b/m;->a(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->c()I

    move-result v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/o;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/c/c;)Lorg/json/JSONObject;

    move-result-object p0

    iget v0, v0, Lcom/bykv/vk/openvk/component/video/api/c/c;->d:I

    if-lez v0, :cond_61

    :try_start_55
    const-string v3, "play_time"

    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_5a} :catch_5b

    goto :goto_61

    :catch_5b
    move-exception v0

    const-string v3, ""

    invoke-static {v1, v3, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_61
    :goto_61
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/d/b/a;

    invoke-direct {v1, v2, v0, p0, v5}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/d/b/c;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->j()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->a(Z)V

    const-string p0, "play_buffer"

    invoke-static {v1, p0}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;)V

    :cond_76
    :goto_76
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.b.d.a.a.AnonymousClass1 (com.bytedance.sdk.openadsdk.b.d.a.a$1)
.class final Lcom/bytedance/sdk/openadsdk/b/d/a/a$1;
.super Ljava/lang/Object;
.source "VideoEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/b/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/b/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/b/d/b/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/b/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/b/d/b/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/b/g;)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/b/d/b/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$1;->c:Lcom/bytedance/sdk/openadsdk/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/b/d/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/b/d/b/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->d()Lcom/bytedance/sdk/openadsdk/b/d/b/c;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/b/d/b/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/b/d/b/a;->d()Lcom/bytedance/sdk/openadsdk/b/d/b/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/b/d/b/c;->a(Lorg/json/JSONObject;)V

    :cond_17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$1;->b:Ljava/lang/String;

    const-string v2, "feed_play"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$1;->b:Ljava/lang/String;

    const-string v2, "feed_over"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$1;->b:Ljava/lang/String;

    const-string v2, "feed_break"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    :cond_35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$1;->c:Lcom/bytedance/sdk/openadsdk/b/g;

    if-eqz v1, :cond_3c

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/b/g;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_3c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_extra_data"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.b.d.a.a.AnonymousClass2 (com.bytedance.sdk.openadsdk.b.d.a.a$2)
.class final Lcom/bytedance/sdk/openadsdk/b/d/a/a$2;
.super Ljava/lang/Object;
.source "VideoEventManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/j/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/component/video/api/c/c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/model/q;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/api/c/c;Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;Lcom/bytedance/sdk/openadsdk/core/model/q;)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$2;->a:Lcom/bykv/vk/openvk/component/video/api/c/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$2;->b:Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/j/a/a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$2;->a:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->a(Lcom/bykv/vk/openvk/component/video/api/c/c;)J

    move-result-wide v1

    const-string v3, "service_duration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$2;->b:Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/b/d/b/o$a;->c()J

    move-result-wide v1

    const-string v3, "player_duration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getCacheType()I

    move-result v1

    const-string v2, "cache_path_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$2;->a:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$2;->a:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/b/d/a/a;->b(Lcom/bykv/vk/openvk/component/video/api/c/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$2;->a:Lcom/bykv/vk/openvk/component/video/api/c/c;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/c/c;->o()I

    move-result v1

    const-string v2, "player_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a/b;->b()Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object v1

    const-string v2, "pangle_video_play_state"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/d/a/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    if-eqz v2, :cond_58

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/q;->aS()I

    move-result v2

    goto :goto_59

    :cond_58
    const/4 v2, 0x0

    :goto_59
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(I)Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/j/a/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/b;

    move-result-object v0

    return-object v0
.end method
