###### Class com.tapjoy.internal.b4 (com.tapjoy.internal.b4)
.class public abstract Lcom/tapjoy/internal/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tapjoy/internal/k0;
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/z;

    if-nez v0, :cond_8

    sget-object v0, Lcom/tapjoy/internal/k0;->b:Lcom/tapjoy/internal/z;

    sput-object v0, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/z;

    :cond_8
    new-instance v0, Lcom/tapjoy/internal/k0;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/k0;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b(Lcom/tapjoy/internal/x3;)Ljava/lang/Object;
    .registers 2

    invoke-interface {p1, p0}, Lcom/tapjoy/internal/x3;->a(Lcom/tapjoy/internal/b4;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/ArrayList;Lcom/tapjoy/internal/x3;)V
    .registers 5

    move-object v0, p0

    check-cast v0, Lcom/tapjoy/internal/k0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/k0;->I(I)V

    :goto_7
    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p2, p0}, Lcom/tapjoy/internal/x3;->a(Lcom/tapjoy/internal/b4;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/k0;->I(I)V

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()Z
.end method

.method public final f()Z
    .registers 3

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->t()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public final g()Z
    .registers 3

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->t()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final h()Z
    .registers 3

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->t()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public abstract i()Z
.end method

.method public abstract j()D
.end method

.method public abstract k()I
.end method

.method public final l()Ljava/util/LinkedList;
    .registers 4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v1, p0

    check-cast v1, Lcom/tapjoy/internal/k0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/k0;->I(I)V

    :goto_c
    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->s()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1a
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/k0;->I(I)V

    return-object v0
.end method

.method public final m()Ljava/util/LinkedHashMap;
    .registers 5

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v1, p0

    check-cast v1, Lcom/tapjoy/internal/k0;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/k0;->I(I)V

    :goto_c
    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->s()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_1e
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/k0;->I(I)V

    return-object v0
.end method

.method public abstract o()Ljava/lang/String;
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public final q()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/net/URL;
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/b4;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    const-string v1, "BASE_URI"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    check-cast v0, Ljava/net/URI;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v1

    :try_start_14
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/net/URISyntaxException; {:try_start_14 .. :try_end_19} :catch_22

    invoke-virtual {v0, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0

    :catch_22
    move-exception v0

    new-instance v1, Lcom/tapjoy/internal/u4;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/u4;-><init>(Ljava/net/URISyntaxException;)V

    throw v1

    :cond_29
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final s()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->t()I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/k;->b(I)I

    move-result v1

    if-eqz v1, :cond_6a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_65

    const/4 v2, 0x5

    if-eq v1, v2, :cond_60

    const/4 v2, 0x6

    if-eq v1, v2, :cond_56

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4d

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3d

    move-object v0, p0

    check-cast v0, Lcom/tapjoy/internal/k0;

    invoke-virtual {v0}, Lcom/tapjoy/internal/k0;->t()I

    iget v1, v0, Lcom/tapjoy/internal/k0;->k:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2b

    invoke-virtual {v0}, Lcom/tapjoy/internal/k0;->M()I

    const/4 v0, 0x0

    return-object v0

    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    iget v0, v0, Lcom/tapjoy/internal/k0;->k:I

    invoke-static {v0}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Expected null but was "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Expected a value but was "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4d
    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_56
    new-instance v0, Lcom/tapjoy/internal/r2;

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/r2;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_60
    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_65
    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->m()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0

    :cond_6a
    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->l()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public abstract t()I
.end method

.method public abstract u()V
.end method

.method public final v()Z
    .registers 4

    invoke-virtual {p0}, Lcom/tapjoy/internal/b4;->t()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_29

    move-object v0, p0

    check-cast v0, Lcom/tapjoy/internal/k0;

    invoke-virtual {v0}, Lcom/tapjoy/internal/k0;->t()I

    iget v2, v0, Lcom/tapjoy/internal/k0;->k:I

    if-ne v2, v1, :cond_17

    invoke-virtual {v0}, Lcom/tapjoy/internal/k0;->M()I

    const/4 v0, 0x1

    return v0

    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    iget v0, v0, Lcom/tapjoy/internal/k0;->k:I

    invoke-static {v0}, Lcom/tapjoy/internal/f4;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Expected null but was "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    const/4 v0, 0x0

    return v0
.end method
