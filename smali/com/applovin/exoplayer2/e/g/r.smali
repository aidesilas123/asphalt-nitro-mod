###### Class com.applovin.exoplayer2.e.g.r (com.applovin.exoplayer2.e.g.r)
.class public final synthetic Lcom/applovin/exoplayer2/e/g/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/common/base/Function;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/e/g/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/e/g/r;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/g/r;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/e/g/r;->a:Lcom/applovin/exoplayer2/e/g/r;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/e/g/k;

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/g/g;->h(Lcom/applovin/exoplayer2/e/g/k;)Lcom/applovin/exoplayer2/e/g/k;

    move-result-object p1

    return-object p1
.end method
