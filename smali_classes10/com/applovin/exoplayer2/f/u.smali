###### Class com.applovin.exoplayer2.f.u (com.applovin.exoplayer2.f.u)
.class public final synthetic Lcom/applovin/exoplayer2/f/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/f/l$f;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/f/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/f/u;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/f/u;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/f/u;->a:Lcom/applovin/exoplayer2/f/u;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/f/i;

    invoke-static {p1}, Lcom/applovin/exoplayer2/f/l;->k(Lcom/applovin/exoplayer2/f/i;)I

    move-result p1

    return p1
.end method
