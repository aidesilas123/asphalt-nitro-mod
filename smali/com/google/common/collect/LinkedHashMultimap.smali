###### Class com.google.common.collect.LinkedHashMultimap (com.google.common.collect.LinkedHashMultimap)
.class public final Lcom/google/common/collect/LinkedHashMultimap;
.super Lcom/google/common/collect/y1;
.source "LinkedHashMultimap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/LinkedHashMultimap$c;,
        Lcom/google/common/collect/LinkedHashMultimap$b;,
        Lcom/google/common/collect/LinkedHashMultimap$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y1<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field transient f:I

.field private transient g:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-static {p1}, Lcom/google/common/collect/i2;->e(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/y1;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap;->f:I

    const-string p1, "expectedValuesPerKey"

    invoke-static {p2, p1}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    iput p2, p0, Lcom/google/common/collect/LinkedHashMultimap;->f:I

    invoke-static {}, Lcom/google/common/collect/LinkedHashMultimap$b;->j()Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap;->g:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-static {p1, p1}, Lcom/google/common/collect/LinkedHashMultimap;->Q(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method static synthetic I(Lcom/google/common/collect/LinkedHashMultimap$d;Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->R(Lcom/google/common/collect/LinkedHashMultimap$d;Lcom/google/common/collect/LinkedHashMultimap$d;)V

    return-void
.end method

.method static synthetic J(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$b;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap;->g:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-object p0
.end method

.method static synthetic K(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->Q(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method static synthetic L(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .registers 1

    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->P(Lcom/google/common/collect/LinkedHashMultimap$d;)V

    return-void
.end method

.method static synthetic M(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .registers 1

    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->O(Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method private static O(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$b;->c()Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$b;->d()Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->Q(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method private static P(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/LinkedHashMultimap$d;->e()Lcom/google/common/collect/LinkedHashMultimap$d;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/LinkedHashMultimap$d;->f()Lcom/google/common/collect/LinkedHashMultimap$d;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->R(Lcom/google/common/collect/LinkedHashMultimap$d;Lcom/google/common/collect/LinkedHashMultimap$d;)V

    return-void
.end method

.method private static Q(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$b;->m(Lcom/google/common/collect/LinkedHashMultimap$b;)V

    invoke-virtual {p1, p0}, Lcom/google/common/collect/LinkedHashMultimap$b;->k(Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method private static R(Lcom/google/common/collect/LinkedHashMultimap$d;Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$d;->g(Lcom/google/common/collect/LinkedHashMultimap$d;)V

    invoke-interface {p1, p0}, Lcom/google/common/collect/LinkedHashMultimap$d;->h(Lcom/google/common/collect/LinkedHashMultimap$d;)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedHashMultimap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedHashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/LinkedHashMultimap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/LinkedHashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->j(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/common/collect/Maps;->j(I)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/b2;)Lcom/google/common/collect/LinkedHashMultimap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/b2<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/LinkedHashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/b2;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->create(II)Lcom/google/common/collect/LinkedHashMultimap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->j(Lcom/google/common/collect/b2;)Z

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {}, Lcom/google/common/collect/LinkedHashMultimap$b;->j()Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->g:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-static {v0, v0}, Lcom/google/common/collect/LinkedHashMultimap;->Q(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->f:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/common/collect/i2;->e(I)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v0, :cond_2b

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/common/collect/LinkedHashMultimap;->v(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    :goto_2f
    if-ge v2, v0, :cond_4a

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_4a
    invoke-virtual {p0, v1}, Lcom/google/common/collect/g;->D(Ljava/util/Map;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_16

    :cond_24
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_33

    :cond_4e
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/j;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method N()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->f:I

    invoke-static {v0}, Lcom/google/common/collect/i2;->f(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/o;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/g;->clear()V

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->g:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-static {v0, v0}, Lcom/google/common/collect/LinkedHashMultimap;->Q(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/g;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic e()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/o;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/o;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic f()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/o;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/o;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method h()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap$a;-><init>(Lcom/google/common/collect/LinkedHashMultimap;)V

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/j;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/j;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j(Lcom/google/common/collect/b2;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/j;->j(Lcom/google/common/collect/b2;)Z

    move-result p1

    return p1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/j;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/o;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/j;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic size()I
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/g;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic u()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->N()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method v(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$c;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->f:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/LinkedHashMultimap$c;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

###### Class com.google.common.collect.LinkedHashMultimap.a (com.google.common.collect.LinkedHashMultimap$a)
.class Lcom/google/common/collect/LinkedHashMultimap$a;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedHashMultimap;->h()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/LinkedHashMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->c:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap;->J(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/LinkedHashMultimap$b;->d()Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->a:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->a:Lcom/google/common/collect/LinkedHashMultimap$b;

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->b:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedHashMultimap$b;->d()Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->a:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-object v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->a:Lcom/google/common/collect/LinkedHashMultimap$b;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->c:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {v1}, Lcom/google/common/collect/LinkedHashMultimap;->J(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$a;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->b:Lcom/google/common/collect/LinkedHashMultimap$b;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->b:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-virtual {v1}, Lcom/google/common/collect/o1;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->b:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-virtual {v2}, Lcom/google/common/collect/o1;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$a;->b:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method

###### Class com.google.common.collect.LinkedHashMultimap.b (com.google.common.collect.LinkedHashMultimap$b)
.class final Lcom/google/common/collect/LinkedHashMultimap$b;
.super Lcom/google/common/collect/o1;
.source "LinkedHashMultimap.java"

# interfaces
.implements Lcom/google/common/collect/LinkedHashMultimap$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/o1<",
        "TK;TV;>;",
        "Lcom/google/common/collect/LinkedHashMultimap$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final c:I

.field d:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/common/collect/LinkedHashMultimap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/collect/LinkedHashMultimap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field h:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/o1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput p3, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    iput-object p4, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method

.method static j()Lcom/google/common/collect/LinkedHashMultimap$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/google/common/collect/LinkedHashMultimap$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$b;)V

    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/common/collect/LinkedHashMultimap$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->g:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/LinkedHashMultimap$b;

    return-object v0
.end method

.method public d()Lcom/google/common/collect/LinkedHashMultimap$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->h:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/LinkedHashMultimap$b;

    return-object v0
.end method

.method public e()Lcom/google/common/collect/LinkedHashMultimap$d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/LinkedHashMultimap$d;

    return-object v0
.end method

.method public f()Lcom/google/common/collect/LinkedHashMultimap$d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/LinkedHashMultimap$d;

    return-object v0
.end method

.method public g(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-void
.end method

.method public h(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-void
.end method

.method i(Ljava/lang/Object;I)Z
    .registers 4

    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    if-ne v0, p2, :cond_10

    invoke-virtual {p0}, Lcom/google/common/collect/o1;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public k(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->g:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method

.method public m(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->h:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method

###### Class com.google.common.collect.LinkedHashMultimap.c (com.google.common.collect.LinkedHashMultimap$c)
.class final Lcom/google/common/collect/LinkedHashMultimap$c;
.super Lcom/google/common/collect/Sets$j;
.source "LinkedHashMultimap.java"

# interfaces
.implements Lcom/google/common/collect/LinkedHashMultimap$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$j<",
        "TV;>;",
        "Lcom/google/common/collect/LinkedHashMultimap$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field b:[Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Lcom/google/common/collect/LinkedHashMultimap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private f:Lcom/google/common/collect/LinkedHashMultimap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic g:Lcom/google/common/collect/LinkedHashMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->g:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$j;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->c:I

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->d:I

    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->a:Ljava/lang/Object;

    iput-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->e:Lcom/google/common/collect/LinkedHashMultimap$d;

    iput-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->f:Lcom/google/common/collect/LinkedHashMultimap$d;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    invoke-static {p3, p1, p2}, Lcom/google/common/collect/l1;->a(ID)I

    move-result p1

    new-array p1, p1, [Lcom/google/common/collect/LinkedHashMultimap$b;

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->b:[Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedHashMultimap$c;)Lcom/google/common/collect/LinkedHashMultimap$d;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->e:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/collect/LinkedHashMultimap$c;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->d:I

    return p0
.end method

.method private i()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->b:[Lcom/google/common/collect/LinkedHashMultimap$b;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private j()V
    .registers 7

    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->c:I

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->b:[Lcom/google/common/collect/LinkedHashMultimap$b;

    array-length v1, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/l1;->b(IID)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->b:[Lcom/google/common/collect/LinkedHashMultimap$b;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lcom/google/common/collect/LinkedHashMultimap$b;

    iput-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->b:[Lcom/google/common/collect/LinkedHashMultimap$b;

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->e:Lcom/google/common/collect/LinkedHashMultimap$d;

    :goto_1a
    if-eq v2, p0, :cond_2d

    move-object v3, v2

    check-cast v3, Lcom/google/common/collect/LinkedHashMultimap$b;

    iget v4, v3, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    and-int/2addr v4, v0

    aget-object v5, v1, v4

    iput-object v5, v3, Lcom/google/common/collect/LinkedHashMultimap$b;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    aput-object v3, v1, v4

    invoke-interface {v2}, Lcom/google/common/collect/LinkedHashMultimap$d;->f()Lcom/google/common/collect/LinkedHashMultimap$d;

    move-result-object v2

    goto :goto_1a

    :cond_2d
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$c;->i()I

    move-result v1

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->b:[Lcom/google/common/collect/LinkedHashMultimap$b;

    aget-object v2, v2, v1

    move-object v3, v2

    :goto_e
    if-eqz v3, :cond_1b

    invoke-virtual {v3, p1, v0}, Lcom/google/common/collect/LinkedHashMultimap$b;->i(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 p1, 0x0

    return p1

    :cond_18
    iget-object v3, v3, Lcom/google/common/collect/LinkedHashMultimap$b;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    goto :goto_e

    :cond_1b
    new-instance v3, Lcom/google/common/collect/LinkedHashMultimap$b;

    iget-object v4, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->a:Ljava/lang/Object;

    invoke-direct {v3, v4, p1, v0, v2}, Lcom/google/common/collect/LinkedHashMultimap$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$b;)V

    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->f:Lcom/google/common/collect/LinkedHashMultimap$d;

    invoke-static {p1, v3}, Lcom/google/common/collect/LinkedHashMultimap;->I(Lcom/google/common/collect/LinkedHashMultimap$d;Lcom/google/common/collect/LinkedHashMultimap$d;)V

    invoke-static {v3, p0}, Lcom/google/common/collect/LinkedHashMultimap;->I(Lcom/google/common/collect/LinkedHashMultimap$d;Lcom/google/common/collect/LinkedHashMultimap$d;)V

    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->g:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap;->J(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/LinkedHashMultimap$b;->c()Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/common/collect/LinkedHashMultimap;->K(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->g:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap;->J(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/common/collect/LinkedHashMultimap;->K(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->b:[Lcom/google/common/collect/LinkedHashMultimap$b;

    aput-object v3, p1, v1

    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->c:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->c:I

    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->d:I

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$c;->j()V

    return v0
.end method

.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->b:[Lcom/google/common/collect/LinkedHashMultimap$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->c:I

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->e:Lcom/google/common/collect/LinkedHashMultimap$d;

    :goto_b
    if-eq v0, p0, :cond_18

    move-object v1, v0

    check-cast v1, Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-static {v1}, Lcom/google/common/collect/LinkedHashMultimap;->M(Lcom/google/common/collect/LinkedHashMultimap$b;)V

    invoke-interface {v0}, Lcom/google/common/collect/LinkedHashMultimap$d;->f()Lcom/google/common/collect/LinkedHashMultimap$d;

    move-result-object v0

    goto :goto_b

    :cond_18
    invoke-static {p0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->I(Lcom/google/common/collect/LinkedHashMultimap$d;Lcom/google/common/collect/LinkedHashMultimap$d;)V

    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->d:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    invoke-static {p1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->b:[Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$c;->i()I

    move-result v2

    and-int/2addr v2, v0

    aget-object v1, v1, v2

    :goto_d
    if-eqz v1, :cond_1a

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/LinkedHashMultimap$b;->i(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap$b;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    goto :goto_d

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public e()Lcom/google/common/collect/LinkedHashMultimap$d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->f:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-object v0
.end method

.method public f()Lcom/google/common/collect/LinkedHashMultimap$d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->e:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-object v0
.end method

.method public g(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->e:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-void
.end method

.method public h(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->f:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$c$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap$c$a;-><init>(Lcom/google/common/collect/LinkedHashMultimap$c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 8

    invoke-static {p1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$c;->i()I

    move-result v1

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->b:[Lcom/google/common/collect/LinkedHashMultimap$b;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_e
    if-eqz v2, :cond_3b

    invoke-virtual {v2, p1, v0}, Lcom/google/common/collect/LinkedHashMultimap$b;->i(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_35

    if-nez v3, :cond_1f

    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->b:[Lcom/google/common/collect/LinkedHashMultimap$b;

    iget-object v0, v2, Lcom/google/common/collect/LinkedHashMultimap$b;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    aput-object v0, p1, v1

    goto :goto_23

    :cond_1f
    iget-object p1, v2, Lcom/google/common/collect/LinkedHashMultimap$b;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    iput-object p1, v3, Lcom/google/common/collect/LinkedHashMultimap$b;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    :goto_23
    invoke-static {v2}, Lcom/google/common/collect/LinkedHashMultimap;->L(Lcom/google/common/collect/LinkedHashMultimap$d;)V

    invoke-static {v2}, Lcom/google/common/collect/LinkedHashMultimap;->M(Lcom/google/common/collect/LinkedHashMultimap$b;)V

    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->c:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->c:I

    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->d:I

    return v0

    :cond_35
    iget-object v3, v2, Lcom/google/common/collect/LinkedHashMultimap$b;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_e

    :cond_3b
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c;->c:I

    return v0
.end method

###### Class com.google.common.collect.LinkedHashMultimap.c.a (com.google.common.collect.LinkedHashMultimap$c$a)
.class Lcom/google/common/collect/LinkedHashMultimap$c$a;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedHashMultimap$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/LinkedHashMultimap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field final synthetic d:Lcom/google/common/collect/LinkedHashMultimap$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->d:Lcom/google/common/collect/LinkedHashMultimap$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap$c;->a(Lcom/google/common/collect/LinkedHashMultimap$c;)Lcom/google/common/collect/LinkedHashMultimap$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->a:Lcom/google/common/collect/LinkedHashMultimap$d;

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap$c;->c(Lcom/google/common/collect/LinkedHashMultimap$c;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->c:I

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->d:Lcom/google/common/collect/LinkedHashMultimap$c;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap$c;->c(Lcom/google/common/collect/LinkedHashMultimap$c;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->c:I

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$c$a;->b()V

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->a:Lcom/google/common/collect/LinkedHashMultimap$d;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->d:Lcom/google/common/collect/LinkedHashMultimap$c;

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$c$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->a:Lcom/google/common/collect/LinkedHashMultimap$d;

    check-cast v0, Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-virtual {v0}, Lcom/google/common/collect/o1;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->b:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedHashMultimap$b;->f()Lcom/google/common/collect/LinkedHashMultimap$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->a:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-object v1

    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$c$a;->b()V

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->b:Lcom/google/common/collect/LinkedHashMultimap$b;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->d:Lcom/google/common/collect/LinkedHashMultimap$c;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->b:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-virtual {v1}, Lcom/google/common/collect/o1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap$c;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->d:Lcom/google/common/collect/LinkedHashMultimap$c;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap$c;->c(Lcom/google/common/collect/LinkedHashMultimap$c;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->b:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method

###### Class com.google.common.collect.LinkedHashMultimap.d (com.google.common.collect.LinkedHashMultimap$d)
.class interface abstract Lcom/google/common/collect/LinkedHashMultimap$d;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract e()Lcom/google/common/collect/LinkedHashMultimap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract f()Lcom/google/common/collect/LinkedHashMultimap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract g(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract h(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method
