###### Class com.bytedance.sdk.component.a.a (com.bytedance.sdk.component.a.a)
.class public abstract Lcom/bytedance/sdk/component/a/a;
.super Ljava/lang/Object;
.source "AbstractBridge.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/bytedance/sdk/component/a/m;

.field protected c:Lcom/bytedance/sdk/component/a/h;

.field protected d:Landroid/os/Handler;

.field protected e:Ljava/lang/String;

.field protected volatile f:Z

.field g:Lcom/bytedance/sdk/component/a/g;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/a;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/a/a;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/a;->h:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/a/a;Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/a/q;
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/a/a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/a/q;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/a/q;
    .registers 10

    const-string v0, "params"

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/a/a;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    return-object v2

    :cond_8
    const-string v1, "__callback_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "func"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/a/a;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_23

    iget-object p1, p0, Lcom/bytedance/sdk/component/a/a;->b:Lcom/bytedance/sdk/component/a/m;

    if-eqz p1, :cond_22

    const/4 v0, 0x3

    invoke-interface {p1, v2, v2, v0}, Lcom/bytedance/sdk/component/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_22
    return-object v2

    :cond_23
    :try_start_23
    const-string v2, "__msg_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2b} :catch_84

    :try_start_2b
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4d

    instance-of v5, v6, Lorg/json/JSONObject;

    if-eqz v5, :cond_3c

    check-cast v6, Lorg/json/JSONObject;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4d

    :cond_3c
    instance-of v5, v6, Ljava/lang/String;

    if-eqz v5, :cond_44

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    goto :goto_4d

    :cond_44
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_48
    .catchall {:try_start_2b .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    :try_start_49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4d
    :goto_4d
    const-string v0, "JSSDK"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "namespace"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "__iframe_url"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/component/a/q;->a()Lcom/bytedance/sdk/component/a/q$a;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/component/a/q$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/a/q$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/a/q$a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/component/a/q$a;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/a/q$a;->e(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/component/a/q$a;->f(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/a/q$a;->g(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/q$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/a/q$a;->a()Lcom/bytedance/sdk/component/a/q;

    move-result-object p1
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_83} :catch_84

    return-object p1

    :catch_84
    move-exception p1

    const-string v0, "Failed to create call."

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/a/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/a/a;->b:Lcom/bytedance/sdk/component/a/m;

    if-eqz p1, :cond_92

    const/4 v0, 0x1

    invoke-interface {p1, v4, v3, v0}, Lcom/bytedance/sdk/component/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_92
    const/4 p1, -0x1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/a/q;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/component/a/q;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/g;
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/a;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/component/a/a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/a/g;

    goto :goto_1a

    :cond_18
    :goto_18
    iget-object p1, p0, Lcom/bytedance/sdk/component/a/a;->g:Lcom/bytedance/sdk/component/a/g;

    :goto_1a
    return-object p1
.end method


# virtual methods
.method protected abstract a(Lcom/bytedance/sdk/component/a/j;)Landroid/content/Context;
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method final a(Lcom/bytedance/sdk/component/a/j;Lcom/bytedance/sdk/component/a/v;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/a/a;->a(Lcom/bytedance/sdk/component/a/j;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/a;->a:Landroid/content/Context;

    iget-object v0, p1, Lcom/bytedance/sdk/component/a/j;->d:Lcom/bytedance/sdk/component/a/h;

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/a;->c:Lcom/bytedance/sdk/component/a/h;

    iget-object v0, p1, Lcom/bytedance/sdk/component/a/j;->i:Lcom/bytedance/sdk/component/a/m;

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/a;->b:Lcom/bytedance/sdk/component/a/m;

    new-instance v0, Lcom/bytedance/sdk/component/a/g;

    invoke-direct {v0, p1, p0, p2}, Lcom/bytedance/sdk/component/a/g;-><init>(Lcom/bytedance/sdk/component/a/j;Lcom/bytedance/sdk/component/a/a;Lcom/bytedance/sdk/component/a/v;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/a/a;->g:Lcom/bytedance/sdk/component/a/g;

    iget-object p2, p1, Lcom/bytedance/sdk/component/a/j;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/a/a;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/a/a;->b(Lcom/bytedance/sdk/component/a/j;)V

    return-void
.end method

.method protected final a(Lcom/bytedance/sdk/component/a/q;)V
    .registers 6
    .annotation build Lcom/bytedance/component/sdk/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/a/a;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v1, p1, Lcom/bytedance/sdk/component/a/q;->g:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/a/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/component/a/g;

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received call with unknown namespace, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/i;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/a;->b:Lcom/bytedance/sdk/component/a/m;

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/bytedance/sdk/component/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_36
    new-instance v0, Lcom/bytedance/sdk/component/a/s;

    const/4 v1, -0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Namespace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/bytedance/sdk/component/a/q;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " unknown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/a/s;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/y;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/component/a/q;)V

    return-void

    :cond_5c
    new-instance v3, Lcom/bytedance/sdk/component/a/f;

    invoke-direct {v3}, Lcom/bytedance/sdk/component/a/f;-><init>()V

    iput-object v0, v3, Lcom/bytedance/sdk/component/a/f;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/a;->a:Landroid/content/Context;

    iput-object v0, v3, Lcom/bytedance/sdk/component/a/f;->a:Landroid/content/Context;

    iput-object v1, v3, Lcom/bytedance/sdk/component/a/f;->c:Lcom/bytedance/sdk/component/a/g;

    :try_start_69
    invoke-virtual {v1, p1, v3}, Lcom/bytedance/sdk/component/a/g;->a(Lcom/bytedance/sdk/component/a/q;Lcom/bytedance/sdk/component/a/f;)Lcom/bytedance/sdk/component/a/g$a;

    move-result-object v0

    if-nez v0, :cond_b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received call but not registered, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/i;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/a;->b:Lcom/bytedance/sdk/component/a/m;

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/bytedance/sdk/component/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_90
    new-instance v0, Lcom/bytedance/sdk/component/a/s;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/a/s;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/y;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/component/a/q;)V

    return-void

    :cond_b6
    iget-boolean v1, v0, Lcom/bytedance/sdk/component/a/g$a;->a:Z

    if-eqz v1, :cond_bf

    iget-object v0, v0, Lcom/bytedance/sdk/component/a/g$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/component/a/q;)V

    :cond_bf
    iget-object v0, p0, Lcom/bytedance/sdk/component/a/a;->b:Lcom/bytedance/sdk/component/a/m;

    if-eqz v0, :cond_e9

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/bytedance/sdk/component/a/q;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_cc} :catch_cd

    goto :goto_e9

    :catch_cd
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call finished with error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/y;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/component/a/q;)V

    :cond_e9
    :goto_e9
    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
    .annotation build Lcom/bytedance/component/sdk/annotation/AnyThread;
    .end annotation
.end method

.method protected a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/q;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/a;->g:Lcom/bytedance/sdk/component/a/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/a/g;->a()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/a/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/a/g;->a()V

    goto :goto_f

    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/component/a/a;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/a/a;->f:Z

    return-void
.end method

.method protected abstract b(Lcom/bytedance/sdk/component/a/j;)V
.end method

.method final b(Ljava/lang/String;Lcom/bytedance/sdk/component/a/q;)V
    .registers 6

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/a/a;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p2, Lcom/bytedance/sdk/component/a/q;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "By passing js callback due to empty callback: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/String;)V

    return-void

    :cond_22
    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal callback data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/RuntimeException;)V

    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invoking js callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/bytedance/sdk/component/a/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/String;)V

    :try_start_63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_69

    goto :goto_6e

    :catch_69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_6e
    invoke-static {}, Lcom/bytedance/sdk/component/a/p;->a()Lcom/bytedance/sdk/component/a/p;

    move-result-object p1

    const-string v1, "__msg_type"

    const-string v2, "callback"

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/component/a/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/component/a/p;

    move-result-object p1

    iget-object v1, p2, Lcom/bytedance/sdk/component/a/q;->f:Ljava/lang/String;

    const-string v2, "__callback_id"

    invoke-virtual {p1, v2, v1}, Lcom/bytedance/sdk/component/a/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/component/a/p;

    move-result-object p1

    const-string v1, "__params"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/component/a/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/component/a/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/a/p;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/a/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/q;)V

    return-void
