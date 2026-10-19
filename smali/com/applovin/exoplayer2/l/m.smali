###### Class com.applovin.exoplayer2.l.m (com.applovin.exoplayer2.l.m)
.class public final Lcom/applovin/exoplayer2/l/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/l/m$a;
    }
.end annotation


# instance fields
.field private final acb:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/util/SparseBooleanArray;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/m;->acb:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/SparseBooleanArray;Lcom/applovin/exoplayer2/l/m$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/l/m;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public X(I)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/m;->acb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public varargs b([I)Z
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/applovin/exoplayer2/l/m;->X(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/exoplayer2/l/m;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/exoplayer2/l/m;

    sget v1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v3, 0x18

    if-ge v1, v3, :cond_33

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/m;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/m;->size()I

    move-result v3

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/m;->size()I

    move-result v3

    if-ge v1, v3, :cond_32

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/l/m;->fn(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/l/m;->fn(I)I

    move-result v4

    if-eq v3, v4, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v0

    :cond_33
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/m;->acb:Landroid/util/SparseBooleanArray;

    iget-object p1, p1, Lcom/applovin/exoplayer2/l/m;->acb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fn(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/m;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/applovin/exoplayer2/l/a;->h(III)I

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/m;->acb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 4

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/m;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/m;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/l/m;->fn(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return v0

    :cond_1c
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/m;->acb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/m;->acb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method
