###### Class com.bytedance.sdk.openadsdk.multipro.e (com.bytedance.sdk.openadsdk.multipro.e)
.class public Lcom/bytedance/sdk/openadsdk/multipro/e;
.super Ljava/lang/Object;
.source "TTProviderManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/multipro/a;


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/multipro/e;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/multipro/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/e;->c:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/d/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/a/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/a/e;

    new-instance v2, Lcom/bytedance/sdk/component/e/a/b/b/b;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/e/a/b/b/b;-><init>()V

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/b/a/e;-><init>(Lcom/bytedance/sdk/component/e/a/b/b/b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/multipro/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/multipro/a;->b()V

    goto :goto_34

    :cond_44
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/e;
    .registers 2

    if-eqz p0, :cond_d

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/e;->b:Ljava/lang/ref/WeakReference;

    :cond_d
    sget-object p0, Lcom/bytedance/sdk/openadsdk/multipro/e;->a:Lcom/bytedance/sdk/openadsdk/multipro/e;

    if-nez p0, :cond_24

    const-class p0, Lcom/bytedance/sdk/openadsdk/multipro/e;

    monitor-enter p0

    :try_start_14
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/e;->a:Lcom/bytedance/sdk/openadsdk/multipro/e;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/e;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/e;->a:Lcom/bytedance/sdk/openadsdk/multipro/e;

    :cond_1f
    monitor-exit p0

    goto :goto_24

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    :goto_24
    sget-object p0, Lcom/bytedance/sdk/openadsdk/multipro/e;->a:Lcom/bytedance/sdk/openadsdk/multipro/e;

    return-object p0
.end method

.method private b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/e;->c(Landroid/net/Uri;)Z

    move-result v1

    const-string v2, "TTProviderManager"

    if-nez v1, :cond_12

    const-string p1, "uri is error1"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_12
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_26

    const-string p1, "uri is error2"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_26
    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string p1, "uri is error3"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_35
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/multipro/a;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    return-object v3

    :cond_52
    const-string p1, "uri is error4"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private c(Landroid/net/Uri;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/e;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    move v0, p1

    goto :goto_15

    :catchall_d
    move-exception p1

    const-string p2, "TTProviderManager"

    const-string p3, "==provider update error=="

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    return v0
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/e;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    move v0, p1

    goto :goto_15

    :catchall_d
    move-exception p1

    const-string p2, "TTProviderManager"

    const-string p3, "==provider delete error=="

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    return v0
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/e;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    if-eqz v1, :cond_1a

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    move-object v0, p1

    goto :goto_1a

    :catchall_12
    move-exception p1

    const-string p2, "TTProviderManager"

    const-string p3, "==provider query error=="

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/e;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    move-object v0, p1

    goto :goto_15

    :catchall_d
    move-exception p1

    const-string p2, "TTProviderManager"

    const-string v1, "==provider insert error=="

    invoke-static {p2, v1, p1}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/e;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    move-object v0, p1

    goto :goto_15

    :catchall_d
    move-exception p1

    const-string v1, "TTProviderManager"

    const-string v2, "==provider getType error=="

    invoke-static {v1, v2, p1}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    return-object v0
.end method

.method public b()V
    .registers 1

    return-void
.end method
