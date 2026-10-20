###### Class com.bytedance.sdk.openadsdk.core.model.t (com.bytedance.sdk.openadsdk.core.model.t)
.class public Lcom/bytedance/sdk/openadsdk/core/model/t;
.super Ljava/lang/Object;
.source "PlayableModel.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_6

    return-void

    :cond_6
    const-string v0, "playable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    const-string v2, "playable_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->f:Ljava/lang/String;

    const-string v2, "playable_orientation"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->g:I

    const-string v2, "new_style"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->b:I

    const-string v2, "close_2_app"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->a:I

    :cond_31
    const-string v0, "is_playable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->c:Z

    const-string v0, "playable_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->d:I

    const-string v0, "playable_style"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/model/q;)I
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->n()Lcom/bytedance/sdk/openadsdk/core/model/t;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->a:I

    if-ltz p0, :cond_12

    const/16 v1, 0x64

    if-le p0, v1, :cond_11

    goto :goto_12

    :cond_11
    return p0

    :cond_12
    :goto_12
    return v0
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z
    .registers 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->m(Lcom/bytedance/sdk/openadsdk/core/model/q;)Lcom/bytedance/sdk/openadsdk/core/model/t;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/t;->c:Z

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->f(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->n()Lcom/bytedance/sdk/openadsdk/core/model/t;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->b:I

    if-ne p0, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->m(Lcom/bytedance/sdk/openadsdk/core/model/q;)Lcom/bytedance/sdk/openadsdk/core/model/t;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static e(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->m(Lcom/bytedance/sdk/openadsdk/core/model/q;)Lcom/bytedance/sdk/openadsdk/core/model/t;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static f(Lcom/bytedance/sdk/openadsdk/core/model/q;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->n()Lcom/bytedance/sdk/openadsdk/core/model/t;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/t;->c:Z

    if-eqz v2, :cond_17

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/model/t;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    return-object v1

    :cond_17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->o()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_24

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->P()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->K()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->K()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->l()Ljava/lang/String;

    move-result-object v0

    :cond_32
    return-object v0
.end method

.method public static g(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static h(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->K()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->K()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->t()I

    move-result p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    const/4 v1, 0x1

    if-eq p0, v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static i(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->K()Lcom/bykv/vk/openvk/component/video/api/c/b;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/c/b;->t()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public static j(Lcom/bytedance/sdk/openadsdk/core/model/q;)I
    .registers 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->m(Lcom/bytedance/sdk/openadsdk/core/model/q;)Lcom/bytedance/sdk/openadsdk/core/model/t;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->g:I

    return p0
.end method

.method public static k(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z
    .registers 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->n(Lcom/bytedance/sdk/openadsdk/core/model/q;)I

    move-result p0

    if-ne p0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public static l(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z
    .registers 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->b(Lcom/bytedance/sdk/openadsdk/core/model/q;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->n(Lcom/bytedance/sdk/openadsdk/core/model/q;)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static m(Lcom/bytedance/sdk/openadsdk/core/model/q;)Lcom/bytedance/sdk/openadsdk/core/model/t;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/q;->n()Lcom/bytedance/sdk/openadsdk/core/model/t;

    move-result-object p0

    return-object p0
.end method

.method private static n(Lcom/bytedance/sdk/openadsdk/core/model/q;)I
    .registers 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/t;->m(Lcom/bytedance/sdk/openadsdk/core/model/q;)Lcom/bytedance/sdk/openadsdk/core/model/t;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->d:I

    return p0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "PlayableModel"

    :try_start_2
    const-string v1, "is_playable"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->c:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1f
    const-string v2, "playable_url"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "playable_orientation"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->g:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "new_style"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->b:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "close_2_app"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "playable"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_40} :catch_41

    goto :goto_49

    :catch_41
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    :goto_49
    :try_start_49
    const-string v1, "playable_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->d:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_50} :catch_51

    goto :goto_59

    :catch_51
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_59
    :try_start_59
    const-string v1, "playable_style"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/t;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_60} :catch_61

    goto :goto_69

    :catch_61
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    return-void
.end method
