###### Class com.applovin.exoplayer2.ab.d.a (com.applovin.exoplayer2.ab$d$a)
.class public final Lcom/applovin/exoplayer2/ab$d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ab$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private eB:Z

.field private eC:Z

.field private eD:Z

.field private eE:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private eF:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private eG:Lcom/applovin/exoplayer2/common/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/u<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ey:Ljava/util/UUID;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ez:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/u;->gi()Lcom/applovin/exoplayer2/common/a/u;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$d$a;->eG:Lcom/applovin/exoplayer2/common/a/u;

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$d$a;->eE:Lcom/applovin/exoplayer2/common/a/s;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/ab$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ab$d$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/applovin/exoplayer2/ab$d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab$d;->ey:Ljava/util/UUID;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$d$a;->ey:Ljava/util/UUID;

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab$d;->ez:Landroid/net/Uri;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$d$a;->ez:Landroid/net/Uri;

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab$d;->eA:Lcom/applovin/exoplayer2/common/a/u;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$d$a;->eG:Lcom/applovin/exoplayer2/common/a/u;

    iget-boolean v0, p1, Lcom/applovin/exoplayer2/ab$d;->eB:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/ab$d$a;->eB:Z

    iget-boolean v0, p1, Lcom/applovin/exoplayer2/ab$d;->eC:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/ab$d$a;->eC:Z

    iget-boolean v0, p1, Lcom/applovin/exoplayer2/ab$d;->eD:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/ab$d$a;->eD:Z

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab$d;->eE:Lcom/applovin/exoplayer2/common/a/s;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$d$a;->eE:Lcom/applovin/exoplayer2/common/a/s;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ab$d;->a(Lcom/applovin/exoplayer2/ab$d;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/ab$d$a;->eF:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/ab$d;Lcom/applovin/exoplayer2/ab$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ab$d$a;-><init>(Lcom/applovin/exoplayer2/ab$d;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ab$d$a;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ab$d$a;->ez:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/ab$d$a;)Ljava/util/UUID;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ab$d$a;->ey:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/ab$d$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/ab$d$a;->eD:Z

    return p0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/ab$d$a;)Lcom/applovin/exoplayer2/common/a/u;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ab$d$a;->eG:Lcom/applovin/exoplayer2/common/a/u;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/ab$d$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/ab$d$a;->eB:Z

    return p0
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/ab$d$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/ab$d$a;->eC:Z

    return p0
.end method

.method static synthetic g(Lcom/applovin/exoplayer2/ab$d$a;)Lcom/applovin/exoplayer2/common/a/s;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ab$d$a;->eE:Lcom/applovin/exoplayer2/common/a/s;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/exoplayer2/ab$d$a;)[B
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ab$d$a;->eF:[B

    return-object p0
.end method


# virtual methods
.method public bY()Lcom/applovin/exoplayer2/ab$d;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/ab$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/ab$d;-><init>(Lcom/applovin/exoplayer2/ab$d$a;Lcom/applovin/exoplayer2/ab$1;)V

    return-object v0
.end method
