###### Class com.applovin.exoplayer2.e.i.c (com.applovin.exoplayer2.e.i.c)
.class public final Lcom/applovin/exoplayer2/e/i/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h;


# static fields
.field public static final vq:Lcom/applovin/exoplayer2/e/l;


# instance fields
.field private final Cp:Lcom/applovin/exoplayer2/l/y;

.field private Cq:Z

.field private final Cx:Lcom/applovin/exoplayer2/e/i/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/e/i/c0;->a:Lcom/applovin/exoplayer2/e/i/c0;

    sput-object v0, Lcom/applovin/exoplayer2/e/i/c;->vq:Lcom/applovin/exoplayer2/e/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/e/i/d;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/i/d;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/c;->Cx:Lcom/applovin/exoplayer2/e/i/d;

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/c;->Cp:Lcom/applovin/exoplayer2/l/y;

    return-void
.end method

.method public static synthetic c()[Lcom/applovin/exoplayer2/e/h;
    .registers 1

    invoke-static {}, Lcom/applovin/exoplayer2/e/i/c;->ih()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ih()[Lcom/applovin/exoplayer2/e/h;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/exoplayer2/e/h;

    new-instance v1, Lcom/applovin/exoplayer2/e/i/c;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/e/i/c;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/e/j;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/c;->Cx:Lcom/applovin/exoplayer2/e/i/d;

    new-instance v1, Lcom/applovin/exoplayer2/e/i/ad$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/e/i/ad$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/applovin/exoplayer2/e/i/d;->a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/j;->ig()V

    new-instance v0, Lcom/applovin/exoplayer2/e/v$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/applovin/exoplayer2/e/v$b;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v4

    invoke-interface {p1, v4, v2, v1}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pt()I

    move-result v4

    const v5, 0x494433

    if-eq v4, v5, :cond_65

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ic()V

    invoke-interface {p1, v3}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    move v4, v3

    :goto_23
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v5

    const/4 v6, 0x7

    invoke-interface {p1, v5, v2, v6}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v5

    const v6, 0xac40

    if-eq v5, v6, :cond_4d

    const v6, 0xac41

    if-eq v5, v6, :cond_4d

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ic()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_49

    return v2

    :cond_49
    invoke-interface {p1, v4}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    goto :goto_23

    :cond_4d
    const/4 v6, 0x1

    add-int/2addr v1, v6

    const/4 v7, 0x4

    if-lt v1, v7, :cond_53

    return v6

    :cond_53
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v6

    invoke-static {v6, v5}, Lcom/applovin/exoplayer2/b/c;->b([BI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5f

    return v2

    :cond_5f
    add-int/lit8 v5, v5, -0x7

    invoke-interface {p1, v5}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    goto :goto_24

    :cond_65
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pC()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    invoke-interface {p1, v4}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    goto :goto_9
.end method

.method public b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/c;->Cp:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x4000

    invoke-interface {p1, p2, v0, v1}, Lcom/applovin/exoplayer2/e/i;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_11

    return p2

    :cond_11
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/c;->Cp:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/c;->Cp:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/c;->Cq:Z

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/c;->Cx:Lcom/applovin/exoplayer2/e/i/d;

    const-wide/16 v1, 0x0

    const/4 p2, 0x4

    invoke-virtual {p1, v1, v2, p2}, Lcom/applovin/exoplayer2/e/i/d;->e(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/c;->Cq:Z

    :cond_2a
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/c;->Cx:Lcom/applovin/exoplayer2/e/i/d;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/c;->Cp:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/e/i/d;->K(Lcom/applovin/exoplayer2/l/y;)V

    return v0
.end method

.method public o(JJ)V
    .registers 5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/c;->Cq:Z

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/c;->Cx:Lcom/applovin/exoplayer2/e/i/d;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/i/d;->jb()V

    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method

###### Class com.applovin.exoplayer2.e.i.c0 (com.applovin.exoplayer2.e.i.c0)
.class public final synthetic Lcom/applovin/exoplayer2/e/i/c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/e/l;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/e/i/c0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/e/i/c0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/i/c0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/e/i/c0;->a:Lcom/applovin/exoplayer2/e/i/c0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/applovin/exoplayer2/e/h;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/e/c0;->a(Lcom/applovin/exoplayer2/e/l;Landroid/net/Uri;Ljava/util/Map;)[Lcom/applovin/exoplayer2/e/h;

    move-result-object p1

    return-object p1
.end method

.method public final createExtractors()[Lcom/applovin/exoplayer2/e/h;
    .registers 2

    invoke-static {}, Lcom/applovin/exoplayer2/e/i/c;->c()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method
