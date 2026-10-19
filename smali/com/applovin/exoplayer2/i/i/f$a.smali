###### Class com.applovin.exoplayer2.i.i.f.a (com.applovin.exoplayer2.i.i.f$a)
.class Lcom/applovin/exoplayer2/i/i/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final TB:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/applovin/exoplayer2/i/i/f$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TC:Lcom/applovin/exoplayer2/i/i/f$b;

.field private final TD:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/i/i/j;->a:Lcom/applovin/exoplayer2/i/i/j;

    sput-object v0, Lcom/applovin/exoplayer2/i/i/f$a;->TB:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lcom/applovin/exoplayer2/i/i/f$b;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/i/f$a;->TC:Lcom/applovin/exoplayer2/i/i/f$b;

    iput p2, p0, Lcom/applovin/exoplayer2/i/i/f$a;->TD:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/i/i/f$b;ILcom/applovin/exoplayer2/i/i/f$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/i/i/f$a;-><init>(Lcom/applovin/exoplayer2/i/i/f$b;I)V

    return-void
.end method

.method private static synthetic a(Lcom/applovin/exoplayer2/i/i/f$a;Lcom/applovin/exoplayer2/i/i/f$a;)I
    .registers 2

    iget-object p0, p0, Lcom/applovin/exoplayer2/i/i/f$a;->TC:Lcom/applovin/exoplayer2/i/i/f$b;

    iget p0, p0, Lcom/applovin/exoplayer2/i/i/f$b;->oX:I

    iget-object p1, p1, Lcom/applovin/exoplayer2/i/i/f$a;->TC:Lcom/applovin/exoplayer2/i/i/f$b;

    iget p1, p1, Lcom/applovin/exoplayer2/i/i/f$b;->oX:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/i/i/f$a;)Lcom/applovin/exoplayer2/i/i/f$b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/i/i/f$a;->TC:Lcom/applovin/exoplayer2/i/i/f$b;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/i/i/f$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/i/i/f$a;->TD:I

    return p0
.end method

.method public static synthetic c(Lcom/applovin/exoplayer2/i/i/f$a;Lcom/applovin/exoplayer2/i/i/f$a;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/i/i/f$a;->a(Lcom/applovin/exoplayer2/i/i/f$a;Lcom/applovin/exoplayer2/i/i/f$a;)I

    move-result p0

    return p0
.end method

.method static synthetic na()Ljava/util/Comparator;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/i/i/f$a;->TB:Ljava/util/Comparator;

    return-object v0
.end method
