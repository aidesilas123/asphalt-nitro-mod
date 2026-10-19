###### Class com.applovin.exoplayer2.ax (com.applovin.exoplayer2.ax)
.class public final Lcom/applovin/exoplayer2/ax;
.super Lcom/applovin/exoplayer2/aq;
.source "SourceFile"


# static fields
.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/ax;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final in:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation
.end field

.field private final io:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/n0;->a:Lcom/applovin/exoplayer2/n0;

    sput-object v0, Lcom/applovin/exoplayer2/ax;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aq;-><init>()V

    if-lez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "maxStars must be a positive integer"

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/applovin/exoplayer2/ax;->in:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/applovin/exoplayer2/ax;->io:F

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 7
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aq;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "maxStars must be a positive integer"

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/a;->checkArgument(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1a

    int-to-float v2, p1

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    const-string v1, "starRating is out of range [0, maxStars]"

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/applovin/exoplayer2/ax;->in:I

    iput p2, p0, Lcom/applovin/exoplayer2/ax;->io:F

    return-void
.end method

.method public static synthetic b(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ax;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/ax;->o(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ax;

    move-result-object p0

    return-object p0
.end method

.method private static o(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ax;
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/applovin/exoplayer2/ax;->t(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_f

    const/4 v0, 0x1

    :cond_f
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    invoke-static {v2}, Lcom/applovin/exoplayer2/ax;->t(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v3}, Lcom/applovin/exoplayer2/ax;->t(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    cmpl-float v1, p0, v2

    if-nez v1, :cond_2f

    new-instance p0, Lcom/applovin/exoplayer2/ax;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/ax;-><init>(I)V

    goto :goto_35

    :cond_2f
    new-instance v1, Lcom/applovin/exoplayer2/ax;

    invoke-direct {v1, v0, p0}, Lcom/applovin/exoplayer2/ax;-><init>(IF)V

    move-object p0, v1

    :goto_35
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
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/applovin/exoplayer2/ax;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/applovin/exoplayer2/ax;

    iget v0, p0, Lcom/applovin/exoplayer2/ax;->in:I

    iget v2, p1, Lcom/applovin/exoplayer2/ax;->in:I

    if-ne v0, v2, :cond_17

    iget v0, p0, Lcom/applovin/exoplayer2/ax;->io:F

    iget p1, p1, Lcom/applovin/exoplayer2/ax;->io:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/exoplayer2/ax;->in:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/ax;->io:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

###### Class com.applovin.exoplayer2.n0 (com.applovin.exoplayer2.n0)
.class public final synthetic Lcom/applovin/exoplayer2/n0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/n0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/n0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/n0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/n0;->a:Lcom/applovin/exoplayer2/n0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;
    .registers 2

    invoke-static {p1}, Lcom/applovin/exoplayer2/ax;->b(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/ax;

    move-result-object p1

    return-object p1
.end method
