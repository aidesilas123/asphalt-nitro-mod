###### Class com.applovin.exoplayer2.m.o (com.applovin.exoplayer2.m.o)
.class public final Lcom/applovin/exoplayer2/m/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# static fields
.field public static final afk:Lcom/applovin/exoplayer2/m/o;

.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/m/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final afl:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x167L
    .end annotation
.end field

.field public final dE:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field public final dH:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        fromInclusive = false
    .end annotation
.end field

.field public final height:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/m/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/applovin/exoplayer2/m/o;-><init>(II)V

    sput-object v0, Lcom/applovin/exoplayer2/m/o;->afk:Lcom/applovin/exoplayer2/m/o;

    sget-object v0, Lcom/applovin/exoplayer2/m/b0;->a:Lcom/applovin/exoplayer2/m/b0;

    sput-object v0, Lcom/applovin/exoplayer2/m/o;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/applovin/exoplayer2/m/o;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .registers 5
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param
    .param p4    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/m/o;->dE:I

    iput p2, p0, Lcom/applovin/exoplayer2/m/o;->height:I

    iput p3, p0, Lcom/applovin/exoplayer2/m/o;->afl:I

    iput p4, p0, Lcom/applovin/exoplayer2/m/o;->dH:F

    return-void
.end method

.method private static synthetic H(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/m/o;
    .registers 6

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/applovin/exoplayer2/m/o;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/applovin/exoplayer2/m/o;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/applovin/exoplayer2/m/o;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/applovin/exoplayer2/m/o;->t(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    new-instance v3, Lcom/applovin/exoplayer2/m/o;

    invoke-direct {v3, v1, v2, v0, p0}, Lcom/applovin/exoplayer2/m/o;-><init>(IIIF)V

    return-object v3
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/m/o;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/m/o;->H(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/m/o;

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
    instance-of v1, p1, Lcom/applovin/exoplayer2/m/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    check-cast p1, Lcom/applovin/exoplayer2/m/o;

    iget v1, p0, Lcom/applovin/exoplayer2/m/o;->dE:I

    iget v3, p1, Lcom/applovin/exoplayer2/m/o;->dE:I

    if-ne v1, v3, :cond_26

    iget v1, p0, Lcom/applovin/exoplayer2/m/o;->height:I

    iget v3, p1, Lcom/applovin/exoplayer2/m/o;->height:I

    if-ne v1, v3, :cond_26

    iget v1, p0, Lcom/applovin/exoplayer2/m/o;->afl:I

    iget v3, p1, Lcom/applovin/exoplayer2/m/o;->afl:I

    if-ne v1, v3, :cond_26

    iget v1, p0, Lcom/applovin/exoplayer2/m/o;->dH:F

    iget p1, p1, Lcom/applovin/exoplayer2/m/o;->dH:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    :cond_28
    return v2
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/m/o;->dE:I

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/applovin/exoplayer2/m/o;->height:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/applovin/exoplayer2/m/o;->afl:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/applovin/exoplayer2/m/o;->dH:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

###### Class com.applovin.exoplayer2.m.b0 (com.applovin.exoplayer2.m.b0)
.class public final synthetic Lcom/applovin/exoplayer2/m/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/m/b0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/m/b0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/m/b0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/m/b0;->a:Lcom/applovin/exoplayer2/m/b0;

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

    invoke-static {p1}, Lcom/applovin/exoplayer2/m/o;->a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/m/o;

    move-result-object p1

    return-object p1
.end method
