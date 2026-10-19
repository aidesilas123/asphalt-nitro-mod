###### Class com.applovin.exoplayer2.e.h.b (com.applovin.exoplayer2.e.h.b)
.class final Lcom/applovin/exoplayer2/e/h/b;
.super Lcom/applovin/exoplayer2/e/h/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/h/b$a;
    }
.end annotation


# instance fields
.field private BD:Lcom/applovin/exoplayer2/e/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private BE:Lcom/applovin/exoplayer2/e/h/b$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/h/h;-><init>()V

    return-void
.end method

.method private static A([B)Z
    .registers 3

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public static F(Lcom/applovin/exoplayer2/l/y;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long p0, v0, v2

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private H(Lcom/applovin/exoplayer2/l/y;)I
    .registers 5

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    shr-int/2addr v0, v1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_11

    const/4 v2, 0x7

    if-ne v0, v2, :cond_17

    :cond_11
    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pK()J

    :cond_17
    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/e/m;->a(Lcom/applovin/exoplayer2/l/y;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    return v0
.end method


# virtual methods
.method protected G(Lcom/applovin/exoplayer2/l/y;)J
    .registers 4

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/h/b;->A([B)Z

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_d
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/h/b;->H(Lcom/applovin/exoplayer2/l/y;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method protected a(Lcom/applovin/exoplayer2/l/y;JLcom/applovin/exoplayer2/e/h/h$a;)Z
    .registers 11

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/h/b;->BD:Lcom/applovin/exoplayer2/e/p;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    new-instance p2, Lcom/applovin/exoplayer2/e/p;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lcom/applovin/exoplayer2/e/p;-><init>([BI)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/h/b;->BD:Lcom/applovin/exoplayer2/e/p;

    const/16 p3, 0x9

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result p1

    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/applovin/exoplayer2/e/p;->a([BLcom/applovin/exoplayer2/g/a;)Lcom/applovin/exoplayer2/v;

    move-result-object p1

    iput-object p1, p4, Lcom/applovin/exoplayer2/e/h/h$a;->dU:Lcom/applovin/exoplayer2/v;

    return v2

    :cond_24
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    and-int/lit8 v4, v4, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3e

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/n;->b(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/e/p$a;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/applovin/exoplayer2/e/p;->a(Lcom/applovin/exoplayer2/e/p$a;)Lcom/applovin/exoplayer2/e/p;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/h/b;->BD:Lcom/applovin/exoplayer2/e/p;

    new-instance p3, Lcom/applovin/exoplayer2/e/h/b$a;

    invoke-direct {p3, p2, p1}, Lcom/applovin/exoplayer2/e/h/b$a;-><init>(Lcom/applovin/exoplayer2/e/p;Lcom/applovin/exoplayer2/e/p$a;)V

    iput-object p3, p0, Lcom/applovin/exoplayer2/e/h/b;->BE:Lcom/applovin/exoplayer2/e/h/b$a;

    return v2

    :cond_3e
    invoke-static {v0}, Lcom/applovin/exoplayer2/e/h/b;->A([B)Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/h/b;->BE:Lcom/applovin/exoplayer2/e/h/b$a;

    if-eqz p1, :cond_4f

    invoke-virtual {p1, p2, p3}, Lcom/applovin/exoplayer2/e/h/b$a;->aD(J)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/h/b;->BE:Lcom/applovin/exoplayer2/e/h/b$a;

    iput-object p1, p4, Lcom/applovin/exoplayer2/e/h/h$a;->BZ:Lcom/applovin/exoplayer2/e/h/f;

    :cond_4f
    iget-object p1, p4, Lcom/applovin/exoplayer2/e/h/h$a;->dU:Lcom/applovin/exoplayer2/v;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_55
    return v2
.end method

.method protected e(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/e/h/h;->e(Z)V

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/b;->BD:Lcom/applovin/exoplayer2/e/p;

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/b;->BE:Lcom/applovin/exoplayer2/e/h/b$a;

    :cond_a
    return-void
.end method

###### Class com.applovin.exoplayer2.e.h.b.a (com.applovin.exoplayer2.e.h.b$a)
.class final Lcom/applovin/exoplayer2/e/h/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private BD:Lcom/applovin/exoplayer2/e/p;

.field private BF:J

.field private uA:J

.field private uJ:Lcom/applovin/exoplayer2/e/p$a;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/p;Lcom/applovin/exoplayer2/e/p$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/b$a;->BD:Lcom/applovin/exoplayer2/e/p;

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/h/b$a;->uJ:Lcom/applovin/exoplayer2/e/p$a;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/h/b$a;->uA:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/h/b$a;->BF:J

    return-void
.end method


# virtual methods
.method public N(Lcom/applovin/exoplayer2/e/i;)J
    .registers 8

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/h/b$a;->BF:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_11

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/h/b$a;->BF:J

    return-wide v0

    :cond_11
    return-wide v2
.end method

.method public aC(J)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/b$a;->uJ:Lcom/applovin/exoplayer2/e/p$a;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/p$a;->uK:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/applovin/exoplayer2/l/ai;->a([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/h/b$a;->BF:J

    return-void
.end method

.method public aD(J)V
    .registers 3

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/h/b$a;->uA:J

    return-void
.end method

.method public iX()Lcom/applovin/exoplayer2/e/v;
    .registers 6

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/h/b$a;->uA:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    new-instance v0, Lcom/applovin/exoplayer2/e/o;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/h/b$a;->BD:Lcom/applovin/exoplayer2/e/p;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/h/b$a;->uA:J

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/e/o;-><init>(Lcom/applovin/exoplayer2/e/p;J)V

    return-object v0
.end method
