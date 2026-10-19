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
