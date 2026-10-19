###### Class com.applovin.exoplayer2.d.l0 (com.applovin.exoplayer2.d.l0)
.class public final synthetic Lcom/applovin/exoplayer2/d/l0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/d/m$c;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/d/l0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/d/l0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/d/l0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/d/l0;->a:Lcom/applovin/exoplayer2/d/l0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acquireExoMediaDrm(Ljava/util/UUID;)Lcom/applovin/exoplayer2/d/m;
    .registers 2

    invoke-static {p1}, Lcom/applovin/exoplayer2/d/o;->f(Ljava/util/UUID;)Lcom/applovin/exoplayer2/d/m;

    move-result-object p1

    return-object p1
.end method