.end method

.method protected invokeMethod(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/a/a;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/component/a/a$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/a/a$1;-><init>(Lcom/bytedance/sdk/component/a/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.bytedance.sdk.component.a.a.AnonymousClass1 (com.bytedance.sdk.component.a.a$1)
.class Lcom/bytedance/sdk/component/a/a$1;
.super Ljava/lang/Object;
.source "AbstractBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/a/a;->invokeMethod(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/component/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/a/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/a$1;->b:Lcom/bytedance/sdk/component/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/component/a/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/a/a$1;->b:Lcom/bytedance/sdk/component/a/a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/a/a;->f:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Lcom/bytedance/sdk/component/a/a$1;->b:Lcom/bytedance/sdk/component/a/a;

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/component/a/a$1;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/a/a;->a(Lcom/bytedance/sdk/component/a/a;Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/a/q;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v1

    const-string v2, "Exception thrown while parsing function."

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/a/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1c
    invoke-static {v0}, Lcom/bytedance/sdk/component/a/q;->a(Lcom/bytedance/sdk/component/a/q;)Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "By pass invalid call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_4a

    iget-object v1, p0, Lcom/bytedance/sdk/component/a/a$1;->b:Lcom/bytedance/sdk/component/a/a;

    new-instance v2, Lcom/bytedance/sdk/component/a/s;

    iget v3, v0, Lcom/bytedance/sdk/component/a/q;->a:I

    const-string v4, "Failed to parse invocation."

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/component/a/s;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/a/y;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/component/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/component/a/q;)V

    :cond_4a
    return-void

    :cond_4b
    iget-object v1, p0, Lcom/bytedance/sdk/component/a/a$1;->b:Lcom/bytedance/sdk/component/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/a/a;->a(Lcom/bytedance/sdk/component/a/q;)V

    return-void
.end method
