###### Class com.applovin.exoplayer2.j.p (com.applovin.exoplayer2.j.p)
.class public final synthetic Lcom/applovin/exoplayer2/j/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/j/p;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/j/p;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/p;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/j/p;->a:Lcom/applovin/exoplayer2/j/p;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/j/c;->d(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
