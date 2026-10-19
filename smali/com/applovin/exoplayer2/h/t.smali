###### Class com.applovin.exoplayer2.h.t (com.applovin.exoplayer2.h.t)
.class final Lcom/applovin/exoplayer2/h/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/j;
.implements Lcom/applovin/exoplayer2/h/n;
.implements Lcom/applovin/exoplayer2/h/w$c;
.implements Lcom/applovin/exoplayer2/k/w$a;
.implements Lcom/applovin/exoplayer2/k/w$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/h/t$d;,
        Lcom/applovin/exoplayer2/h/t$e;,
        Lcom/applovin/exoplayer2/h/t$a;,
        Lcom/applovin/exoplayer2/h/t$c;,
        Lcom/applovin/exoplayer2/h/t$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/applovin/exoplayer2/e/j;",
        "Lcom/applovin/exoplayer2/h/n;",
        "Lcom/applovin/exoplayer2/h/w$c;",
        "Lcom/applovin/exoplayer2/k/w$a<",
        "Lcom/applovin/exoplayer2/h/t$a;",
        ">;",
        "Lcom/applovin/exoplayer2/k/w$e;"
    }
.end annotation


# static fields
.field private static final LP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LQ:Lcom/applovin/exoplayer2/v;


# instance fields
.field private KS:Lcom/applovin/exoplayer2/h/n$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final LR:Lcom/applovin/exoplayer2/k/i;

.field private final LS:Lcom/applovin/exoplayer2/d/h;

.field private final LT:Lcom/applovin/exoplayer2/h/t$b;

.field private final LU:J

.field private final LV:Lcom/applovin/exoplayer2/k/w;

.field private final LW:Lcom/applovin/exoplayer2/h/s;

.field private final LX:Lcom/applovin/exoplayer2/l/g;

.field private final LY:Ljava/lang/Runnable;

.field private final LZ:Ljava/lang/Runnable;

.field private final Lu:Lcom/applovin/exoplayer2/k/b;

