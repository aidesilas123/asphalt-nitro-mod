###### Class com.google.common.collect.HashBiMap (com.google.common.collect.HashBiMap)
.class public final Lcom/google/common/collect/HashBiMap;
.super Ljava/util/AbstractMap;
.source "HashBiMap.java"

# interfaces
.implements Lcom/google/common/collect/w;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$b;,
        Lcom/google/common/collect/HashBiMap$e;,
        Lcom/google/common/collect/HashBiMap$d;,
        Lcom/google/common/collect/HashBiMap$a;,
        Lcom/google/common/collect/HashBiMap$c;,
        Lcom/google/common/collect/HashBiMap$g;,
        Lcom/google/common/collect/HashBiMap$f;,
        Lcom/google/common/collect/HashBiMap$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/w<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field transient a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field transient b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field transient c:I

.field transient d:I

.field private transient e:[I

.field private transient f:[I

.field private transient g:[I

.field private transient h:[I

.field private transient i:I

.field private transient j:I

.field private transient k:[I

.field private transient l:[I

.field private transient m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field

.field private transient o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient p:Lcom/google/common/collect/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->u(I)V

    return-void
.end method

.method private C(III)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->i(II)V

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->j(II)V

    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget p2, p2, p1

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget p3, p3, p1

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/HashBiMap;->I(II)V

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    sub-int/2addr p2, v0

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/HashBiMap;->y(II)V

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/lit8 p3, p2, -0x1

    const/4 v1, 0x0

    aput-object v1, p1, p3

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    add-int/lit8 p3, p2, -0x1

    aput-object v1, p1, p3

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    return-void
.end method

.method private G(ILjava/lang/Object;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-static {p2}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->q(Ljava/lang/Object;I)I

    move-result v2

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->j:I

    const/4 v4, -0x2

    if-eq v2, v0, :cond_4a

    if-eqz p3, :cond_29

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget v3, p3, v2

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget v4, p3, v2

    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/HashBiMap;->D(II)V

    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne p1, p3, :cond_4a

    move p1, v2

    goto :goto_4a

    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Key already present in map: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    :goto_4a
    if-ne v3, p1, :cond_51

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget v3, p3, p1

    goto :goto_56

    :cond_51
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne v3, p3, :cond_56

    move v3, v2

    :cond_56
    :goto_56
    if-ne v4, p1, :cond_5d

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget v2, p3, p1

    goto :goto_63

    :cond_5d
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne v4, p3, :cond_62

    goto :goto_63

    :cond_62
    move v2, v4

    :goto_63
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget p3, p3, p1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget v0, v0, p1

    invoke-direct {p0, p3, v0}, Lcom/google/common/collect/HashBiMap;->I(II)V

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p3, p3, p1

    invoke-static {p3}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->i(II)V

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aput-object p2, p3, p1

    invoke-static {p2}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->v(II)V

    invoke-direct {p0, v3, p1}, Lcom/google/common/collect/HashBiMap;->I(II)V

    invoke-direct {p0, p1, v2}, Lcom/google/common/collect/HashBiMap;->I(II)V

    return-void
.end method

.method private H(ILjava/lang/Object;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-static {p2}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->s(Ljava/lang/Object;I)I

    move-result v2

    if-eq v2, v0, :cond_3f

    if-eqz p3, :cond_1e

    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/HashBiMap;->E(II)V

    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne p1, p3, :cond_3f

    move p1, v2

    goto :goto_3f

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Value already present in map: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    :goto_3f
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p3, p3, p1

    invoke-static {p3}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->j(II)V

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aput-object p2, p3, p1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->w(II)V

    return-void
.end method

.method private I(II)V
    .registers 5

    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    iput p2, p0, Lcom/google/common/collect/HashBiMap;->i:I

    goto :goto_a

    :cond_6
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aput p2, v1, p1

    :goto_a
    if-ne p2, v0, :cond_f

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->j:I

    goto :goto_13

    :cond_f
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aput p1, v0, p2

    :goto_13
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/HashBiMap;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/HashBiMap;->i:I

    return p0
.end method

.method static synthetic b(Lcom/google/common/collect/HashBiMap;)[I
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->H(ILjava/lang/Object;Z)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/HashBiMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashBiMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/HashBiMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic d(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/w;)Lcom/google/common/collect/w;
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->p:Lcom/google/common/collect/w;

    return-object p1
.end method

.method static synthetic e(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->G(ILjava/lang/Object;Z)V

    return-void
.end method

.method private f(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method private static h(I)[I
    .registers 2

    new-array p0, p0, [I

    const/4 v0, -0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method private i(II)V
    .registers 8

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->f(I)I

    move-result p2

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    aget v2, v1, p2

    if-ne v2, p1, :cond_1c

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v3, v2, p1

    aput v3, v1, p2

    aput v0, v2, p1

    return-void

    :cond_1c
    aget p2, v1, p2

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v1, v1, p2

    :goto_22
    move v4, v1

    move v1, p2

    move p2, v4

    if-eq p2, v0, :cond_37

    if-ne p2, p1, :cond_32

    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v2, p2, p1

    aput v2, p2, v1

    aput v0, p2, p1

    return-void

    :cond_32
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v1, v1, p2

    goto :goto_22

    :cond_37
    new-instance p2, Ljava/lang/AssertionError;

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Expected to find entry with key "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private j(II)V
    .registers 8

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->f(I)I

    move-result p2

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    aget v2, v1, p2

    if-ne v2, p1, :cond_1c

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v3, v2, p1

    aput v3, v1, p2

    aput v0, v2, p1

    return-void

    :cond_1c
    aget p2, v1, p2

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v1, v1, p2

    :goto_22
    move v4, v1

    move v1, p2

    move p2, v4

    if-eq p2, v0, :cond_37

    if-ne p2, p1, :cond_32

    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v2, p2, p1

    aput v2, p2, v1

    aput v0, p2, p1

    return-void

    :cond_32
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v1, v1, p2

    goto :goto_22

    :cond_37
    new-instance p2, Ljava/lang/AssertionError;

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Expected to find entry with value "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private k(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    array-length v1, v0

    if-ge v1, p1, :cond_3a

    array-length v0, v0

    invoke-static {v0, p1}, Lcom/google/common/collect/n1$b;->e(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->m([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->m([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->m([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->m([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    :cond_3a
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    array-length v0, v0

    if-ge v0, p1, :cond_85

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/l1;->a(ID)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->h(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->h(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    const/4 p1, 0x0

    :goto_52
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ge p1, v0, :cond_85

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->f(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    aget v3, v2, v0

    aput v3, v1, p1

    aput p1, v2, v0

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->f(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    aget v3, v2, v0

    aput v3, v1, p1

    aput p1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_52

    :cond_85
    return-void
.end method

.method private static m([II)[I
    .registers 4

    array-length v0, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {p1}, Lcom/google/common/collect/y2;->h(Ljava/io/ObjectInputStream;)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/common/collect/HashBiMap;->u(I)V

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/y2;->c(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method private v(II)V
    .registers 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->f(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    aget v2, v1, p2

    aput v2, v0, p1

    aput p1, v1, p2

    return-void
.end method

.method private w(II)V
    .registers 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->f(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    aget v2, v1, p2

    aput v2, v0, p1

    aput p1, v1, p2

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-static {p0, p1}, Lcom/google/common/collect/y2;->i(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method private y(II)V
    .registers 8

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget v1, v1, p1

    invoke-direct {p0, v0, p2}, Lcom/google/common/collect/HashBiMap;->I(II)V

    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->I(II)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v1, v0, p1

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v3, v2, p1

    aput-object v1, v0, p2

    aput-object v3, v2, p2

    invoke-static {v1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->f(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    aget v2, v1, v0

    if-ne v2, p1, :cond_2e

    aput p2, v1, v0

    goto :goto_3d

    :cond_2e
    aget v0, v1, v0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v1, v1, v0

    :goto_34
    move v4, v1

    move v1, v0

    move v0, v4

    if-ne v0, p1, :cond_74

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aput p2, v0, v1

    :goto_3d
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v1, v0, p1

    aput v1, v0, p2

    const/4 v1, -0x1

    aput v1, v0, p1

    invoke-static {v3}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->f(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    aget v3, v2, v0

    if-ne v3, p1, :cond_57

    aput p2, v2, v0

    goto :goto_66

    :cond_57
    aget v0, v2, v0

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v2, v2, v0

    :goto_5d
    move v4, v2

    move v2, v0

    move v0, v4

    if-ne v0, p1, :cond_6f

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aput p2, v0, v2

    :goto_66
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v2, v0, p1

    aput v2, v0, p2

    aput v1, v0, p1

    return-void

    :cond_6f
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v2, v2, v0

    goto :goto_5d

    :cond_74
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v1, v1, v0

    goto :goto_34
.end method


# virtual methods
.method A(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;Z)TK;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->s(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p1, p1, v1

    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-object p2

    :cond_16
    invoke-direct {p0, v1, p2, p3}, Lcom/google/common/collect/HashBiMap;->G(ILjava/lang/Object;Z)V

    return-object p1

    :cond_1a
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->j:I

    invoke-static {p2}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, p2, v3}, Lcom/google/common/collect/HashBiMap;->q(Ljava/lang/Object;I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz p3, :cond_31

    if-eq v4, v2, :cond_3b

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget v1, p3, v4

    invoke-virtual {p0, v4, v3}, Lcom/google/common/collect/HashBiMap;->D(II)V

    goto :goto_3b

    :cond_31
    if-ne v4, v2, :cond_35

    const/4 p3, 0x1

    goto :goto_36

    :cond_35
    const/4 p3, 0x0

    :goto_36
    const-string v2, "Key already present: %s"

    invoke-static {p3, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_3b
    :goto_3b
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p3, v5

    invoke-direct {p0, p3}, Lcom/google/common/collect/HashBiMap;->k(I)V

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    aput-object p2, p3, v2

    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/common/collect/HashBiMap;->v(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->w(II)V

    const/4 p1, -0x2

    if-ne v1, p1, :cond_59

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->i:I

    goto :goto_5d

    :cond_59
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget p1, p1, v1

    :goto_5d
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->I(II)V

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/HashBiMap;->I(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    const/4 p1, 0x0

    return-object p1
.end method

.method B(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->D(II)V

    return-void
.end method

.method D(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->C(III)V

    return-void
.end method

.method E(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/common/collect/HashBiMap;->C(III)V

    return-void
.end method

.method F(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->s(Ljava/lang/Object;I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->E(II)V

    return-object v1
.end method

.method public M()Lcom/google/common/collect/w;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->p:Lcom/google/common/collect/w;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/HashBiMap$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$d;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->p:Lcom/google/common/collect/w;

    :cond_b
    return-object v0
.end method

.method public clear()V
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iput v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->i:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->j:I

    iget v0, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->d:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->p(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->r(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->o:Ljava/util/Set;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/HashBiMap$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$c;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->o:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->p(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_d
    return-object p1
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

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->m:Ljava/util/Set;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/HashBiMap$f;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$f;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->m:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method n(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I
    .registers 6

    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->f(I)I

    move-result p2

    aget p2, p3, p2

    :goto_6
    const/4 p3, -0x1

    if-eq p2, p3, :cond_15

    aget-object p3, p5, p2

    invoke-static {p3, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    return p2

    :cond_12
    aget p2, p4, p2

    goto :goto_6

    :cond_15
    return p3
.end method

.method p(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->q(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->z(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method q(Ljava/lang/Object;I)I
    .registers 9

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/HashBiMap;->n(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method r(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->s(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->q(Ljava/lang/Object;I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->D(II)V

    return-object v1
.end method

.method s(Ljava/lang/Object;I)I
    .registers 9

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/HashBiMap;->n(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/HashBiMap;->c:I

    return v0
.end method

.method t(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->r(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_d
    return-object p1
.end method

.method u(I)V
    .registers 4

    const-string v0, "expectedSize"

    invoke-static {p1, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/l1;->a(ID)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->h(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->h(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->h(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->h(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->i:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->j:I

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->h(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->h(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    return-void
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->n:Ljava/util/Set;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/HashBiMap$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$g;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->n:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method z(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->q(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p1, p1, v1

    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-object p2

    :cond_16
    invoke-direct {p0, v1, p2, p3}, Lcom/google/common/collect/HashBiMap;->H(ILjava/lang/Object;Z)V

    return-object p1

    :cond_1a
    invoke-static {p2}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->s(Ljava/lang/Object;I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz p3, :cond_2b

    if-eq v3, v2, :cond_35

    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/HashBiMap;->E(II)V

    goto :goto_35

    :cond_2b
    if-ne v3, v2, :cond_2f

    const/4 p3, 0x1

    goto :goto_30

    :cond_2f
    const/4 p3, 0x0

    :goto_30
    const-string v2, "Value already present: %s"

    invoke-static {p3, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_35
    :goto_35
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p3, v4

    invoke-direct {p0, p3}, Lcom/google/common/collect/HashBiMap;->k(I)V

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    aput-object p1, p3, v2

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aput-object p2, p1, v2

    invoke-direct {p0, v2, v0}, Lcom/google/common/collect/HashBiMap;->v(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->w(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->j:I

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->I(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    const/4 p2, -0x2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->I(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    const/4 p1, 0x0

    return-object p1
.end method
