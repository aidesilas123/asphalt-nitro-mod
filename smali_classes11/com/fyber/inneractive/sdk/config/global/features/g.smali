###### Class com.fyber.inneractive.sdk.config.global.features.g (com.fyber.inneractive.sdk.config.global.features.g)
.class public abstract Lcom/fyber/inneractive/sdk/config/global/features/g;
.super Lcom/fyber/inneractive/sdk/config/global/p;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/config/global/b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/config/global/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/config/global/p;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/config/global/features/g;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_b
    return p2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Double;
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/config/global/k;

    invoke-virtual {v1, p1}, Lcom/fyber/inneractive/sdk/config/global/p;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_a

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-nez v1, :cond_2c

    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/config/global/p;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    :cond_2c
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/config/global/k;

    invoke-virtual {v1, p1}, Lcom/fyber/inneractive/sdk/config/global/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-nez v1, :cond_31

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/p;->a:Lcom/fyber/inneractive/sdk/config/global/n;

    if-eqz v0, :cond_32

    invoke-interface {v0, p1, p2}, Lcom/fyber/inneractive/sdk/config/global/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_32

    :cond_31
    move-object p2, v1

    :cond_32
    :goto_32
    return-object p2
.end method

.method public a(Lcom/fyber/inneractive/sdk/config/global/features/g;)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/fyber/inneractive/sdk/config/global/features/g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/p;->a:Lcom/fyber/inneractive/sdk/config/global/n;

    iput-object v0, p1, Lcom/fyber/inneractive/sdk/config/global/p;->a:Lcom/fyber/inneractive/sdk/config/global/n;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p1, Lcom/fyber/inneractive/sdk/config/global/features/g;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->d:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p1, Lcom/fyber/inneractive/sdk/config/global/features/g;->d:Ljava/util/Map;

    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/config/global/features/g;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_b
    return p2
.end method

.method public abstract b()Lcom/fyber/inneractive/sdk/config/global/features/g;
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/config/global/k;

    invoke-virtual {v1, p1}, Lcom/fyber/inneractive/sdk/config/global/p;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-nez v1, :cond_2c

    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/config/global/p;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    :cond_2c
    return-object v1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fyber/inneractive/sdk/config/global/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/config/global/k;

    invoke-virtual {v1, p1}, Lcom/fyber/inneractive/sdk/config/global/p;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_a

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-nez v1, :cond_2c

    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/config/global/p;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    :cond_2c
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/global/p;->a:Lcom/fyber/inneractive/sdk/config/global/n;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/global/features/g;->c:Ljava/util/Map;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "id: %s, params: %s exp: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
