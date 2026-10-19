###### Class com.mbridge.msdk.e.a.m (com.mbridge.msdk.e.a.m)
.class public abstract Lcom/mbridge/msdk/e/a/m;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/e/a/m$b;,
        Lcom/mbridge/msdk/e/a/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mbridge/msdk/e/a/m<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/e/a/c;

.field private b:Ljava/lang/String;

.field private c:Lcom/mbridge/msdk/e/a/p;

.field private final d:Lcom/mbridge/msdk/e/a/v$a;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/Object;

.field private j:Lcom/mbridge/msdk/e/a/o$a;

.field private k:Ljava/lang/Integer;

.field private l:Lcom/mbridge/msdk/e/a/n;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/mbridge/msdk/e/a/r;

.field private s:Lcom/mbridge/msdk/e/a/a$a;

.field private t:Lcom/mbridge/msdk/e/a/m$a;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/e/a/m;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/e/a/m;->d:Lcom/mbridge/msdk/e/a/v$a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/e/a/m;->i:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mbridge/msdk/e/a/m;->m:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/e/a/m;->n:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/e/a/m;->o:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/e/a/m;->p:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/e/a/m;->q:Z

    iput-object v0, p0, Lcom/mbridge/msdk/e/a/m;->s:Lcom/mbridge/msdk/e/a/a$a;

    iput p1, p0, Lcom/mbridge/msdk/e/a/m;->e:I

    iput-object p2, p0, Lcom/mbridge/msdk/e/a/m;->f:Ljava/lang/String;

    iput p3, p0, Lcom/mbridge/msdk/e/a/m;->g:I

    new-instance p1, Lcom/mbridge/msdk/e/a/e;

    invoke-direct {p1}, Lcom/mbridge/msdk/e/a/e;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/m;->r:Lcom/mbridge/msdk/e/a/r;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3d

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3d
    iput v1, p0, Lcom/mbridge/msdk/e/a/m;->h:I

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_55

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_55

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_f

    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_78} :catch_79

    return-object p1

    :catch_79
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/mbridge/msdk/e/a/a$a;)Lcom/mbridge/msdk/e/a/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/e/a/a$a;",
            ")",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/m;->s:Lcom/mbridge/msdk/e/a/a$a;

    return-object p0
.end method

.method public final a(Lcom/mbridge/msdk/e/a/n;)Lcom/mbridge/msdk/e/a/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/e/a/n;",
            ")",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/m;->l:Lcom/mbridge/msdk/e/a/n;

    return-object p0
.end method

.method public final a(Z)Lcom/mbridge/msdk/e/a/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/mbridge/msdk/e/a/m;->m:Z

    return-object p0
.end method

.method protected abstract a(Lcom/mbridge/msdk/e/a/k;)Lcom/mbridge/msdk/e/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/e/a/k;",
            ")",
            "Lcom/mbridge/msdk/e/a/o<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a()Lcom/mbridge/msdk/e/a/r;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->r:Lcom/mbridge/msdk/e/a/r;

    return-object v0
.end method

.method final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->l:Lcom/mbridge/msdk/e/a/n;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1}, Lcom/mbridge/msdk/e/a/n;->a(Lcom/mbridge/msdk/e/a/m;I)V

    :cond_7
    return-void
.end method