.field private Ma:Lcom/applovin/exoplayer2/g/d/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Mb:[Lcom/applovin/exoplayer2/h/w;

.field private Mc:[Lcom/applovin/exoplayer2/h/t$d;

.field private Md:Z

.field private Me:Z

.field private Mf:Lcom/applovin/exoplayer2/h/t$e;

.field private Mg:Z

.field private Mh:Z

.field private Mi:I

.field private Mj:J

.field private Mk:J

.field private Ml:Z

.field private Mm:I

.field private Mn:Z

.field private cw:Z

.field private final ef:Landroid/net/Uri;

.field private final eo:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fH:J

.field private final fX:Lcom/applovin/exoplayer2/h/q$a;

.field private final fY:Lcom/applovin/exoplayer2/d/g$a;

.field private fv:Z

.field private gn:I

.field private iO:Z

.field private final jS:Landroid/os/Handler;

.field private final sm:Lcom/applovin/exoplayer2/k/v;

.field private vI:Lcom/applovin/exoplayer2/e/v;

.field private wC:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/applovin/exoplayer2/h/t;->lm()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/h/t;->LP:Ljava/util/Map;

    new-instance v0, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    const-string v1, "icy"

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/v$a;->g(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/h/t;->LQ:Lcom/applovin/exoplayer2/v;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/h/s;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/k/v;Lcom/applovin/exoplayer2/h/q$a;Lcom/applovin/exoplayer2/h/t$b;Lcom/applovin/exoplayer2/k/b;Ljava/lang/String;I)V
    .registers 12
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t;->ef:Landroid/net/Uri;

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/t;->LR:Lcom/applovin/exoplayer2/k/i;

    iput-object p4, p0, Lcom/applovin/exoplayer2/h/t;->LS:Lcom/applovin/exoplayer2/d/h;

    iput-object p5, p0, Lcom/applovin/exoplayer2/h/t;->fY:Lcom/applovin/exoplayer2/d/g$a;

    iput-object p6, p0, Lcom/applovin/exoplayer2/h/t;->sm:Lcom/applovin/exoplayer2/k/v;

    iput-object p7, p0, Lcom/applovin/exoplayer2/h/t;->fX:Lcom/applovin/exoplayer2/h/q$a;

    iput-object p8, p0, Lcom/applovin/exoplayer2/h/t;->LT:Lcom/applovin/exoplayer2/h/t$b;

    iput-object p9, p0, Lcom/applovin/exoplayer2/h/t;->Lu:Lcom/applovin/exoplayer2/k/b;

    iput-object p10, p0, Lcom/applovin/exoplayer2/h/t;->eo:Ljava/lang/String;

    int-to-long p1, p11

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/t;->LU:J

    new-instance p1, Lcom/applovin/exoplayer2/k/w;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/k/w;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t;->LV:Lcom/applovin/exoplayer2/k/w;

    iput-object p3, p0, Lcom/applovin/exoplayer2/h/t;->LW:Lcom/applovin/exoplayer2/h/s;

    new-instance p1, Lcom/applovin/exoplayer2/l/g;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/g;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t;->LX:Lcom/applovin/exoplayer2/l/g;

    new-instance p1, Lcom/applovin/exoplayer2/h/j0;

    invoke-direct {p1, p0}, Lcom/applovin/exoplayer2/h/j0;-><init>(Lcom/applovin/exoplayer2/h/t;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t;->LY:Ljava/lang/Runnable;

    new-instance p1, Lcom/applovin/exoplayer2/h/l0;

    invoke-direct {p1, p0}, Lcom/applovin/exoplayer2/h/l0;-><init>(Lcom/applovin/exoplayer2/h/t;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t;->LZ:Ljava/lang/Runnable;

    invoke-static {}, Lcom/applovin/exoplayer2/l/ai;->pX()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t;->jS:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/applovin/exoplayer2/h/t$d;

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/t;->Mc:[Lcom/applovin/exoplayer2/h/t$d;

    new-array p1, p1, [Lcom/applovin/exoplayer2/h/w;

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/t;->Mk:J

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lcom/applovin/exoplayer2/h/t;->wC:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/t;->fH:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/applovin/exoplayer2/h/t;->gn:I

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/h/t$d;)Lcom/applovin/exoplayer2/e/x;
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_18

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/t;->Mc:[Lcom/applovin/exoplayer2/h/t$d;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/h/t$d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    aget-object p1, p1, v1

    return-object p1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_18
    iget-object v1, p0, Lcom/applovin/exoplayer2/h/t;->Lu:Lcom/applovin/exoplayer2/k/b;

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/t;->jS:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/t;->LS:Lcom/applovin/exoplayer2/d/h;

    iget-object v4, p0, Lcom/applovin/exoplayer2/h/t;->fY:Lcom/applovin/exoplayer2/d/g$a;

    invoke-static {v1, v2, v3, v4}, Lcom/applovin/exoplayer2/h/w;->a(Lcom/applovin/exoplayer2/k/b;Landroid/os/Looper;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/d/g$a;)Lcom/applovin/exoplayer2/h/w;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/applovin/exoplayer2/h/w;->a(Lcom/applovin/exoplayer2/h/w$c;)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/t;->Mc:[Lcom/applovin/exoplayer2/h/t$d;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/applovin/exoplayer2/h/t$d;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/ai;->g([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/applovin/exoplayer2/h/t$d;

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t;->Mc:[Lcom/applovin/exoplayer2/h/t$d;

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/applovin/exoplayer2/h/w;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->g([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/applovin/exoplayer2/h/w;

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    return-object v1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/h/t;)Lcom/applovin/exoplayer2/g/d/b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/h/t;->Ma:Lcom/applovin/exoplayer2/g/d/b;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/h/t;Lcom/applovin/exoplayer2/g/d/b;)Lcom/applovin/exoplayer2/g/d/b;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t;->Ma:Lcom/applovin/exoplayer2/g/d/b;

    return-object p1
.end method

.method private a(Lcom/applovin/exoplayer2/h/t$a;)V
    .registers 7

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/t;->wC:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    invoke-static {p1}, Lcom/applovin/exoplayer2/h/t$a;->f(Lcom/applovin/exoplayer2/h/t$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/h/t;->wC:J

    :cond_e
    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/h/t$a;I)Z
    .registers 9

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/t;->wC:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_44

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->vI:Lcom/applovin/exoplayer2/e/v;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/v;->dd()J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1b

    goto :goto_44

    :cond_1b
    iget-boolean p2, p0, Lcom/applovin/exoplayer2/h/t;->fv:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_29

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->le()Z

    move-result p2

    if-nez p2, :cond_29

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/h/t;->Ml:Z

    return v0

    :cond_29
    iget-boolean p2, p0, Lcom/applovin/exoplayer2/h/t;->fv:Z

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/h/t;->Mh:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/applovin/exoplayer2/h/t;->Mj:J

    iput v0, p0, Lcom/applovin/exoplayer2/h/t;->Mm:I

    iget-object p2, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v1, p2

    :goto_36
    if-ge v0, v1, :cond_40

    aget-object v5, p2, v0

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/h/w;->Y()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_40
    invoke-static {p1, v3, v4, v3, v4}, Lcom/applovin/exoplayer2/h/t$a;->b(Lcom/applovin/exoplayer2/h/t$a;JJ)V

    return v2

    :cond_44
    :goto_44
    iput p2, p0, Lcom/applovin/exoplayer2/h/t;->Mm:I

    return v2
.end method

.method private a([ZJ)Z
    .registers 8

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_1d

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    aget-object v3, v3, v2

    invoke-virtual {v3, p2, p3, v1}, Lcom/applovin/exoplayer2/h/w;->e(JZ)Z

    move-result v3

    if-nez v3, :cond_1a

    aget-boolean v3, p1, v2

    if-nez v3, :cond_19

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/h/t;->Me:Z

    if-nez v3, :cond_1a

    :cond_19
    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1d
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/h/t;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/t;->LU:J

    return-wide v0
.end method

.method private b(Lcom/applovin/exoplayer2/e/v;)V
    .registers 10

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Ma:Lcom/applovin/exoplayer2/g/d/b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_b

    move-object v0, p1

    goto :goto_10

    :cond_b
    new-instance v0, Lcom/applovin/exoplayer2/e/v$b;

    invoke-direct {v0, v1, v2}, Lcom/applovin/exoplayer2/e/v$b;-><init>(J)V

    :goto_10
    iput-object v0, p0, Lcom/applovin/exoplayer2/h/t;->vI:Lcom/applovin/exoplayer2/e/v;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/v;->dd()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/applovin/exoplayer2/h/t;->fH:J

    iget-wide v3, p0, Lcom/applovin/exoplayer2/h/t;->wC:J

    const-wide/16 v5, -0x1

    const/4 v0, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_2b

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/v;->dd()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/h/t;->iO:Z

    if-eqz v1, :cond_31

    const/4 v0, 0x7

    :cond_31
    iput v0, p0, Lcom/applovin/exoplayer2/h/t;->gn:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->LT:Lcom/applovin/exoplayer2/h/t$b;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/h/t;->fH:J

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/v;->hU()Z

    move-result p1

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/h/t;->iO:Z

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/applovin/exoplayer2/h/t$b;->a(JZZ)V

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/h/t;->fv:Z

    if-nez p1, :cond_47

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->lg()V

    :cond_47
    return-void
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/h/t;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/h/t;->LZ:Ljava/lang/Runnable;

    return-object p0
.end method

.method private synthetic c(Lcom/applovin/exoplayer2/e/v;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/t;->b(Lcom/applovin/exoplayer2/e/v;)V

    return-void
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/h/t;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/h/t;->jS:Landroid/os/Handler;

    return-object p0
.end method

.method private dL(I)V
    .registers 12

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->ll()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mf:Lcom/applovin/exoplayer2/h/t$e;

    iget-object v1, v0, Lcom/applovin/exoplayer2/h/t$e;->Mz:[Z

    aget-boolean v2, v1, p1

    if-nez v2, :cond_28

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/t$e;->Mw:Lcom/applovin/exoplayer2/h/ad;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/h/ad;->eb(I)Lcom/applovin/exoplayer2/h/ac;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v5

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/t;->fX:Lcom/applovin/exoplayer2/h/q$a;

    iget-object v0, v5, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/u;->ba(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/applovin/exoplayer2/h/t;->Mj:J

    invoke-virtual/range {v3 .. v9}, Lcom/applovin/exoplayer2/h/q$a;->a(ILcom/applovin/exoplayer2/v;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    aput-boolean v0, v1, p1

    :cond_28
    return-void
.end method

.method private dM(I)V
    .registers 5

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->ll()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mf:Lcom/applovin/exoplayer2/h/t$e;

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/t$e;->Mx:[Z

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/h/t;->Ml:Z

    if-eqz v1, :cond_40

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/h/w;->Q(Z)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_40

    :cond_1b
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/applovin/exoplayer2/h/t;->Mk:J

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->Ml:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/t;->Mh:Z

    iput-wide v1, p0, Lcom/applovin/exoplayer2/h/t;->Mj:J

    iput v0, p0, Lcom/applovin/exoplayer2/h/t;->Mm:I

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v1, p1

    :goto_2b
    if-ge v0, v1, :cond_35

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/h/w;->Y()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_35
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/t;->KS:Lcom/applovin/exoplayer2/h/n$a;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/h/n$a;

    invoke-interface {p1, p0}, Lcom/applovin/exoplayer2/h/y$a;->a(Lcom/applovin/exoplayer2/h/y;)V

    :cond_40
    :goto_40
    return-void
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/h/t;)J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->lj()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/h/t;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/h/t;->eo:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lcom/applovin/exoplayer2/h/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->lg()V

    return-void
.end method

.method public static synthetic h(Lcom/applovin/exoplayer2/h/t;Lcom/applovin/exoplayer2/e/v;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/t;->c(Lcom/applovin/exoplayer2/e/v;)V

    return-void
.end method

.method public static synthetic i(Lcom/applovin/exoplayer2/h/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->ln()V

    return-void
.end method

.method private le()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->Mh:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->lk()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private lg()V
    .registers 12

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->cw:Z

    if-nez v0, :cond_db

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->fv:Z

    if-nez v0, :cond_db

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->Md:Z

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->vI:Lcom/applovin/exoplayer2/e/v;

    if-nez v0, :cond_12

    goto/16 :goto_db

    :cond_12
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_25

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/h/w;->lz()Lcom/applovin/exoplayer2/v;

    move-result-object v4

    if-nez v4, :cond_22

    return-void

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_25
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->LX:Lcom/applovin/exoplayer2/l/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/g;->oO()Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v0, v0

    new-array v1, v0, [Lcom/applovin/exoplayer2/h/ac;

    new-array v3, v0, [Z

    const/4 v4, 0x0

    :goto_32
    const/4 v5, 0x1

    if-ge v4, v0, :cond_c2

    iget-object v6, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/h/w;->lz()Lcom/applovin/exoplayer2/v;

    move-result-object v6

    invoke-static {v6}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/applovin/exoplayer2/v;

    iget-object v7, v6, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {v7}, Lcom/applovin/exoplayer2/l/u;->aW(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_54

    invoke-static {v7}, Lcom/applovin/exoplayer2/l/u;->aX(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52

    goto :goto_54

    :cond_52
    const/4 v7, 0x0

    goto :goto_55

    :cond_54
    :goto_54
    const/4 v7, 0x1

    :goto_55
    aput-boolean v7, v3, v4

    iget-boolean v9, p0, Lcom/applovin/exoplayer2/h/t;->Me:Z

    or-int/2addr v7, v9

    iput-boolean v7, p0, Lcom/applovin/exoplayer2/h/t;->Me:Z

    iget-object v7, p0, Lcom/applovin/exoplayer2/h/t;->Ma:Lcom/applovin/exoplayer2/g/d/b;

    if-eqz v7, :cond_a9

    if-nez v8, :cond_6a

    iget-object v9, p0, Lcom/applovin/exoplayer2/h/t;->Mc:[Lcom/applovin/exoplayer2/h/t$d;

    aget-object v9, v9, v4

    iget-boolean v9, v9, Lcom/applovin/exoplayer2/h/t$d;->Mv:Z

    if-eqz v9, :cond_8c

    :cond_6a
    iget-object v9, v6, Lcom/applovin/exoplayer2/v;->dx:Lcom/applovin/exoplayer2/g/a;

    if-nez v9, :cond_78

    new-instance v9, Lcom/applovin/exoplayer2/g/a;

    new-array v10, v5, [Lcom/applovin/exoplayer2/g/a$a;

    aput-object v7, v10, v2

    invoke-direct {v9, v10}, Lcom/applovin/exoplayer2/g/a;-><init>([Lcom/applovin/exoplayer2/g/a$a;)V

    goto :goto_80

    :cond_78
    new-array v10, v5, [Lcom/applovin/exoplayer2/g/a$a;

    aput-object v7, v10, v2

    invoke-virtual {v9, v10}, Lcom/applovin/exoplayer2/g/a;->b([Lcom/applovin/exoplayer2/g/a$a;)Lcom/applovin/exoplayer2/g/a;

    move-result-object v9

    :goto_80
    invoke-virtual {v6}, Lcom/applovin/exoplayer2/v;->bR()Lcom/applovin/exoplayer2/v$a;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/applovin/exoplayer2/v$a;->b(Lcom/applovin/exoplayer2/g/a;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v6

    :cond_8c
    if-eqz v8, :cond_a9

    iget v8, v6, Lcom/applovin/exoplayer2/v;->dt:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_a9

    iget v8, v6, Lcom/applovin/exoplayer2/v;->du:I

    if-ne v8, v9, :cond_a9

    iget v8, v7, Lcom/applovin/exoplayer2/g/d/b;->dv:I

    if-eq v8, v9, :cond_a9

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/v;->bR()Lcom/applovin/exoplayer2/v$a;

    move-result-object v6

    iget v7, v7, Lcom/applovin/exoplayer2/g/d/b;->dv:I

    invoke-virtual {v6, v7}, Lcom/applovin/exoplayer2/v$a;->G(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v6

    :cond_a9
    iget-object v7, p0, Lcom/applovin/exoplayer2/h/t;->LS:Lcom/applovin/exoplayer2/d/h;

    invoke-interface {v7, v6}, Lcom/applovin/exoplayer2/d/h;->g(Lcom/applovin/exoplayer2/v;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/applovin/exoplayer2/v;->B(I)Lcom/applovin/exoplayer2/v;

    move-result-object v6

    new-instance v7, Lcom/applovin/exoplayer2/h/ac;

    new-array v5, v5, [Lcom/applovin/exoplayer2/v;

    aput-object v6, v5, v2

    invoke-direct {v7, v5}, Lcom/applovin/exoplayer2/h/ac;-><init>([Lcom/applovin/exoplayer2/v;)V

    aput-object v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_32

    :cond_c2
    new-instance v0, Lcom/applovin/exoplayer2/h/t$e;

    new-instance v2, Lcom/applovin/exoplayer2/h/ad;

    invoke-direct {v2, v1}, Lcom/applovin/exoplayer2/h/ad;-><init>([Lcom/applovin/exoplayer2/h/ac;)V

    invoke-direct {v0, v2, v3}, Lcom/applovin/exoplayer2/h/t$e;-><init>(Lcom/applovin/exoplayer2/h/ad;[Z)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mf:Lcom/applovin/exoplayer2/h/t$e;

    iput-boolean v5, p0, Lcom/applovin/exoplayer2/h/t;->fv:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->KS:Lcom/applovin/exoplayer2/h/n$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/n$a;

    invoke-interface {v0, p0}, Lcom/applovin/exoplayer2/h/n$a;->a(Lcom/applovin/exoplayer2/h/n;)V

    :cond_db
    :goto_db
    return-void
.end method

.method private lh()V
    .registers 27

    move-object/from16 v7, p0

    new-instance v8, Lcom/applovin/exoplayer2/h/t$a;

    iget-object v2, v7, Lcom/applovin/exoplayer2/h/t;->ef:Landroid/net/Uri;

    iget-object v3, v7, Lcom/applovin/exoplayer2/h/t;->LR:Lcom/applovin/exoplayer2/k/i;

    iget-object v4, v7, Lcom/applovin/exoplayer2/h/t;->LW:Lcom/applovin/exoplayer2/h/s;

    iget-object v6, v7, Lcom/applovin/exoplayer2/h/t;->LX:Lcom/applovin/exoplayer2/l/g;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/h/t$a;-><init>(Lcom/applovin/exoplayer2/h/t;Landroid/net/Uri;Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/h/s;Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/l/g;)V

    iget-boolean v0, v7, Lcom/applovin/exoplayer2/h/t;->fv:Z

    if-eqz v0, :cond_5f

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/h/t;->lk()Z

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-wide v0, v7, Lcom/applovin/exoplayer2/h/t;->fH:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_36

    iget-wide v4, v7, Lcom/applovin/exoplayer2/h/t;->Mk:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_36

    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/applovin/exoplayer2/h/t;->Mn:Z

    iput-wide v2, v7, Lcom/applovin/exoplayer2/h/t;->Mk:J

    return-void

    :cond_36
    iget-object v0, v7, Lcom/applovin/exoplayer2/h/t;->vI:Lcom/applovin/exoplayer2/e/v;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/v;

    iget-wide v4, v7, Lcom/applovin/exoplayer2/h/t;->Mk:J

    invoke-interface {v0, v4, v5}, Lcom/applovin/exoplayer2/e/v;->ai(J)Lcom/applovin/exoplayer2/e/v$a;

    move-result-object v0

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/v$a;->uQ:Lcom/applovin/exoplayer2/e/w;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/e/w;->uc:J

    iget-wide v4, v7, Lcom/applovin/exoplayer2/h/t;->Mk:J

    invoke-static {v8, v0, v1, v4, v5}, Lcom/applovin/exoplayer2/h/t$a;->b(Lcom/applovin/exoplayer2/h/t$a;JJ)V

    iget-object v0, v7, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_51
    if-ge v4, v1, :cond_5d

    aget-object v5, v0, v4

    iget-wide v9, v7, Lcom/applovin/exoplayer2/h/t;->Mk:J

    invoke-virtual {v5, v9, v10}, Lcom/applovin/exoplayer2/h/w;->ba(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_5d
    iput-wide v2, v7, Lcom/applovin/exoplayer2/h/t;->Mk:J

    :cond_5f
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/h/t;->li()I

    move-result v0

    iput v0, v7, Lcom/applovin/exoplayer2/h/t;->Mm:I

    iget-object v0, v7, Lcom/applovin/exoplayer2/h/t;->LV:Lcom/applovin/exoplayer2/k/w;

    iget-object v1, v7, Lcom/applovin/exoplayer2/h/t;->sm:Lcom/applovin/exoplayer2/k/v;

    iget v2, v7, Lcom/applovin/exoplayer2/h/t;->gn:I

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/k/v;->fl(I)I

    move-result v1

    invoke-virtual {v0, v8, v7, v1}, Lcom/applovin/exoplayer2/k/w;->a(Lcom/applovin/exoplayer2/k/w$d;Lcom/applovin/exoplayer2/k/w$a;I)J

    move-result-wide v13

    invoke-static {v8}, Lcom/applovin/exoplayer2/h/t$a;->d(Lcom/applovin/exoplayer2/h/t$a;)Lcom/applovin/exoplayer2/k/l;

    move-result-object v12

    iget-object v15, v7, Lcom/applovin/exoplayer2/h/t;->fX:Lcom/applovin/exoplayer2/h/q$a;

    new-instance v16, Lcom/applovin/exoplayer2/h/j;

    invoke-static {v8}, Lcom/applovin/exoplayer2/h/t$a;->c(Lcom/applovin/exoplayer2/h/t$a;)J

    move-result-wide v10

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v14}, Lcom/applovin/exoplayer2/h/j;-><init>(JLcom/applovin/exoplayer2/k/l;J)V

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {v8}, Lcom/applovin/exoplayer2/h/t$a;->e(Lcom/applovin/exoplayer2/h/t$a;)J

    move-result-wide v22

    iget-wide v0, v7, Lcom/applovin/exoplayer2/h/t;->fH:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v15 .. v25}, Lcom/applovin/exoplayer2/h/q$a;->a(Lcom/applovin/exoplayer2/h/j;IILcom/applovin/exoplayer2/v;ILjava/lang/Object;JJ)V

    return-void
.end method

.method private li()I
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/h/w;->lw()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    return v3
.end method

.method private lj()J
    .registers 8

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_15

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/h/w;->lj()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_15
    return-wide v2
.end method

.method private lk()Z
    .registers 6

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/t;->Mk:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private ll()V
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->fv:Z

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mf:Lcom/applovin/exoplayer2/h/t$e;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->vI:Lcom/applovin/exoplayer2/e/v;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static lm()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private synthetic ln()V
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->cw:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->KS:Lcom/applovin/exoplayer2/h/n$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/n$a;

    invoke-interface {v0, p0}, Lcom/applovin/exoplayer2/h/y$a;->a(Lcom/applovin/exoplayer2/h/y;)V

    :cond_f
    return-void
.end method

.method static synthetic lo()Lcom/applovin/exoplayer2/v;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/h/t;->LQ:Lcom/applovin/exoplayer2/v;

    return-object v0
.end method

.method static synthetic lp()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/h/t;->LP:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method a(ILcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I
    .registers 8

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->le()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/t;->dL(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/h/t;->Mn:Z

    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/applovin/exoplayer2/h/w;->a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;IZ)I

    move-result p2

    if-ne p2, v1, :cond_1a

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/t;->dM(I)V

    :cond_1a
    return p2
.end method

.method public a(JLcom/applovin/exoplayer2/av;)J
    .registers 13

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->ll()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->vI:Lcom/applovin/exoplayer2/e/v;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/v;->hU()Z

    move-result v0

    if-nez v0, :cond_e

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_e
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->vI:Lcom/applovin/exoplayer2/e/v;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/e/v;->ai(J)Lcom/applovin/exoplayer2/e/v$a;

    move-result-object v0

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/v$a;->uQ:Lcom/applovin/exoplayer2/e/w;

    iget-wide v5, v1, Lcom/applovin/exoplayer2/e/w;->rJ:J

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/v$a;->uR:Lcom/applovin/exoplayer2/e/w;

    iget-wide v7, v0, Lcom/applovin/exoplayer2/e/w;->rJ:J

    move-object v2, p3

    move-wide v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/applovin/exoplayer2/av;->a(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a([Lcom/applovin/exoplayer2/j/d;[Z[Lcom/applovin/exoplayer2/h/x;[ZJ)J
    .registers 15

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->ll()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mf:Lcom/applovin/exoplayer2/h/t$e;

    iget-object v1, v0, Lcom/applovin/exoplayer2/h/t$e;->Mw:Lcom/applovin/exoplayer2/h/ad;

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/t$e;->My:[Z

    iget v2, p0, Lcom/applovin/exoplayer2/h/t;->Mi:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_37

    aget-object v5, p3, v4

    if-eqz v5, :cond_34

    aget-object v5, p1, v4

    if-eqz v5, :cond_1d

    aget-boolean v5, p2, v4

    if-nez v5, :cond_34

    :cond_1d
    aget-object v5, p3, v4

    check-cast v5, Lcom/applovin/exoplayer2/h/t$c;

    invoke-static {v5}, Lcom/applovin/exoplayer2/h/t$c;->a(Lcom/applovin/exoplayer2/h/t$c;)I

    move-result v5

    aget-boolean v7, v0, v5

    invoke-static {v7}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget v7, p0, Lcom/applovin/exoplayer2/h/t;->Mi:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/applovin/exoplayer2/h/t;->Mi:I

    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    aput-object v5, p3, v4

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_37
    iget-boolean p2, p0, Lcom/applovin/exoplayer2/h/t;->Mg:Z

    if-eqz p2, :cond_3e

    if-nez v2, :cond_46

    goto :goto_44

    :cond_3e
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_46

    :goto_44
    const/4 p2, 0x1

    goto :goto_47

    :cond_46
    const/4 p2, 0x0

    :goto_47
    const/4 v2, 0x0

    :goto_48
    array-length v4, p1

    if-ge v2, v4, :cond_a3

    aget-object v4, p3, v2

    if-nez v4, :cond_a0

    aget-object v4, p1, v2

    if-eqz v4, :cond_a0

    aget-object v4, p1, v2

    invoke-interface {v4}, Lcom/applovin/exoplayer2/j/g;->kD()I

    move-result v5

    if-ne v5, v6, :cond_5d

    const/4 v5, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v5, 0x0

    :goto_5e
    invoke-static {v5}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    invoke-interface {v4, v3}, Lcom/applovin/exoplayer2/j/g;->eP(I)I

    move-result v5

    if-nez v5, :cond_69

    const/4 v5, 0x1

    goto :goto_6a

    :cond_69
    const/4 v5, 0x0

    :goto_6a
    invoke-static {v5}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    invoke-interface {v4}, Lcom/applovin/exoplayer2/j/g;->nf()Lcom/applovin/exoplayer2/h/ac;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/applovin/exoplayer2/h/ad;->a(Lcom/applovin/exoplayer2/h/ac;)I

    move-result v4

    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget v5, p0, Lcom/applovin/exoplayer2/h/t;->Mi:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/applovin/exoplayer2/h/t;->Mi:I

    aput-boolean v6, v0, v4

    new-instance v5, Lcom/applovin/exoplayer2/h/t$c;

    invoke-direct {v5, p0, v4}, Lcom/applovin/exoplayer2/h/t$c;-><init>(Lcom/applovin/exoplayer2/h/t;I)V

    aput-object v5, p3, v2

    aput-boolean v6, p4, v2

    if-nez p2, :cond_a0

    iget-object p2, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    aget-object p2, p2, v4

    invoke-virtual {p2, p5, p6, v6}, Lcom/applovin/exoplayer2/h/w;->e(JZ)Z

    move-result v4

    if-nez v4, :cond_9f

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/h/w;->ly()I

    move-result p2

    if-eqz p2, :cond_9f

    const/4 p2, 0x1

    goto :goto_a0

    :cond_9f
    const/4 p2, 0x0

    :cond_a0
    :goto_a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_a3
    iget p1, p0, Lcom/applovin/exoplayer2/h/t;->Mi:I

    if-nez p1, :cond_d3

    iput-boolean v3, p0, Lcom/applovin/exoplayer2/h/t;->Ml:Z

    iput-boolean v3, p0, Lcom/applovin/exoplayer2/h/t;->Mh:Z

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/t;->LV:Lcom/applovin/exoplayer2/k/w;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/k/w;->kO()Z

    move-result p1

    if-eqz p1, :cond_c6

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length p2, p1

    :goto_b6
    if-ge v3, p2, :cond_c0

    aget-object p3, p1, v3

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/h/w;->lC()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    :cond_c0
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/t;->LV:Lcom/applovin/exoplayer2/k/w;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/k/w;->oB()V

    goto :goto_e5

    :cond_c6
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length p2, p1

    :goto_c9
    if-ge v3, p2, :cond_e5

    aget-object p3, p1, v3

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/h/w;->Y()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c9

    :cond_d3
    if-eqz p2, :cond_e5

    invoke-virtual {p0, p5, p6}, Lcom/applovin/exoplayer2/h/t;->aQ(J)J

    move-result-wide p5

    :goto_d9
    array-length p1, p3

    if-ge v3, p1, :cond_e5

    aget-object p1, p3, v3

    if-eqz p1, :cond_e2

    aput-boolean v6, p4, v3

    :cond_e2
    add-int/lit8 v3, v3, 0x1

    goto :goto_d9

    :cond_e5
    :goto_e5
    iput-boolean v6, p0, Lcom/applovin/exoplayer2/h/t;->Mg:Z

    return-wide p5
.end method

.method public a(Lcom/applovin/exoplayer2/h/t$a;JJLjava/io/IOException;I)Lcom/applovin/exoplayer2/k/w$b;
    .registers 33

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t$a;)V

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->b(Lcom/applovin/exoplayer2/h/t$a;)Lcom/applovin/exoplayer2/k/z;

    move-result-object v1

    new-instance v14, Lcom/applovin/exoplayer2/h/j;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->c(Lcom/applovin/exoplayer2/h/t$a;)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->d(Lcom/applovin/exoplayer2/h/t$a;)Lcom/applovin/exoplayer2/k/l;

    move-result-object v5

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/k/z;->oI()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/k/z;->oJ()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/k/z;->oH()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/applovin/exoplayer2/h/j;-><init>(JLcom/applovin/exoplayer2/k/l;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Lcom/applovin/exoplayer2/h/m;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->e(Lcom/applovin/exoplayer2/h/t$a;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/h;->f(J)J

    move-result-wide v21

    iget-wide v2, v0, Lcom/applovin/exoplayer2/h/t;->fH:J

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/h;->f(J)J

    move-result-wide v23

    const/16 v16, 0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v24}, Lcom/applovin/exoplayer2/h/m;-><init>(IILcom/applovin/exoplayer2/v;ILjava/lang/Object;JJ)V

    iget-object v2, v0, Lcom/applovin/exoplayer2/h/t;->sm:Lcom/applovin/exoplayer2/k/v;

    new-instance v3, Lcom/applovin/exoplayer2/k/v$a;

    move-object/from16 v13, p6

    move/from16 v4, p7

    invoke-direct {v3, v14, v1, v13, v4}, Lcom/applovin/exoplayer2/k/v$a;-><init>(Lcom/applovin/exoplayer2/h/j;Lcom/applovin/exoplayer2/h/m;Ljava/io/IOException;I)V

    invoke-interface {v2, v3}, Lcom/applovin/exoplayer2/k/v;->a(Lcom/applovin/exoplayer2/k/v$a;)J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    if-nez v6, :cond_63

    sget-object v1, Lcom/applovin/exoplayer2/k/w;->aaY:Lcom/applovin/exoplayer2/k/w$b;

    move-object/from16 v15, p1

    goto :goto_7f

    :cond_63
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/h/t;->li()I

    move-result v4

    iget v5, v0, Lcom/applovin/exoplayer2/h/t;->Mm:I

    if-le v4, v5, :cond_6f

    move-object/from16 v15, p1

    const/4 v5, 0x1

    goto :goto_72

    :cond_6f
    const/4 v5, 0x0

    move-object/from16 v15, p1

    :goto_72
    invoke-direct {v0, v15, v4}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t$a;I)Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-static {v5, v1, v2}, Lcom/applovin/exoplayer2/k/w;->c(ZJ)Lcom/applovin/exoplayer2/k/w$b;

    move-result-object v1

    goto :goto_7f

    :cond_7d
    sget-object v1, Lcom/applovin/exoplayer2/k/w;->aaX:Lcom/applovin/exoplayer2/k/w$b;

    :goto_7f
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/k/w$b;->oC()Z

    move-result v2

    xor-int/lit8 v16, v2, 0x1

    iget-object v2, v0, Lcom/applovin/exoplayer2/h/t;->fX:Lcom/applovin/exoplayer2/h/q$a;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->e(Lcom/applovin/exoplayer2/h/t$a;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/applovin/exoplayer2/h/t;->fH:J

    move-object v3, v14

    move-object/from16 v13, p6

    move/from16 v14, v16

    invoke-virtual/range {v2 .. v14}, Lcom/applovin/exoplayer2/h/q$a;->a(Lcom/applovin/exoplayer2/h/j;IILcom/applovin/exoplayer2/v;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v16, :cond_a5

    iget-object v2, v0, Lcom/applovin/exoplayer2/h/t;->sm:Lcom/applovin/exoplayer2/k/v;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->c(Lcom/applovin/exoplayer2/h/t$a;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/applovin/exoplayer2/k/v;->bm(J)V

    :cond_a5
    return-object v1
.end method

.method public bridge synthetic a(Lcom/applovin/exoplayer2/k/w$d;JJLjava/io/IOException;I)Lcom/applovin/exoplayer2/k/w$b;
    .registers 8

    check-cast p1, Lcom/applovin/exoplayer2/h/t$a;

    invoke-virtual/range {p0 .. p7}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t$a;JJLjava/io/IOException;I)Lcom/applovin/exoplayer2/k/w$b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/exoplayer2/e/v;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->jS:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/exoplayer2/h/k0;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/h/k0;-><init>(Lcom/applovin/exoplayer2/h/t;Lcom/applovin/exoplayer2/e/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/h/n$a;J)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/t;->KS:Lcom/applovin/exoplayer2/h/n$a;

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/t;->LX:Lcom/applovin/exoplayer2/l/g;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/g;->oN()Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->lh()V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/h/t$a;JJ)V
    .registers 21

    move-object v0, p0

    iget-wide v1, v0, Lcom/applovin/exoplayer2/h/t;->fH:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_2d

    iget-object v1, v0, Lcom/applovin/exoplayer2/h/t;->vI:Lcom/applovin/exoplayer2/e/v;

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Lcom/applovin/exoplayer2/e/v;->hU()Z

    move-result v1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->lj()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_21

    const-wide/16 v2, 0x0

    goto :goto_24

    :cond_21
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    :goto_24
    iput-wide v2, v0, Lcom/applovin/exoplayer2/h/t;->fH:J

    iget-object v4, v0, Lcom/applovin/exoplayer2/h/t;->LT:Lcom/applovin/exoplayer2/h/t$b;

    iget-boolean v5, v0, Lcom/applovin/exoplayer2/h/t;->iO:Z

    invoke-interface {v4, v2, v3, v1, v5}, Lcom/applovin/exoplayer2/h/t$b;->a(JZZ)V

    :cond_2d
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->b(Lcom/applovin/exoplayer2/h/t$a;)Lcom/applovin/exoplayer2/k/z;

    move-result-object v1

    new-instance v14, Lcom/applovin/exoplayer2/h/j;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->c(Lcom/applovin/exoplayer2/h/t$a;)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->d(Lcom/applovin/exoplayer2/h/t$a;)Lcom/applovin/exoplayer2/k/l;

    move-result-object v5

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/k/z;->oI()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/k/z;->oJ()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/k/z;->oH()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/applovin/exoplayer2/h/j;-><init>(JLcom/applovin/exoplayer2/k/l;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v1, v0, Lcom/applovin/exoplayer2/h/t;->sm:Lcom/applovin/exoplayer2/k/v;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->c(Lcom/applovin/exoplayer2/h/t$a;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/applovin/exoplayer2/k/v;->bm(J)V

    iget-object v2, v0, Lcom/applovin/exoplayer2/h/t;->fX:Lcom/applovin/exoplayer2/h/q$a;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->e(Lcom/applovin/exoplayer2/h/t$a;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/applovin/exoplayer2/h/t;->fH:J

    move-object v3, v14

    invoke-virtual/range {v2 .. v12}, Lcom/applovin/exoplayer2/h/q$a;->b(Lcom/applovin/exoplayer2/h/j;IILcom/applovin/exoplayer2/v;ILjava/lang/Object;JJ)V

    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t$a;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/h/t;->Mn:Z

    iget-object v1, v0, Lcom/applovin/exoplayer2/h/t;->KS:Lcom/applovin/exoplayer2/h/n$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/h/n$a;

    invoke-interface {v1, p0}, Lcom/applovin/exoplayer2/h/y$a;->a(Lcom/applovin/exoplayer2/h/y;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/h/t$a;JJZ)V
    .registers 22

    move-object v0, p0

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->b(Lcom/applovin/exoplayer2/h/t$a;)Lcom/applovin/exoplayer2/k/z;

    move-result-object v1

    new-instance v14, Lcom/applovin/exoplayer2/h/j;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->c(Lcom/applovin/exoplayer2/h/t$a;)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->d(Lcom/applovin/exoplayer2/h/t$a;)Lcom/applovin/exoplayer2/k/l;

    move-result-object v5

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/k/z;->oI()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/k/z;->oJ()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/k/z;->oH()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/applovin/exoplayer2/h/j;-><init>(JLcom/applovin/exoplayer2/k/l;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v1, v0, Lcom/applovin/exoplayer2/h/t;->sm:Lcom/applovin/exoplayer2/k/v;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->c(Lcom/applovin/exoplayer2/h/t$a;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/applovin/exoplayer2/k/v;->bm(J)V

    iget-object v2, v0, Lcom/applovin/exoplayer2/h/t;->fX:Lcom/applovin/exoplayer2/h/q$a;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/h/t$a;->e(Lcom/applovin/exoplayer2/h/t$a;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/applovin/exoplayer2/h/t;->fH:J

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v14

    invoke-virtual/range {v2 .. v12}, Lcom/applovin/exoplayer2/h/q$a;->c(Lcom/applovin/exoplayer2/h/j;IILcom/applovin/exoplayer2/v;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_5f

    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t$a;)V

    iget-object v1, v0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_46
    if-ge v3, v2, :cond_50

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/h/w;->Y()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_50
    iget v1, v0, Lcom/applovin/exoplayer2/h/t;->Mi:I

    if-lez v1, :cond_5f

    iget-object v1, v0, Lcom/applovin/exoplayer2/h/t;->KS:Lcom/applovin/exoplayer2/h/n$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/h/n$a;

    invoke-interface {v1, p0}, Lcom/applovin/exoplayer2/h/y$a;->a(Lcom/applovin/exoplayer2/h/y;)V

    :cond_5f
    return-void
.end method

.method public bridge synthetic a(Lcom/applovin/exoplayer2/k/w$d;JJ)V
    .registers 6

    check-cast p1, Lcom/applovin/exoplayer2/h/t$a;

    invoke-virtual/range {p0 .. p5}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t$a;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/applovin/exoplayer2/k/w$d;JJZ)V
    .registers 7

    check-cast p1, Lcom/applovin/exoplayer2/h/t$a;

    invoke-virtual/range {p0 .. p6}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t$a;JJZ)V

    return-void
.end method

.method public aQ(J)J
    .registers 7

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->ll()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mf:Lcom/applovin/exoplayer2/h/t$e;

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/t$e;->Mx:[Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/t;->vI:Lcom/applovin/exoplayer2/e/v;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/e/v;->hU()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const-wide/16 p1, 0x0

    :goto_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/h/t;->Mh:Z

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/t;->Mj:J

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->lk()Z

    move-result v2

    if-eqz v2, :cond_20

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/t;->Mk:J

    return-wide p1

    :cond_20
    iget v2, p0, Lcom/applovin/exoplayer2/h/t;->gn:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2c

    invoke-direct {p0, v0, p1, p2}, Lcom/applovin/exoplayer2/h/t;->a([ZJ)Z

    move-result v0

    if-eqz v0, :cond_2c

    return-wide p1

    :cond_2c
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/h/t;->Ml:Z

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/t;->Mk:J

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/h/t;->Mn:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->LV:Lcom/applovin/exoplayer2/k/w;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/k/w;->kO()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v2, v0

    :goto_3d
    if-ge v1, v2, :cond_47

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/h/w;->lC()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_47
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->LV:Lcom/applovin/exoplayer2/k/w;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/k/w;->oB()V

    goto :goto_5f

    :cond_4d
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->LV:Lcom/applovin/exoplayer2/k/w;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/k/w;->oA()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v2, v0

    :goto_55
    if-ge v1, v2, :cond_5f

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/h/w;->Y()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_5f
    :goto_5f
    return-wide p1
.end method

.method public aR(J)Z
    .registers 3

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/h/t;->Mn:Z

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/t;->LV:Lcom/applovin/exoplayer2/k/w;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/k/w;->oz()Z

    move-result p1

    if-nez p1, :cond_2c

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/h/t;->Ml:Z

    if-nez p1, :cond_2c

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/h/t;->fv:Z

    if-eqz p1, :cond_19

    iget p1, p0, Lcom/applovin/exoplayer2/h/t;->Mi:I

    if-nez p1, :cond_19

    goto :goto_2c

    :cond_19
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/t;->LX:Lcom/applovin/exoplayer2/l/g;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/g;->oN()Z

    move-result p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/h/t;->LV:Lcom/applovin/exoplayer2/k/w;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/k/w;->kO()Z

    move-result p2

    if-nez p2, :cond_2b

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->lh()V

    const/4 p1, 0x1

    :cond_2b
    return p1

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    return p1
.end method

.method public cg()J
    .registers 12

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->ll()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mf:Lcom/applovin/exoplayer2/h/t$e;

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/t$e;->Mx:[Z

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/h/t;->Mn:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_e

    return-wide v2

    :cond_e
    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->lk()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/t;->Mk:J

    return-wide v0

    :cond_17
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/h/t;->Me:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_25
    if-ge v6, v1, :cond_45

    aget-boolean v9, v0, v6

    if-eqz v9, :cond_41

    iget-object v9, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/applovin/exoplayer2/h/w;->lB()Z

    move-result v9

    if-nez v9, :cond_41

    iget-object v9, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/applovin/exoplayer2/h/w;->lj()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_44
    move-wide v7, v4

    :cond_45
    cmp-long v0, v7, v4

    if-nez v0, :cond_4d

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->lj()J

    move-result-wide v7

    :cond_4d
    cmp-long v0, v7, v2

    if-nez v0, :cond_53

    iget-wide v7, p0, Lcom/applovin/exoplayer2/h/t;->Mj:J

    :cond_53
    return-wide v7
.end method

.method public ch()J
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/h/t;->Mi:I

    if-nez v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/t;->cg()J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public cj()Lcom/applovin/exoplayer2/h/ad;
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->ll()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mf:Lcom/applovin/exoplayer2/h/t$e;

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/t$e;->Mw:Lcom/applovin/exoplayer2/h/ad;

    return-object v0
.end method

.method public d(JZ)V
    .registers 9

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->ll()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->lk()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mf:Lcom/applovin/exoplayer2/h/t$e;

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/t$e;->My:[Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_20

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/applovin/exoplayer2/h/w;->b(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_20
    return-void
.end method

.method dJ(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->le()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->Mn:Z

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/h/w;->Q(Z)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method dK(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/w;->kR()V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/t;->kR()V

    return-void
.end method

.method public ig()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->Md:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->jS:Landroid/os/Handler;

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/t;->LY:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method j(IJ)I
    .registers 6

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->le()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/t;->dL(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    aget-object v0, v0, p1

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/h/t;->Mn:Z

    invoke-virtual {v0, p2, p3, v1}, Lcom/applovin/exoplayer2/h/w;->f(JZ)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/h/w;->dP(I)V

    if-nez p2, :cond_1d

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/t;->dM(I)V

    :cond_1d
    return p2
.end method

.method public kM()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/t;->kR()V

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->Mn:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->fv:Z

    if-eqz v0, :cond_c

    goto :goto_14

    :cond_c
    const/4 v0, 0x0

    const-string v1, "Loading finished before preparation is complete."

    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    :cond_14
    :goto_14
    return-void
.end method

.method public kN()J
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->Mh:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->Mn:Z

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/t;->li()I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/h/t;->Mm:I

    if-le v0, v1, :cond_16

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->Mh:Z

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/t;->Mj:J

    return-wide v0

    :cond_16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public kO()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->LV:Lcom/applovin/exoplayer2/k/w;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/k/w;->kO()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->LX:Lcom/applovin/exoplayer2/l/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/g;->hB()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method kR()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->LV:Lcom/applovin/exoplayer2/k/w;

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/t;->sm:Lcom/applovin/exoplayer2/k/v;

    iget v2, p0, Lcom/applovin/exoplayer2/h/t;->gn:I

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/k/v;->fl(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/k/w;->dK(I)V

    return-void
.end method

.method public ld()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/h/w;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->LW:Lcom/applovin/exoplayer2/h/s;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/s;->release()V

    return-void
.end method

.method lf()Lcom/applovin/exoplayer2/e/x;
    .registers 4

    new-instance v0, Lcom/applovin/exoplayer2/h/t$d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/applovin/exoplayer2/h/t$d;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t$d;)Lcom/applovin/exoplayer2/e/x;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .registers 5

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->fv:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->Mb:[Lcom/applovin/exoplayer2/h/w;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/h/w;->lx()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->LV:Lcom/applovin/exoplayer2/k/w;

    invoke-virtual {v0, p0}, Lcom/applovin/exoplayer2/k/w;->a(Lcom/applovin/exoplayer2/k/w$e;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->jS:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/h/t;->KS:Lcom/applovin/exoplayer2/h/n$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/t;->cw:Z

    return-void
.end method

.method public t(J)V
    .registers 3

    return-void
.end method

.method public t(Lcom/applovin/exoplayer2/v;)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/t;->jS:Landroid/os/Handler;

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/t;->LY:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public y(II)Lcom/applovin/exoplayer2/e/x;
    .registers 4

    new-instance p2, Lcom/applovin/exoplayer2/h/t$d;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/applovin/exoplayer2/h/t$d;-><init>(IZ)V

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/h/t;->a(Lcom/applovin/exoplayer2/h/t$d;)Lcom/applovin/exoplayer2/e/x;

    move-result-object p1

    return-object p1
.end method
