###### Class com.bytedance.sdk.component.b.a.a.a.f (com.bytedance.sdk.component.b.a.a.a.f)
.class public Lcom/bytedance/sdk/component/b/a/a/a/f;
.super Lcom/bytedance/sdk/component/b/a/o;
.source "NetResponse.java"


# instance fields
.field a:Ljava/net/HttpURLConnection;

.field b:Lcom/bytedance/sdk/component/b/a/m;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/component/b/a/m;)V
    .registers 3

    invoke-direct {p0}, Lcom/bytedance/sdk/component/b/a/o;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Ljava/net/HttpURLConnection;

    iput-object p2, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->b:Lcom/bytedance/sdk/component/b/a/m;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/b/a/a/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/b/a/a/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    return-object p2
.end method

.method public b()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()I
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    const/4 v0, -0x1

    return v0
.end method

.method public close()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/b/a/a/a/f;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/p;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public d()Z
    .registers 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/b/a/a/a/f;->c()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/b/a/a/a/f;->c()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/component/b/a/p;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/b/a/a/a/g;

    iget-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/b/a/a/a/g;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/bytedance/sdk/component/b/a/f;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/a/f;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "Content-Range"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/b/a/a/a/f;->c()I

    move-result v5

    const/16 v6, 0xce

    if-ne v5, v6, :cond_4c

    goto :goto_29

    :cond_4c
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_57
    new-instance v1, Lcom/bytedance/sdk/component/b/a/f;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/component/b/a/f;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method public h()Lcom/bytedance/sdk/component/b/a/l;
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/component/b/a/l;->b:Lcom/bytedance/sdk/component/b/a/l;

    return-object v0
.end method

.method public i()Lcom/bytedance/sdk/component/b/a/j;
    .registers 2

    new-instance v0, Lcom/bytedance/sdk/component/b/a/j;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/b/a/j;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
