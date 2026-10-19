###### Class com.applovin.exoplayer2.k.c0 (com.applovin.exoplayer2.k.c0)
.class public final synthetic Lcom/applovin/exoplayer2/k/c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/common/base/Predicate;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/k/c0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/k/c0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/k/c0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/k/c0;->a:Lcom/applovin/exoplayer2/k/c0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/exoplayer2/k/g0;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
