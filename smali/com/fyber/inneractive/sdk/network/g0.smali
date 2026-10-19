###### Class com.fyber.inneractive.sdk.network.g0 (com.fyber.inneractive.sdk.network.g0)
.class public Lcom/fyber/inneractive/sdk/network/g0;
.super Lcom/fyber/inneractive/sdk/network/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fyber/inneractive/sdk/network/f0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Landroid/content/Context;

.field public final s:Lcom/fyber/inneractive/sdk/cache/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/cache/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public t:Lcom/fyber/inneractive/sdk/network/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/network/v<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/w;Landroid/content/Context;Lcom/fyber/inneractive/sdk/cache/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/w<",
            "TT;>;",
            "Landroid/content/Context;",
            "Lcom/fyber/inneractive/sdk/cache/a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/fyber/inneractive/sdk/network/x;->a()Lcom/fyber/inneractive/sdk/network/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/network/x;->b()Lcom/fyber/inneractive/sdk/network/g;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fyber/inneractive/sdk/network/g0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Landroid/content/Context;Lcom/fyber/inneractive/sdk/cache/a;Lcom/fyber/inneractive/sdk/network/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/w;Landroid/content/Context;Lcom/fyber/inneractive/sdk/cache/a;Lcom/fyber/inneractive/sdk/network/g;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/w<",
            "TT;>;",
            "Landroid/content/Context;",
            "Lcom/fyber/inneractive/sdk/cache/a<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/network/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Lcom/fyber/inneractive/sdk/network/f0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Lcom/fyber/inneractive/sdk/network/g;)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/network/g0;->r:Landroid/content/Context;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/network/g0;->s:Lcom/fyber/inneractive/sdk/cache/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/network/j;Ljava/util/Map;I)Lcom/fyber/inneractive/sdk/network/b0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I)",
            "Lcom/fyber/inneractive/sdk/network/b0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p2, Lcom/fyber/inneractive/sdk/network/b0;

    invoke-direct {p2}, Lcom/fyber/inneractive/sdk/network/b0;-><init>()V

    const/4 p3, 0x0

    :try_start_6
    iget-object p1, p1, Lcom/fyber/inneractive/sdk/network/j;->c:Ljava/io/InputStream;

    invoke-static {p1, p3}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/io/InputStream;Z)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/g0;->s:Lcom/fyber/inneractive/sdk/cache/a;

    invoke-interface {v0, p1}, Lcom/fyber/inneractive/sdk/cache/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p2, Lcom/fyber/inneractive/sdk/network/b0;->a:Ljava/lang/Object;

    iput-object p1, p2, Lcom/fyber/inneractive/sdk/network/b0;->b:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_1b

    return-object p2

    :catch_1b
    move-exception p1

    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "failed parse cacheable network request"

    invoke-static {p3, p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    instance-of p2, p1, Lcom/fyber/inneractive/sdk/external/InvalidAppIdException;

    if-eqz p2, :cond_28

    throw p1

    :cond_28
    new-instance p2, Lcom/fyber/inneractive/sdk/network/a0;

    invoke-direct {p2, p1}, Lcom/fyber/inneractive/sdk/network/a0;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/g0;->s:Lcom/fyber/inneractive/sdk/cache/a;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/cache/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/fyber/inneractive/sdk/network/b0;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/b0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/g0;->t:Lcom/fyber/inneractive/sdk/network/v;

    if-eqz v0, :cond_4d

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/network/v;->c:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-nez v1, :cond_13

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/network/v;->a:Landroid/content/Context;

    const-string v3, "IAConfigurationPreferences"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/network/v;->c:Landroid/content/SharedPreferences;

    :cond_13
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/network/v;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/v;->b:Lcom/fyber/inneractive/sdk/cache/a;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/cache/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p3, p1, Lcom/fyber/inneractive/sdk/network/b0;->b:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4d

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4d

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/network/g0;->t:Lcom/fyber/inneractive/sdk/network/v;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/network/b0;->b:Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Lcom/fyber/inneractive/sdk/network/v;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_46

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Failed to cache file"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4d

    :cond_46
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/network/g0;->s:Lcom/fyber/inneractive/sdk/cache/a;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/network/b0;->a:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/fyber/inneractive/sdk/cache/a;->a(Ljava/lang/Object;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/g0;->s:Lcom/fyber/inneractive/sdk/cache/a;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/cache/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/fyber/inneractive/sdk/network/o0;
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/network/o0;->LOW:Lcom/fyber/inneractive/sdk/network/o0;

    return-object v0
.end method

.method public k()Lcom/fyber/inneractive/sdk/network/a;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/inneractive/sdk/network/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "IAConfigurationPreferences"

    new-instance v1, Lcom/fyber/inneractive/sdk/network/v;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/network/g0;->r:Landroid/content/Context;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/network/g0;->s:Lcom/fyber/inneractive/sdk/cache/a;

    invoke-direct {v1, v2, v3}, Lcom/fyber/inneractive/sdk/network/v;-><init>(Landroid/content/Context;Lcom/fyber/inneractive/sdk/cache/a;)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/network/g0;->t:Lcom/fyber/inneractive/sdk/network/v;

    const/4 v4, 0x0

    :try_start_e
    invoke-interface {v3}, Lcom/fyber/inneractive/sdk/cache/a;->d()Z

    move-result v3

    if-nez v3, :cond_1f

    new-instance v2, Lcom/fyber/inneractive/sdk/network/v$a;

    invoke-direct {v2}, Lcom/fyber/inneractive/sdk/network/v$a;-><init>()V

    new-instance v3, Lcom/fyber/inneractive/sdk/cache/j;

    invoke-direct {v3, v2}, Lcom/fyber/inneractive/sdk/cache/j;-><init>(Ljava/lang/Exception;)V

    goto :goto_72

    :cond_1f
    iget-object v3, v1, Lcom/fyber/inneractive/sdk/network/v;->b:Lcom/fyber/inneractive/sdk/cache/a;

    invoke-interface {v3}, Lcom/fyber/inneractive/sdk/cache/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fyber/inneractive/sdk/network/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/fyber/inneractive/sdk/network/v;->b:Lcom/fyber/inneractive/sdk/cache/a;

    invoke-interface {v5, v3}, Lcom/fyber/inneractive/sdk/cache/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v1, Lcom/fyber/inneractive/sdk/network/v;->c:Landroid/content/SharedPreferences;

    if-nez v5, :cond_39

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v1, Lcom/fyber/inneractive/sdk/network/v;->c:Landroid/content/SharedPreferences;

    :cond_39
    iget-object v2, v1, Lcom/fyber/inneractive/sdk/network/v;->c:Landroid/content/SharedPreferences;

    iget-object v5, v1, Lcom/fyber/inneractive/sdk/network/v;->b:Lcom/fyber/inneractive/sdk/cache/a;

    invoke-interface {v5}, Lcom/fyber/inneractive/sdk/cache/a;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/fyber/inneractive/sdk/cache/j;

    invoke-direct {v5, v3, v2}, Lcom/fyber/inneractive/sdk/cache/j;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4b} :catch_4d

    move-object v3, v5

    goto :goto_72

    :catch_4d
    move-exception v2

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/network/v;->c:Landroid/content/SharedPreferences;

    if-nez v3, :cond_5a

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/network/v;->a:Landroid/content/Context;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/fyber/inneractive/sdk/network/v;->c:Landroid/content/SharedPreferences;

    :cond_5a
    iget-object v0, v1, Lcom/fyber/inneractive/sdk/network/v;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/network/v;->b:Lcom/fyber/inneractive/sdk/cache/a;

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/cache/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v3, Lcom/fyber/inneractive/sdk/cache/j;

    invoke-direct {v3, v2}, Lcom/fyber/inneractive/sdk/cache/j;-><init>(Ljava/lang/Exception;)V

    :goto_72
    new-instance v0, Lcom/fyber/inneractive/sdk/network/a;

    iget-object v1, v3, Lcom/fyber/inneractive/sdk/cache/j;->b:Ljava/lang/String;

    iget-object v2, v3, Lcom/fyber/inneractive/sdk/cache/j;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/network/g0;->s:Lcom/fyber/inneractive/sdk/cache/a;

    invoke-interface {v3}, Lcom/fyber/inneractive/sdk/cache/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/network/a;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public o()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public r()Lcom/fyber/inneractive/sdk/network/z;
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/network/z;->GET:Lcom/fyber/inneractive/sdk/network/z;

    return-object v0
.end method

.method public v()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
