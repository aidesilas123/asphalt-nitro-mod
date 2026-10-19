###### Class com.applovin.exoplayer2.o (com.applovin.exoplayer2.o)
.class public final Lcom/applovin/exoplayer2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# static fields
.field public static final bn:Lcom/applovin/exoplayer2/o;

.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bo:I

.field public final bp:I

.field public final bq:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/applovin/exoplayer2/o;-><init>(III)V

    sput-object v0, Lcom/applovin/exoplayer2/o;->bn:Lcom/applovin/exoplayer2/o;

    sget-object v0, Lcom/applovin/exoplayer2/u0;->a:Lcom/applovin/exoplayer2/u0;

    sput-object v0, Lcom/applovin/exoplayer2/o;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/o;->bo:I

    iput p2, p0, Lcom/applovin/exoplayer2/o;->bp:I

    iput p3, p0, Lcom/applovin/exoplayer2/o;->bq:I

    return-void
.end method

.method private static synthetic a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/o;
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/applovin/exoplayer2/o;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/applovin/exoplayer2/o;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/applovin/exoplayer2/o;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Lcom/applovin/exoplayer2/o;

    invoke-direct {v0, v1, v2, p0}, Lcom/applovin/exoplayer2/o;-><init>(III)V

    return-object v0
.end method

.method public static synthetic b(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/o;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/o;->a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/o;

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
    instance-of v1, p1, Lcom/applovin/exoplayer2/o;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/exoplayer2/o;

    iget v1, p0, Lcom/applovin/exoplayer2/o;->bo:I

    iget v3, p1, Lcom/applovin/exoplayer2/o;->bo:I

    if-ne v1, v3, :cond_1f

    iget v1, p0, Lcom/applovin/exoplayer2/o;->bp:I

    iget v3, p1, Lcom/applovin/exoplayer2/o;->bp:I

    if-ne v1, v3, :cond_1f

    iget v1, p0, Lcom/applovin/exoplayer2/o;->bq:I

    iget p1, p1, Lcom/applovin/exoplayer2/o;->bq:I

    if-ne v1, p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/o;->bo:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/applovin/exoplayer2/o;->bp:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/applovin/exoplayer2/o;->bq:I

    add-int/2addr v1, v0

    return v1
.end method

###### Class com.applovin.exoplayer2.u0 (com.applovin.exoplayer2.u0)
.class public final synthetic Lcom/applovin/exoplayer2/u0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/u0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/u0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/u0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/u0;->a:Lcom/applovin/exoplayer2/u0;

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

    invoke-static {p1}, Lcom/applovin/exoplayer2/o;->b(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/o;

    move-result-object p1

    return-object p1
.end method
