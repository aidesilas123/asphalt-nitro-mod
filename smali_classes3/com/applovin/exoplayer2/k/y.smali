###### Class com.applovin.exoplayer2.k.y (com.applovin.exoplayer2.k.y)
.class public Lcom/applovin/exoplayer2/k/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/k/y$a;
    }
.end annotation


# static fields
.field private static final abn:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/applovin/exoplayer2/k/y$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final abo:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/applovin/exoplayer2/k/y$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final abp:I

.field private final abq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/applovin/exoplayer2/k/y$a;",
            ">;"
        }
    .end annotation
.end field

.field private final abr:[Lcom/applovin/exoplayer2/k/y$a;

.field private abs:I

.field private abt:I

.field private abu:I

.field private abv:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/k/d0;->a:Lcom/applovin/exoplayer2/k/d0;

    sput-object v0, Lcom/applovin/exoplayer2/k/y;->abn:Ljava/util/Comparator;

    sget-object v0, Lcom/applovin/exoplayer2/k/e0;->a:Lcom/applovin/exoplayer2/k/e0;

    sput-object v0, Lcom/applovin/exoplayer2/k/y;->abo:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/k/y;->abp:I

    const/4 p1, 0x5

    new-array p1, p1, [Lcom/applovin/exoplayer2/k/y$a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/y;->abr:[Lcom/applovin/exoplayer2/k/y$a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/y;->abq:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/applovin/exoplayer2/k/y;->abs:I

    return-void
.end method

.method private static synthetic a(Lcom/applovin/exoplayer2/k/y$a;Lcom/applovin/exoplayer2/k/y$a;)I
    .registers 2

    iget p0, p0, Lcom/applovin/exoplayer2/k/y$a;->abx:F

    iget p1, p1, Lcom/applovin/exoplayer2/k/y$a;->abx:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method private static synthetic b(Lcom/applovin/exoplayer2/k/y$a;Lcom/applovin/exoplayer2/k/y$a;)I
    .registers 2

    iget p0, p0, Lcom/applovin/exoplayer2/k/y$a;->Y:I

    iget p1, p1, Lcom/applovin/exoplayer2/k/y$a;->Y:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic c(Lcom/applovin/exoplayer2/k/y$a;Lcom/applovin/exoplayer2/k/y$a;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/k/y;->b(Lcom/applovin/exoplayer2/k/y$a;Lcom/applovin/exoplayer2/k/y$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/applovin/exoplayer2/k/y$a;Lcom/applovin/exoplayer2/k/y$a;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/k/y;->a(Lcom/applovin/exoplayer2/k/y$a;Lcom/applovin/exoplayer2/k/y$a;)I

    move-result p0

    return p0
.end method

.method private oF()V
    .registers 4

    iget v0, p0, Lcom/applovin/exoplayer2/k/y;->abs:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/y;->abq:Ljava/util/ArrayList;

    sget-object v2, Lcom/applovin/exoplayer2/k/y;->abn:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v1, p0, Lcom/applovin/exoplayer2/k/y;->abs:I

    :cond_e
    return-void
.end method

.method private oG()V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/k/y;->abs:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/y;->abq:Ljava/util/ArrayList;

    sget-object v1, Lcom/applovin/exoplayer2/k/y;->abo:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/k/y;->abs:I

    :cond_e
    return-void
.end method


# virtual methods
.method public Y()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/y;->abq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/k/y;->abs:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/k/y;->abt:I

    iput v0, p0, Lcom/applovin/exoplayer2/k/y;->abu:I

    return-void
.end method

.method public e(IF)V
    .registers 6

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/y;->oF()V

    iget v0, p0, Lcom/applovin/exoplayer2/k/y;->abv:I

    if-lez v0, :cond_10

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/y;->abr:[Lcom/applovin/exoplayer2/k/y$a;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/k/y;->abv:I

    aget-object v0, v1, v0

    goto :goto_16

    :cond_10
    new-instance v0, Lcom/applovin/exoplayer2/k/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/k/y$a;-><init>(Lcom/applovin/exoplayer2/k/y$1;)V

    :goto_16
    iget v1, p0, Lcom/applovin/exoplayer2/k/y;->abt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/applovin/exoplayer2/k/y;->abt:I

    iput v1, v0, Lcom/applovin/exoplayer2/k/y$a;->Y:I

    iput p1, v0, Lcom/applovin/exoplayer2/k/y$a;->abw:I

    iput p2, v0, Lcom/applovin/exoplayer2/k/y$a;->abx:F

    iget-object p2, p0, Lcom/applovin/exoplayer2/k/y;->abq:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lcom/applovin/exoplayer2/k/y;->abu:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/applovin/exoplayer2/k/y;->abu:I

    :cond_2c
    :goto_2c
    iget p1, p0, Lcom/applovin/exoplayer2/k/y;->abu:I

    iget p2, p0, Lcom/applovin/exoplayer2/k/y;->abp:I

    if-le p1, p2, :cond_61

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/applovin/exoplayer2/k/y;->abq:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/k/y$a;

    iget v1, p2, Lcom/applovin/exoplayer2/k/y$a;->abw:I

    if-gt v1, p1, :cond_58

    iget p1, p0, Lcom/applovin/exoplayer2/k/y;->abu:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/applovin/exoplayer2/k/y;->abu:I

    iget-object p1, p0, Lcom/applovin/exoplayer2/k/y;->abq:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, Lcom/applovin/exoplayer2/k/y;->abv:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2c

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/y;->abr:[Lcom/applovin/exoplayer2/k/y$a;

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/applovin/exoplayer2/k/y;->abv:I

    aput-object p2, v0, p1

    goto :goto_2c

    :cond_58
    sub-int/2addr v1, p1

    iput v1, p2, Lcom/applovin/exoplayer2/k/y$a;->abw:I

    iget p2, p0, Lcom/applovin/exoplayer2/k/y;->abu:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/applovin/exoplayer2/k/y;->abu:I

    goto :goto_2c

    :cond_61
    return-void
.end method

.method public x(F)F
    .registers 6

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/y;->oG()V

    iget v0, p0, Lcom/applovin/exoplayer2/k/y;->abu:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Lcom/applovin/exoplayer2/k/y;->abq:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    iget-object v2, p0, Lcom/applovin/exoplayer2/k/y;->abq:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/k/y$a;

    iget v3, v2, Lcom/applovin/exoplayer2/k/y$a;->abw:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_25

    iget p1, v2, Lcom/applovin/exoplayer2/k/y$a;->abx:F

    return p1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_28
    iget-object p1, p0, Lcom/applovin/exoplayer2/k/y;->abq:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_33

    const/high16 p1, 0x7fc00000    # Float.NaN

    goto :goto_43

    :cond_33
    iget-object p1, p0, Lcom/applovin/exoplayer2/k/y;->abq:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/k/y$a;

    iget p1, p1, Lcom/applovin/exoplayer2/k/y$a;->abx:F

    :goto_43
    return p1
.end method
