###### Class com.applovin.exoplayer2.j.c.C0049c (com.applovin.exoplayer2.j.c$c)
.class public final Lcom/applovin/exoplayer2/j/c$c;
.super Lcom/applovin/exoplayer2/j/i;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final Uw:Lcom/applovin/exoplayer2/j/c$c;

.field public static final Ux:Lcom/applovin/exoplayer2/j/c$c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/j/c$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final UA:Z

.field public final UB:Z

.field public final UC:Z

.field public final UD:Z

.field public final UE:Z

.field public final UF:Z

.field public final UG:Z

.field public final UH:Z

.field public final UI:Z

.field private final UJ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final UK:Landroid/util/SparseBooleanArray;

.field public final Uy:I

.field public final Uz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/j/c$d;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/c$d;-><init>()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/j/c$d;->nk()Lcom/applovin/exoplayer2/j/c$c;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/j/c$c;->Uw:Lcom/applovin/exoplayer2/j/c$c;

    sput-object v0, Lcom/applovin/exoplayer2/j/c$c;->Ux:Lcom/applovin/exoplayer2/j/c$c;

    sget-object v0, Lcom/applovin/exoplayer2/j/m;->a:Lcom/applovin/exoplayer2/j/m;

    sput-object v0, Lcom/applovin/exoplayer2/j/c$c;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method private constructor <init>(Lcom/applovin/exoplayer2/j/c$d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/i;-><init>(Lcom/applovin/exoplayer2/j/i$a;)V

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->a(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->Uz:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->b(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UA:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->c(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UB:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->d(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UC:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->e(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UD:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->f(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UE:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->g(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UF:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->h(Lcom/applovin/exoplayer2/j/c$d;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/c$c;->Uy:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->i(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UG:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->j(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UH:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->k(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UI:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->l(Lcom/applovin/exoplayer2/j/c$d;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UJ:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->m(Lcom/applovin/exoplayer2/j/c$d;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/c$c;->UK:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/j/c$d;Lcom/applovin/exoplayer2/j/c$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/c$c;-><init>(Lcom/applovin/exoplayer2/j/c$d;)V

    return-void
.end method

.method private static synthetic A(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$c;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/j/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/j/c$d;-><init>(Landroid/os/Bundle;Lcom/applovin/exoplayer2/j/c$1;)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/j/c$d;->nk()Lcom/applovin/exoplayer2/j/c$c;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_30

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2f

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v4, v3}, Lcom/applovin/exoplayer2/j/c$c;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_2f

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2f
    :goto_2f
    return v2

    :cond_30
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1d

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    return v2

    :cond_c
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/h/ad;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_3a
    return v2

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic c(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$c;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/j/c$c;->A(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic cM(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/j/c$c;->t(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/c$c;
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/j/c$d;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/j/c$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/j/c$d;->nk()Lcom/applovin/exoplayer2/j/c$c;

    move-result-object p0

    return-object p0
.end method

.method private static t(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILcom/applovin/exoplayer2/h/ad;)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UJ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_12

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public final b(ILcom/applovin/exoplayer2/h/ad;)Lcom/applovin/exoplayer2/j/c$e;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UJ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_11

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/j/c$e;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method public final eQ(I)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/j/c$c;->UK:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_71

    const-class v2, Lcom/applovin/exoplayer2/j/c$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_71

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/j/c$c;

    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/j/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->Uz:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->Uz:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UA:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UA:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UB:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UB:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UC:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UC:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UD:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UD:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UE:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UE:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UF:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UF:Z

    if-ne v2, v3, :cond_6f

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$c;->Uy:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$c;->Uy:I

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UG:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UG:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UH:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UH:Z

    if-ne v2, v3, :cond_6f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UI:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UI:Z

    if-ne v2, v3, :cond_6f

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UK:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/applovin/exoplayer2/j/c$c;->UK:Landroid/util/SparseBooleanArray;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/j/c$c;->a(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UJ:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/applovin/exoplayer2/j/c$c;->UJ:Landroid/util/SparseArray;

    invoke-static {v2, p1}, Lcom/applovin/exoplayer2/j/c$c;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result p1

    if-eqz p1, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v0, 0x0

    :goto_70
    return v0

    :cond_71
    :goto_71
    return v1
.end method

.method public hashCode()I
    .registers 4

    invoke-super {p0}, Lcom/applovin/exoplayer2/j/i;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->Uz:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UA:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UB:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UC:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UD:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UE:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UF:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$c;->Uy:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UG:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->UH:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$c;->UI:Z

    add-int/2addr v0, v1

    return v0
.end method
