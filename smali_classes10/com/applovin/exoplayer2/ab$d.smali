###### Class com.applovin.exoplayer2.ab.d (com.applovin.exoplayer2.ab$d)
.class public final Lcom/applovin/exoplayer2/ab$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/ab$d$a;
    }
.end annotation


# instance fields
.field public final eA:Lcom/applovin/exoplayer2/common/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/u<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final eB:Z

.field public final eC:Z

.field public final eD:Z

.field public final eE:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final eF:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final ey:Ljava/util/UUID;

.field public final ez:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/ab$d$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/applovin/exoplayer2/ab$d$a;->c(Lcom/applovin/exoplayer2/ab$d$a;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1}, Lcom/applovin/exoplayer2/ab$d$a;->a(Lcom/applovin/exoplayer2/ab$d$a;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    invoke-static {p1}, Lcom/applovin/exoplayer2/ab$d$a;->b(Lcom/applovin/exoplayer2/ab$d$a;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$d;->ey:Ljava/util/UUID;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ab$d$a;->a(Lcom/applovin/exoplayer2/ab$d$a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$d;->ez:Landroid/net/Uri;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ab$d$a;->d(Lcom/applovin/exoplayer2/ab$d$a;)Lcom/applovin/exoplayer2/common/a/u;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$d;->eA:Lcom/applovin/exoplayer2/common/a/u;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ab$d$a;->e(Lcom/applovin/exoplayer2/ab$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/ab$d;->eB:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/ab$d$a;->c(Lcom/applovin/exoplayer2/ab$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/ab$d;->eD:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/ab$d$a;->f(Lcom/applovin/exoplayer2/ab$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/ab$d;->eC:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/ab$d$a;->g(Lcom/applovin/exoplayer2/ab$d$a;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$d;->eE:Lcom/applovin/exoplayer2/common/a/s;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ab$d$a;->h(Lcom/applovin/exoplayer2/ab$d$a;)[B

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-static {p1}, Lcom/applovin/exoplayer2/ab$d$a;->h(Lcom/applovin/exoplayer2/ab$d$a;)[B

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/exoplayer2/ab$d$a;->h(Lcom/applovin/exoplayer2/ab$d$a;)[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_5b

    :cond_5a
    const/4 p1, 0x0

    :goto_5b
    iput-object p1, p0, Lcom/applovin/exoplayer2/ab$d;->eF:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/ab$d$a;Lcom/applovin/exoplayer2/ab$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ab$d;-><init>(Lcom/applovin/exoplayer2/ab$d$a;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ab$d;)[B
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ab$d;->eF:[B

    return-object p0
.end method


# virtual methods
.method public bW()[B
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ab$d;->eF:[B

    if-eqz v0, :cond_a

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method public bX()Lcom/applovin/exoplayer2/ab$d$a;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/ab$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/ab$d$a;-><init>(Lcom/applovin/exoplayer2/ab$d;Lcom/applovin/exoplayer2/ab$1;)V

    return-object v0
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
    instance-of v1, p1, Lcom/applovin/exoplayer2/ab$d;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/exoplayer2/ab$d;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$d;->ey:Ljava/util/UUID;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ab$d;->ey:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$d;->ez:Landroid/net/Uri;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ab$d;->ez:Landroid/net/Uri;

    invoke-static {v1, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$d;->eA:Lcom/applovin/exoplayer2/common/a/u;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ab$d;->eA:Lcom/applovin/exoplayer2/common/a/u;

    invoke-static {v1, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/ab$d;->eB:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/ab$d;->eB:Z

    if-ne v1, v3, :cond_51

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/ab$d;->eD:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/ab$d;->eD:Z

    if-ne v1, v3, :cond_51

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/ab$d;->eC:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/ab$d;->eC:Z

    if-ne v1, v3, :cond_51

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$d;->eE:Lcom/applovin/exoplayer2/common/a/s;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ab$d;->eE:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/common/a/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$d;->eF:[B

    iget-object p1, p1, Lcom/applovin/exoplayer2/ab$d;->eF:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ab$d;->ey:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$d;->ez:Landroid/net/Uri;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$d;->eA:Lcom/applovin/exoplayer2/common/a/u;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/common/a/u;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/ab$d;->eB:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/ab$d;->eD:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/ab$d;->eC:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$d;->eE:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/common/a/s;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$d;->eF:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
