###### Class com.bykv.vk.openvk.preload.a.b.a.e (com.bykv.vk.openvk.preload.a.b.a.e)
.class public final Lcom/bykv/vk/openvk/preload/a/b/a/e;
.super Lcom/bykv/vk/openvk/preload/a/d/a;
.source "JsonTreeReader.java"


# static fields
.field private static final c:Ljava/io/Reader;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private e:[Ljava/lang/Object;

.field private f:I

.field private g:[Ljava/lang/String;

.field private h:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/a/e$1;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/a/b/a/e$1;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->c:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->d:Ljava/lang/Object;

    return-void
.end method

.method private s()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->e:[Ljava/lang/Object;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    return-object v2
.end method

.method private t()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->a:Lcom/bykv/vk/openvk/preload/a/d/b;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->a(Lcom/bykv/vk/openvk/preload/a/d/b;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/i;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/a/i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public final a(Lcom/bykv/vk/openvk/preload/a/d/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    move-result-object v0

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->e:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_21

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->e:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h:[I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->g:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->g:[Ljava/lang/String;

    :cond_21
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->e:[Ljava/lang/Object;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->b:Lcom/bykv/vk/openvk/preload/a/d/b;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->a(Lcom/bykv/vk/openvk/preload/a/d/b;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->s()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->s()Ljava/lang/Object;

    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    if-lez v0, :cond_19

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_19
    return-void
.end method

.method public final c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->c:Lcom/bykv/vk/openvk/preload/a/d/b;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->a(Lcom/bykv/vk/openvk/preload/a/d/b;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/n;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/a/n;->a:Lcom/bykv/vk/openvk/preload/a/b/h;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/a/b/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bykv/vk/openvk/preload/a/b/a/e;->d:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->e:[Ljava/lang/Object;

    iput v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    return-void
.end method

.method public final d()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->d:Lcom/bykv/vk/openvk/preload/a/d/b;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->a(Lcom/bykv/vk/openvk/preload/a/d/b;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->s()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->s()Ljava/lang/Object;

    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    if-lez v0, :cond_19

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_19
    return-void
.end method

.method public final e()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/a/d/b;->d:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-eq v0, v1, :cond_e

    sget-object v1, Lcom/bykv/vk/openvk/preload/a/d/b;->b:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/bykv/vk/openvk/preload/a/d/b;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    if-nez v0, :cond_7

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->j:Lcom/bykv/vk/openvk/preload/a/d/b;

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->e:[Ljava/lang/Object;

    iget v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/bykv/vk/openvk/preload/a/n;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    if-eqz v1, :cond_26

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->e:Lcom/bykv/vk/openvk/preload/a/d/b;

    return-object v0

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2e
    if-eqz v1, :cond_33

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->d:Lcom/bykv/vk/openvk/preload/a/d/b;

    return-object v0

    :cond_33
    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->b:Lcom/bykv/vk/openvk/preload/a/d/b;

    return-object v0

    :cond_36
    instance-of v1, v0, Lcom/bykv/vk/openvk/preload/a/n;

    if-eqz v1, :cond_3d

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->c:Lcom/bykv/vk/openvk/preload/a/d/b;

    return-object v0

    :cond_3d
    instance-of v1, v0, Lcom/bykv/vk/openvk/preload/a/i;

    if-eqz v1, :cond_44

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->a:Lcom/bykv/vk/openvk/preload/a/d/b;

    return-object v0

    :cond_44
    instance-of v1, v0, Lcom/bykv/vk/openvk/preload/a/p;

    if-eqz v1, :cond_67

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/p;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/a/p;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_53

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->f:Lcom/bykv/vk/openvk/preload/a/d/b;

    return-object v0

    :cond_53
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_5a

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->h:Lcom/bykv/vk/openvk/preload/a/d/b;

    return-object v0

    :cond_5a
    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_61

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->g:Lcom/bykv/vk/openvk/preload/a/d/b;

    return-object v0

    :cond_61
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_67
    instance-of v1, v0, Lcom/bykv/vk/openvk/preload/a/m;

    if-eqz v1, :cond_6e

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->i:Lcom/bykv/vk/openvk/preload/a/d/b;

    return-object v0

    :cond_6e
    sget-object v1, Lcom/bykv/vk/openvk/preload/a/b/a/e;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_7a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final g()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->e:[Ljava/lang/Object;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->e:Lcom/bykv/vk/openvk/preload/a/d/b;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->a(Lcom/bykv/vk/openvk/preload/a/d/b;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->g:[Ljava/lang/String;

    iget v3, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->a(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final i()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/a/d/b;->f:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-eq v0, v1, :cond_30

    sget-object v2, Lcom/bykv/vk/openvk/preload/a/d/b;->g:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-ne v0, v2, :cond_d

    goto :goto_30

    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_30
    :goto_30
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/a/p;->b()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    if-lez v1, :cond_48

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_48
    return-object v0
.end method

.method public final j()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->h:Lcom/bykv/vk/openvk/preload/a/d/b;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->a(Lcom/bykv/vk/openvk/preload/a/d/b;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/a/p;->f()Z

    move-result v0

    iget v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    if-lez v1, :cond_1d

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_1d
    return v0
.end method

.method public final k()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/a/d/b;->i:Lcom/bykv/vk/openvk/preload/a/d/b;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->a(Lcom/bykv/vk/openvk/preload/a/d/b;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->s()Ljava/lang/Object;

    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    if-lez v0, :cond_16

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_16
    return-void
.end method

.method public final l()D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/a/d/b;->g:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-eq v0, v1, :cond_30

    sget-object v2, Lcom/bykv/vk/openvk/preload/a/d/b;->f:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-ne v0, v2, :cond_d

    goto :goto_30

    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_30
    :goto_30
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/a/p;->c()D

    move-result-wide v0

    iget-boolean v2, p0, Lcom/bykv/vk/openvk/preload/a/d/a;->a:Z

    if-nez v2, :cond_5b

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_5b

    :cond_4b
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5b
    :goto_5b
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->s()Ljava/lang/Object;

    iget v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    if-lez v2, :cond_6c

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_6c
    return-wide v0
.end method

.method public final m()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/a/d/b;->g:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-eq v0, v1, :cond_30

    sget-object v2, Lcom/bykv/vk/openvk/preload/a/d/b;->f:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-ne v0, v2, :cond_d

    goto :goto_30

    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_30
    :goto_30
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/a/p;->d()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->s()Ljava/lang/Object;

    iget v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    if-lez v2, :cond_4b

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_4b
    return-wide v0
.end method

.method public final n()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/a/d/b;->g:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-eq v0, v1, :cond_30

    sget-object v2, Lcom/bykv/vk/openvk/preload/a/d/b;->f:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-ne v0, v2, :cond_d

    goto :goto_30

    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_30
    :goto_30
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/a/p;->e()I

    move-result v0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->s()Ljava/lang/Object;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    if-lez v1, :cond_4b

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_4b
    return v0
.end method

.method public final o()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/a/d/b;->e:Lcom/bykv/vk/openvk/preload/a/d/b;

    const-string v2, "null"

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h()Ljava/lang/String;

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->g:[Ljava/lang/String;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    add-int/lit8 v1, v1, -0x2

    aput-object v2, v0, v1

    goto :goto_23

    :cond_16
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/a/e;->s()Ljava/lang/Object;

    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    if-lez v0, :cond_23

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->g:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aput-object v2, v1, v0

    :cond_23
    :goto_23
    iget v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    if-lez v0, :cond_31

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_31
    return-void
.end method

.method public final p()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->f:I

    if-ge v1, v2, :cond_4f

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->e:[Ljava/lang/Object;

    aget-object v3, v2, v1

    instance-of v3, v3, Lcom/bykv/vk/openvk/preload/a/i;

    if-eqz v3, :cond_2e

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_4c

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->h:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_2e
    aget-object v3, v2, v1

    instance-of v3, v3, Lcom/bykv/vk/openvk/preload/a/n;

    if-eqz v3, :cond_4c

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_4c

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/e;->g:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-eqz v3, :cond_4c

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/bykv/vk/openvk/preload/a/b/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bykv.vk.openvk.preload.a.b.a.e.AnonymousClass1 (com.bykv.vk.openvk.preload.a.b.a.e$1)
.class final Lcom/bykv/vk/openvk/preload/a/b/a/e$1;
.super Ljava/io/Reader;
.source "JsonTreeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/a/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final read([CII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
