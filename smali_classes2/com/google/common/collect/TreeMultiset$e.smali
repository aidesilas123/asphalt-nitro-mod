###### Class com.google.common.collect.TreeMultiset.e (com.google.common.collect.TreeMultiset$e)
.class final Lcom/google/common/collect/TreeMultiset$e;
.super Ljava/lang/Object;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:J

.field private e:I

.field private f:Lcom/google/common/collect/TreeMultiset$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation
.end field

.field private g:Lcom/google/common/collect/TreeMultiset$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation
.end field

.field private h:Lcom/google/common/collect/TreeMultiset$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation
.end field

.field private i:Lcom/google/common/collect/TreeMultiset$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-void
.end method

.method private A()Lcom/google/common/collect/TreeMultiset$e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->r()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->C()V

    return-object p0

    :cond_e
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->r()I

    move-result v0

    if-gez v0, :cond_23

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->H()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    :cond_23
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->I()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    return-object v0

    :cond_28
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->r()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->I()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    :cond_3d
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->H()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    return-object v0
.end method

.method private B()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->D()V

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->C()V

    return-void
.end method

.method private C()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$e;->y(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$e;->y(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    return-void
.end method

.method private D()V
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->F(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset;->F(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$e;->M(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$e;->M(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-void
.end method

.method private F(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_7

    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1

    :cond_7
    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$e;->F(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$e;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1
.end method

.method private G(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_7

    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1

    :cond_7
    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$e;->G(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$e;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1
.end method

.method private H()Lcom/google/common/collect/TreeMultiset$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget v1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->B()V

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->C()V

    return-object v0
.end method

.method private I()Lcom/google/common/collect/TreeMultiset$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget v1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->B()V

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$e;->C()V

    return-object v0
.end method

.method private L()Lcom/google/common/collect/TreeMultiset$e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->i:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/TreeMultiset$e;

    return-object v0
.end method

.method private static M(Lcom/google/common/collect/TreeMultiset$e;)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "*>;)J"
        }
    .end annotation

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_7

    :cond_5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :goto_7
    return-wide v0
.end method

.method static synthetic a(Lcom/google/common/collect/TreeMultiset$e;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->s(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/TreeMultiset$e;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->v(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->z()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/google/common/collect/TreeMultiset$e;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return p0
.end method

.method static synthetic e(Lcom/google/common/collect/TreeMultiset$e;I)I
    .registers 2

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return p1
.end method

.method static synthetic f(Lcom/google/common/collect/TreeMultiset$e;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/common/collect/TreeMultiset$e;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    return p0
.end method

.method static synthetic h(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    return-object p0
.end method

.method static synthetic i(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1
.end method

.method static synthetic j(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-object p0
.end method

.method static synthetic k(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1
.end method

.method static synthetic l(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->L()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->h:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1
.end method

.method static synthetic n(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->i:Lcom/google/common/collect/TreeMultiset$e;

    return-object p1
.end method

.method private p(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->z()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {p1, v0, p0}, Lcom/google/common/collect/TreeMultiset;->A(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-object p0
.end method

.method private q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->L()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/google/common/collect/TreeMultiset;->A(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-object p0
.end method

.method private r()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$e;->y(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$e;->y(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private s(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1b

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_10

    move-object p1, p0

    goto :goto_1a

    :cond_10
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->s(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$e;

    :goto_1a
    return-object p1

    :cond_1b
    if-nez v0, :cond_1e

    return-object p0

    :cond_1e
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_24

    const/4 p1, 0x0

    goto :goto_28

    :cond_24
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->s(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_28
    return-object p1
.end method

.method private u()Lcom/google/common/collect/TreeMultiset$e;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->z()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->L()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/TreeMultiset;->B(Lcom/google/common/collect/TreeMultiset$e;Lcom/google/common/collect/TreeMultiset$e;)V

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v1, :cond_17

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    return-object v0

    :cond_17
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v2, :cond_1c

    return-object v1

    :cond_1c
    iget v1, v1, Lcom/google/common/collect/TreeMultiset$e;->e:I

    iget v2, v2, Lcom/google/common/collect/TreeMultiset$e;->e:I

    if-lt v1, v2, :cond_43

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->z()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v2, v1}, Lcom/google/common/collect/TreeMultiset$e;->F(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget v2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {v1}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    return-object v0

    :cond_43
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->L()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    invoke-direct {v2, v1}, Lcom/google/common/collect/TreeMultiset$e;->G(Lcom/google/common/collect/TreeMultiset$e;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    iget v2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {v1}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    return-object v0
.end method

.method private v(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_10

    move-object p1, p0

    goto :goto_1a

    :cond_10
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->v(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$e;

    :goto_1a
    return-object p1

    :cond_1b
    if-nez v0, :cond_1e

    return-object p0

    :cond_1e
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_24

    const/4 p1, 0x0

    goto :goto_28

    :cond_24
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->v(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_28
    return-object p1
.end method

.method private static y(Lcom/google/common/collect/TreeMultiset$e;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_6

    :cond_4
    iget p0, p0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    :goto_6
    return p0
.end method

.method private z()Lcom/google/common/collect/TreeMultiset$e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->h:Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/TreeMultiset$e;

    return-object v0
.end method


# virtual methods
.method E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_40

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_12

    aput v1, p4, v1

    return-object p0

    :cond_12
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    aget p1, p4, v1

    if-lez p1, :cond_35

    aget p1, p4, v1

    if-lt p3, p1, :cond_2f

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p3, p4, v1

    int-to-long v2, p3

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    goto :goto_35

    :cond_2f
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long v2, p3

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :cond_35
    :goto_35
    aget p1, p4, v1

    if-nez p1, :cond_3b

    move-object p1, p0

    goto :goto_3f

    :cond_3b
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_3f
    return-object p1

    :cond_40
    if-lez v0, :cond_71

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_49

    aput v1, p4, v1

    return-object p0

    :cond_49
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->E(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    aget p1, p4, v1

    if-lez p1, :cond_6c

    aget p1, p4, v1

    if-lt p3, p1, :cond_66

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p3, p4, v1

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    goto :goto_6c

    :cond_66
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :cond_6c
    :goto_6c
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_71
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    aput p1, p4, v1

    if-lt p3, p1, :cond_7c

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->u()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_7c
    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-object p0
.end method

.method J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$e;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;II[I)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_51

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v2, :cond_1b

    aput v1, p5, v1

    if-nez p3, :cond_1a

    if-lez p4, :cond_1a

    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$e;->p(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_1a
    return-object p0

    :cond_1b
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$e;->J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    aget p1, p5, v1

    if-ne p1, p3, :cond_4c

    if-nez p4, :cond_37

    aget p1, p5, v1

    if-eqz p1, :cond_37

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    goto :goto_43

    :cond_37
    if-lez p4, :cond_43

    aget p1, p5, v1

    if-nez p1, :cond_43

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_43
    :goto_43
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p3, p5, v1

    sub-int/2addr p4, p3

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :cond_4c
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_51
    if-lez v0, :cond_99

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v2, :cond_63

    aput v1, p5, v1

    if-nez p3, :cond_62

    if-lez p4, :cond_62

    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$e;->q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_62
    return-object p0

    :cond_63
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$e;->J(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    aget p1, p5, v1

    if-ne p1, p3, :cond_94

    if-nez p4, :cond_7f

    aget p1, p5, v1

    if-eqz p1, :cond_7f

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    goto :goto_8b

    :cond_7f
    if-lez p4, :cond_8b

    aget p1, p5, v1

    if-nez p1, :cond_8b

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_8b
    :goto_8b
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p3, p5, v1

    sub-int/2addr p4, p3

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    :cond_94
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_99
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    aput p1, p5, v1

    if-ne p3, p1, :cond_b0

    if-nez p4, :cond_a6

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->u()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_a6
    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    sub-int p1, p4, p1

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput p4, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    :cond_b0
    return-object p0
.end method

.method K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_47

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_1a

    aput v1, p4, v1

    if-lez p3, :cond_18

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$e;->p(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    goto :goto_19

    :cond_18
    move-object p1, p0

    :goto_19
    return-object p1

    :cond_1a
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez p3, :cond_2d

    aget p1, p4, v1

    if-eqz p1, :cond_2d

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    goto :goto_39

    :cond_2d
    if-lez p3, :cond_39

    aget p1, p4, v1

    if-nez p1, :cond_39

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_39
    :goto_39
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_47
    if-lez v0, :cond_85

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_58

    aput v1, p4, v1

    if-lez p3, :cond_56

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$e;->q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    goto :goto_57

    :cond_56
    move-object p1, p0

    :goto_57
    return-object p1

    :cond_58
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->K(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez p3, :cond_6b

    aget p1, p4, v1

    if-eqz p1, :cond_6b

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    goto :goto_77

    :cond_6b
    if-lez p3, :cond_77

    aget p1, p4, v1

    if-nez p1, :cond_77

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_77
    :goto_77
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_85
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    aput p1, p4, v1

    if-nez p3, :cond_90

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->u()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_90
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    sub-int p1, p3, p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iput p3, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return-object p0
.end method

.method o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_39

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_17

    aput v2, p4, v2

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$e;->p(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_17
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    aget p2, p4, v2

    if-nez p2, :cond_28

    iget p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_28
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$e;->e:I

    if-ne p1, v3, :cond_34

    move-object p1, p0

    goto :goto_38

    :cond_34
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_38
    return-object p1

    :cond_39
    if-lez v0, :cond_68

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_46

    aput v2, p4, v2

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$e;->q(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    return-object p1

    :cond_46
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$e;->e:I

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$e;->o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    aget p2, p4, v2

    if-nez p2, :cond_57

    iget p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$e;->c:I

    :cond_57
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$e;->e:I

    if-ne p1, v3, :cond_63

    move-object p1, p0

    goto :goto_67

    :cond_63
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$e;->A()Lcom/google/common/collect/TreeMultiset$e;

    move-result-object p1

    :goto_67
    return-object p1

    :cond_68
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    aput p1, p4, v2

    int-to-long p1, p1

    int-to-long v3, p3

    add-long/2addr p1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long p4, p1, v5

    if-gtz p4, :cond_77

    goto :goto_78

    :cond_77
    const/4 v1, 0x0

    :goto_78
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$e;->d:J

    return-object p0
.end method

.method t(Ljava/util/Comparator;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_15

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->f:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->t(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    :goto_14
    return v1

    :cond_15
    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->g:Lcom/google/common/collect/TreeMultiset$e;

    if-nez v0, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;->t(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    :goto_20
    return v1

    :cond_21
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$e;->w()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/c2$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/c2$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method w()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$e;->b:I

    return v0
.end method

.method x()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$e;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/e2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
