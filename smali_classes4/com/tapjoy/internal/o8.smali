###### Class com.tapjoy.internal.o8 (com.tapjoy.internal.o8)
.class public final Lcom/tapjoy/internal/o8;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lcom/tapjoy/internal/d7;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/o8;->a:Ljava/util/HashMap;

    new-instance v0, Lcom/tapjoy/internal/d7;

    invoke-direct {v0}, Lcom/tapjoy/internal/d7;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/o8;->b:Lcom/tapjoy/internal/d7;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/o8;->b:Lcom/tapjoy/internal/d7;

    invoke-virtual {v0}, Lcom/tapjoy/internal/d7;->a()Lcom/tapjoy/internal/s6;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/tapjoy/internal/o8;->a:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/tapjoy/internal/s6;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_10
    return-void
.end method

.method public final clear()V
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/o8;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_5
    iget-object v0, p0, Lcom/tapjoy/internal/o8;->b:Lcom/tapjoy/internal/d7;

    invoke-virtual {v0}, Lcom/tapjoy/internal/d7;->a()Lcom/tapjoy/internal/s6;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_5

    :cond_e
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/tapjoy/internal/o8;->a()V

    iget-object v0, p0, Lcom/tapjoy/internal/o8;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/tapjoy/internal/o8;->a()V

    iget-object v0, p0, Lcom/tapjoy/internal/o8;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/s6;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/o8;->a()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/o8;->a()V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/tapjoy/internal/o8;->a()V

    iget-object v0, p0, Lcom/tapjoy/internal/o8;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/s6;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method

.method public final hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/o8;->a()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/o8;->a()V

    iget-object v0, p0, Lcom/tapjoy/internal/o8;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Lcom/tapjoy/internal/o8;->a()V

    iget-object v0, p0, Lcom/tapjoy/internal/o8;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tapjoy/internal/o8;->b:Lcom/tapjoy/internal/d7;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/tapjoy/internal/s6;

    invoke-direct {v2, p1, p2, v1}, Lcom/tapjoy/internal/s6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/tapjoy/internal/d7;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/s6;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/tapjoy/internal/o8;->a()V

    iget-object v0, p0, Lcom/tapjoy/internal/o8;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/s6;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method

.method public final size()I
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/o8;->a()V

    iget-object v0, p0, Lcom/tapjoy/internal/o8;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/o8;->a()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/o8;->a()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
