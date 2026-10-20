###### Class com.google.common.collect.n2 (com.google.common.collect.n2)
.class final Lcom/google/common/collect/n2;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final e:Lcom/google/common/collect/n2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/n2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient f:Ljava/lang/Object;

.field final transient g:[Ljava/lang/Object;

.field private final transient h:I

.field private final transient i:I

.field private final transient j:Lcom/google/common/collect/n2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/n2<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/n2;

    invoke-direct {v0}, Lcom/google/common/collect/n2;-><init>()V

    sput-object v0, Lcom/google/common/collect/n2;->e:Lcom/google/common/collect/n2;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/n2;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/n2;->g:[Ljava/lang/Object;

    iput v0, p0, Lcom/google/common/collect/n2;->h:I

    iput v0, p0, Lcom/google/common/collect/n2;->i:I

    iput-object p0, p0, Lcom/google/common/collect/n2;->j:Lcom/google/common/collect/n2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;ILcom/google/common/collect/n2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "I",
            "Lcom/google/common/collect/n2<",
            "TV;TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/n2;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/n2;->g:[Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/common/collect/n2;->h:I

    iput p3, p0, Lcom/google/common/collect/n2;->i:I

    iput-object p4, p0, Lcom/google/common/collect/n2;->j:Lcom/google/common/collect/n2;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .registers 5

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/n2;->g:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/n2;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/n2;->h:I

    const/4 v1, 0x2

    if-lt p2, v1, :cond_12

    invoke-static {p2}, Lcom/google/common/collect/ImmutableSet;->v(I)I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-static {p1, p2, v1, v0}, Lcom/google/common/collect/p2;->s([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/n2;->f:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {p1, p2, v1, v0}, Lcom/google/common/collect/p2;->s([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/n2;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/google/common/collect/n2;-><init>(Ljava/lang/Object;[Ljava/lang/Object;ILcom/google/common/collect/n2;)V

    iput-object v1, p0, Lcom/google/common/collect/n2;->j:Lcom/google/common/collect/n2;

    return-void
.end method


# virtual methods
.method public bridge synthetic M()Lcom/google/common/collect/w;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->q()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/google/common/collect/ImmutableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/p2$a;

    iget-object v1, p0, Lcom/google/common/collect/n2;->g:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/n2;->h:I

    iget v3, p0, Lcom/google/common/collect/n2;->i:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/common/collect/p2$a;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method d()Lcom/google/common/collect/ImmutableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/p2$c;

    iget-object v1, p0, Lcom/google/common/collect/n2;->g:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/n2;->h:I

    iget v3, p0, Lcom/google/common/collect/n2;->i:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/p2$c;-><init>([Ljava/lang/Object;II)V

    new-instance v1, Lcom/google/common/collect/p2$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/p2$b;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n2;->f:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/n2;->g:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/n2;->i:I

    iget v3, p0, Lcom/google/common/collect/n2;->h:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/common/collect/p2;->t(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_f

    const/4 p1, 0x0

    :cond_f
    return-object p1
.end method

.method j()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public q()Lcom/google/common/collect/ImmutableBiMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n2;->j:Lcom/google/common/collect/n2;

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/n2;->i:I

    return v0
.end method