.method final a(Lcom/mbridge/msdk/e/a/m$a;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/mbridge/msdk/e/a/m;->t:Lcom/mbridge/msdk/e/a/m$a;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final a(Lcom/mbridge/msdk/e/a/o$a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/m;->j:Lcom/mbridge/msdk/e/a/o$a;

    return-void
.end method

.method final a(Lcom/mbridge/msdk/e/a/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/e/a/o<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/mbridge/msdk/e/a/m;->t:Lcom/mbridge/msdk/e/a/m$a;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p0, p1}, Lcom/mbridge/msdk/e/a/m$a;->a(Lcom/mbridge/msdk/e/a/m;Lcom/mbridge/msdk/e/a/o;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final a(Lcom/mbridge/msdk/e/a/u;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/mbridge/msdk/e/a/m;->j:Lcom/mbridge/msdk/e/a/o$a;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p1}, Lcom/mbridge/msdk/e/a/o$a;->a(Lcom/mbridge/msdk/e/a/u;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method final a(Ljava/lang/String;)V
    .registers 2

    iget-object p1, p0, Lcom/mbridge/msdk/e/a/m;->l:Lcom/mbridge/msdk/e/a/n;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/e/a/n;->b(Lcom/mbridge/msdk/e/a/m;)V

    :cond_7
    return-void
.end method

.method public final b(I)Lcom/mbridge/msdk/e/a/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/m;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method public final b(Z)Lcom/mbridge/msdk/e/a/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/mbridge/msdk/e/a/m;->p:Z

    return-object p0
.end method

.method protected b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Z)Lcom/mbridge/msdk/e/a/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mbridge/msdk/e/a/m<",
            "*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/mbridge/msdk/e/a/m;->q:Z

    return-object p0
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/mbridge/msdk/e/a/m;

    invoke-virtual {p0}, Lcom/mbridge/msdk/e/a/m;->d()Lcom/mbridge/msdk/e/a/m$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/e/a/m;->d()Lcom/mbridge/msdk/e/a/m$b;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/mbridge/msdk/e/a/m;->k:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_24

    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_24
    return v0
.end method

.method public d()Lcom/mbridge/msdk/e/a/m$b;
    .registers 2

    sget-object v0, Lcom/mbridge/msdk/e/a/m$b;->b:Lcom/mbridge/msdk/e/a/m$b;

    return-object v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/e/a/m;->g:I

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/e/a/m;->e:I

    return v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/e/a/m;->h:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->b:Ljava/lang/String;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->a:Lcom/mbridge/msdk/e/a/c;

    if-nez v0, :cond_16

    new-instance v0, Lcom/mbridge/msdk/e/a/a/d;

    invoke-direct {v0}, Lcom/mbridge/msdk/e/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/e/a/m;->a:Lcom/mbridge/msdk/e/a/c;

    :cond_16
    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->a:Lcom/mbridge/msdk/e/a/c;

    invoke-interface {v0, p0}, Lcom/mbridge/msdk/e/a/c;->a(Lcom/mbridge/msdk/e/a/m;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/e/a/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lcom/mbridge/msdk/e/a/p;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->c:Lcom/mbridge/msdk/e/a/p;

    return-object v0
.end method

.method public final k()Lcom/mbridge/msdk/e/a/a$a;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->s:Lcom/mbridge/msdk/e/a/a$a;

    return-object v0
.end method

.method public final l()Z
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/mbridge/msdk/e/a/m;->n:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final m()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()[B
    .registers 3

    invoke-virtual {p0}, Lcom/mbridge/msdk/e/a/m;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_13

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Lcom/mbridge/msdk/e/a/m;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/e/a/m;->m:Z

    return v0
.end method

.method public final p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/e/a/m;->p:Z

    return v0
.end method

.method public final q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/e/a/m;->q:Z

    return v0
.end method

.method public final r()I
    .registers 2

    invoke-virtual {p0}, Lcom/mbridge/msdk/e/a/m;->a()Lcom/mbridge/msdk/e/a/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/e/a/r;->a()I

    move-result v0

    return v0
.end method

.method public final s()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/mbridge/msdk/e/a/m;->o:Z

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public final t()Z
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/mbridge/msdk/e/a/m;->o:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/e/a/m;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/e/a/m;->l()Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "[X] "

    goto :goto_27

    :cond_25
    const-string v2, "[ ] "

    :goto_27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/e/a/m;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mbridge/msdk/e/a/m;->d()Lcom/mbridge/msdk/e/a/m$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->k:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final u()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/e/a/m;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/mbridge/msdk/e/a/m;->t:Lcom/mbridge/msdk/e/a/m$a;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p0}, Lcom/mbridge/msdk/e/a/m$a;->a(Lcom/mbridge/msdk/e/a/m;)V

    :cond_b
    return-void

    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method
