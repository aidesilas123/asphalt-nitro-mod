###### Class com.google.common.graph.p (com.google.common.graph.p)
.class public abstract Lcom/google/common/graph/p;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lcom/google/common/graph/k0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/k0<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static z(Lcom/google/common/graph/k0;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TE;",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/p$b;

    invoke-direct {v0, p0}, Lcom/google/common/graph/p$b;-><init>(Lcom/google/common/graph/k0;)V

    invoke-interface {p0}, Lcom/google/common/graph/k0;->b()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/f;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/common/graph/k0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/common/graph/k0;

    invoke-interface {p0}, Lcom/google/common/graph/k0;->d()Z

    move-result v1

    invoke-interface {p1}, Lcom/google/common/graph/k0;->d()Z

    move-result v3

    if-ne v1, v3, :cond_33

    invoke-interface {p0}, Lcom/google/common/graph/k0;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/graph/k0;->i()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {p0}, Lcom/google/common/graph/p;->z(Lcom/google/common/graph/k0;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/graph/p;->z(Lcom/google/common/graph/k0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    return v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/common/graph/p;->z(Lcom/google/common/graph/k0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public t()Lcom/google/common/graph/b0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/b0<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/p$a;

    invoke-direct {v0, p0}, Lcom/google/common/graph/p$a;-><init>(Lcom/google/common/graph/p;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    invoke-interface {p0}, Lcom/google/common/graph/k0;->d()Z

    move-result v0

    invoke-interface {p0}, Lcom/google/common/graph/k0;->q()Z

    move-result v1

    invoke-interface {p0}, Lcom/google/common/graph/k0;->f()Z

    move-result v2

    invoke-interface {p0}, Lcom/google/common/graph/k0;->i()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/common/graph/p;->z(Lcom/google/common/graph/k0;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x57

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "isDirected: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", allowsParallelEdges: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", allowsSelfLoops: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", nodes: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", edges: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.graph.p.a (com.google.common.graph.p$a)
.class Lcom/google/common/graph/p$a;
.super Lcom/google/common/graph/n;
.source "AbstractNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/p;->t()Lcom/google/common/graph/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/n<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/p;


# direct methods
.method constructor <init>(Lcom/google/common/graph/p;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-direct {p0}, Lcom/google/common/graph/n;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/graph/p$a;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->q()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0}, Lcom/google/common/graph/n;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Lcom/google/common/graph/p$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/graph/p$a$a;-><init>(Lcom/google/common/graph/p$a;)V

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->d()Z

    move-result v0

    return v0
.end method

.method public e()Lcom/google/common/graph/ElementOrder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->e()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->f()Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public i()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->i()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/common/graph/ElementOrder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/graph/ElementOrder;->unordered()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.graph.p.a.C0266a (com.google.common.graph.p$a$a)
.class Lcom/google/common/graph/p$a$a;
.super Ljava/util/AbstractSet;
.source "AbstractNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/p$a;->b()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/p$a;


# direct methods
.method constructor <init>(Lcom/google/common/graph/p$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/graph/p$a$a;->a:Lcom/google/common/graph/p$a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/common/graph/EndpointPair;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/common/graph/EndpointPair;

    iget-object v0, p0, Lcom/google/common/graph/p$a$a;->a:Lcom/google/common/graph/p$a;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/l;->A(Lcom/google/common/graph/EndpointPair;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/common/graph/p$a$a;->a:Lcom/google/common/graph/p$a;

    invoke-virtual {v0}, Lcom/google/common/graph/p$a;->i()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/common/graph/p$a$a;->a:Lcom/google/common/graph/p$a;

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/graph/p$a;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->h()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 v1, 0x1

    :cond_35
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/p$a$a;->a:Lcom/google/common/graph/p$a;

    iget-object v0, v0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/p$a$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/graph/p$a$a$a;-><init>(Lcom/google/common/graph/p$a$a;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/graph/p$a$a;->a:Lcom/google/common/graph/p$a;

    iget-object v0, v0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

###### Class com.google.common.graph.p.a.C0266a.C0267a (com.google.common.graph.p$a$a$a)
.class Lcom/google/common/graph/p$a$a$a;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lcom/google/common/base/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/p$a$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/f<",
        "TE;",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/p$a$a;


# direct methods
.method constructor <init>(Lcom/google/common/graph/p$a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/graph/p$a$a$a;->a:Lcom/google/common/graph/p$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/p$a$a$a;->a:Lcom/google/common/graph/p$a$a;

    iget-object v0, v0, Lcom/google/common/graph/p$a$a;->a:Lcom/google/common/graph/p$a;

    iget-object v0, v0, Lcom/google/common/graph/p$a;->a:Lcom/google/common/graph/p;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->s(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/graph/p$a$a$a;->a(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.graph.p.b (com.google.common.graph.p$b)
.class Lcom/google/common/graph/p$b;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lcom/google/common/base/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/p;->z(Lcom/google/common/graph/k0;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/f<",
        "TE;",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/k0;


# direct methods
.method constructor <init>(Lcom/google/common/graph/k0;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/graph/p$b;->a:Lcom/google/common/graph/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/p$b;->a:Lcom/google/common/graph/k0;

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->s(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/graph/p$b;->a(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method
