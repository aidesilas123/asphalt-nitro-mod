###### Class com.applovin.exoplayer2.ab.e.a (com.applovin.exoplayer2.ab$e$a)
.class public final Lcom/applovin/exoplayer2/ab$e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ab$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private aE:F

.field private aF:F

.field private eI:J

.field private eJ:J

.field private eK:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/ab$e$a;->eI:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/ab$e$a;->eJ:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/ab$e$a;->eK:J

    const v0, -0x800001

    iput v0, p0, Lcom/applovin/exoplayer2/ab$e$a;->aF:F

    iput v0, p0, Lcom/applovin/exoplayer2/ab$e$a;->aE:F

    return-void
.end method

.method private constructor <init>(Lcom/applovin/exoplayer2/ab$e;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/applovin/exoplayer2/ab$e;->eI:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/ab$e$a;->eI:J

    iget-wide v0, p1, Lcom/applovin/exoplayer2/ab$e;->eJ:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/ab$e$a;->eJ:J

    iget-wide v0, p1, Lcom/applovin/exoplayer2/ab$e;->eK:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/ab$e$a;->eK:J

    iget v0, p1, Lcom/applovin/exoplayer2/ab$e;->aF:F

    iput v0, p0, Lcom/applovin/exoplayer2/ab$e$a;->aF:F

    iget p1, p1, Lcom/applovin/exoplayer2/ab$e;->aE:F

    iput p1, p0, Lcom/applovin/exoplayer2/ab$e$a;->aE:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/ab$e;Lcom/applovin/exoplayer2/ab$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ab$e$a;-><init>(Lcom/applovin/exoplayer2/ab$e;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ab$e$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ab$e$a;->eI:J

    return-wide v0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/ab$e$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ab$e$a;->eJ:J

    return-wide v0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/ab$e$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ab$e$a;->eK:J

    return-wide v0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/ab$e$a;)F
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/ab$e$a;->aF:F

    return p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/ab$e$a;)F
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/ab$e$a;->aE:F

    return p0
.end method


# virtual methods
.method public ca()Lcom/applovin/exoplayer2/ab$e;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/ab$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/ab$e;-><init>(Lcom/applovin/exoplayer2/ab$e$a;Lcom/applovin/exoplayer2/ab$1;)V

    return-object v0
.end method
