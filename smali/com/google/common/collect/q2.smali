###### Class com.google.common.collect.q2 (com.google.common.collect.q2)
.class Lcom/google/common/collect/q2;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/q2$c;,
        Lcom/google/common/collect/q2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final d:Lcom/google/common/collect/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient e:Lcom/google/common/collect/f2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/f2<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient f:I

.field private transient g:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/common/collect/q2;

    invoke-static {}, Lcom/google/common/collect/f2;->b()Lcom/google/common/collect/f2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/q2;-><init>(Lcom/google/common/collect/f2;)V

    sput-object v0, Lcom/google/common/collect/q2;->d:Lcom/google/common/collect/q2;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/f2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/f2<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/q2;->e:Lcom/google/common/collect/f2;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p1}, Lcom/google/common/collect/f2;->C()I

    move-result v3

    if-ge v2, v3, :cond_17

    invoke-virtual {p1, v2}, Lcom/google/common/collect/f2;->k(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/q2;->f:I

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/q2;->e:Lcom/google/common/collect/f2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f2;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method j()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic k()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/q2;->x()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/q2;->f:I

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/common/collect/q2$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/q2$c;-><init>(Lcom/google/common/collect/c2;)V

    return-object v0
.end method

.method public x()Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q2;->g:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/q2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/q2$b;-><init>(Lcom/google/common/collect/q2;Lcom/google/common/collect/q2$a;)V

    iput-object v0, p0, Lcom/google/common/collect/q2;->g:Lcom/google/common/collect/ImmutableSet;

    :cond_c
    return-object v0
.end method

.method z(I)Lcom/google/common/collect/c2$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q2;->e:Lcom/google/common/collect/f2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f2;->g(I)Lcom/google/common/collect/c2$a;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.collect.q2.a (com.google.common.collect.q2$a)
.class synthetic Lcom/google/common/collect/q2$a;
.super Ljava/lang/Object;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.collect.q2.b (com.google.common.collect.q2$b)
.class final Lcom/google/common/collect/q2$b;
.super Lcom/google/common/collect/v1;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v1<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/q2;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/q2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/q2$b;->c:Lcom/google/common/collect/q2;

    invoke-direct {p0}, Lcom/google/common/collect/v1;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/q2;Lcom/google/common/collect/q2$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/q2$b;-><init>(Lcom/google/common/collect/q2;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/q2$b;->c:Lcom/google/common/collect/q2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMultiset;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q2$b;->c:Lcom/google/common/collect/q2;

    iget-object v0, v0, Lcom/google/common/collect/q2;->e:Lcom/google/common/collect/f2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f2;->i(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method j()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/q2$b;->c:Lcom/google/common/collect/q2;

    iget-object v0, v0, Lcom/google/common/collect/q2;->e:Lcom/google/common/collect/f2;

    invoke-virtual {v0}, Lcom/google/common/collect/f2;->C()I

    move-result v0

    return v0
.end method

###### Class com.google.common.collect.q2.c (com.google.common.collect.q2$c)
.class Lcom/google/common/collect/q2$c;
.super Ljava/lang/Object;
.source "RegularImmutableMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:[Ljava/lang/Object;

.field final b:[I


# direct methods
.method constructor <init>(Lcom/google/common/collect/c2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/q2$c;->a:[Ljava/lang/Object;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/q2$c;->b:[I

    invoke-interface {p1}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/c2$a;

    iget-object v2, p0, Lcom/google/common/collect/q2$c;->a:[Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/common/collect/q2$c;->b:[I

    invoke-interface {v1}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_3b
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$b;

    iget-object v1, p0, Lcom/google/common/collect/q2$c;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMultiset$b;-><init>(I)V

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lcom/google/common/collect/q2$c;->a:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/common/collect/q2$c;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMultiset$b;->j(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset$b;->k()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method
