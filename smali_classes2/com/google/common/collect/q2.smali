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
