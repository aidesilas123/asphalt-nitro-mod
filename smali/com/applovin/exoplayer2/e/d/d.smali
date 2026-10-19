###### Class com.applovin.exoplayer2.e.d.d (com.applovin.exoplayer2.e.d.d)
.class public final Lcom/applovin/exoplayer2/e/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/j;


# instance fields
.field private final vG:Lcom/applovin/exoplayer2/e/j;

.field private final wE:J


# direct methods
.method public constructor <init>(JLcom/applovin/exoplayer2/e/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/d/d;->wE:J

    iput-object p3, p0, Lcom/applovin/exoplayer2/e/d/d;->vG:Lcom/applovin/exoplayer2/e/j;

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/d/d;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/d/d;->wE:J

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/e/v;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/d;->vG:Lcom/applovin/exoplayer2/e/j;

    new-instance v1, Lcom/applovin/exoplayer2/e/d/d$1;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/e/d/d$1;-><init>(Lcom/applovin/exoplayer2/e/d/d;Lcom/applovin/exoplayer2/e/v;)V

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    return-void
.end method

.method public ig()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/d;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/j;->ig()V

    return-void
.end method

.method public y(II)Lcom/applovin/exoplayer2/e/x;
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/d;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object p1

    return-object p1
.end method

###### Class com.applovin.exoplayer2.e.d.d.AnonymousClass1 (com.applovin.exoplayer2.e.d.d$1)
.class Lcom/applovin/exoplayer2/e/d/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/e/d/d;->a(Lcom/applovin/exoplayer2/e/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wF:Lcom/applovin/exoplayer2/e/v;

.field final synthetic wG:Lcom/applovin/exoplayer2/e/d/d;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/e/d/d;Lcom/applovin/exoplayer2/e/v;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/d/d$1;->wG:Lcom/applovin/exoplayer2/e/d/d;

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/d/d$1;->wF:Lcom/applovin/exoplayer2/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ai(J)Lcom/applovin/exoplayer2/e/v$a;
    .registers 11

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/d$1;->wF:Lcom/applovin/exoplayer2/e/v;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/e/v;->ai(J)Lcom/applovin/exoplayer2/e/v$a;

    move-result-object p1

    new-instance p2, Lcom/applovin/exoplayer2/e/v$a;

    new-instance v0, Lcom/applovin/exoplayer2/e/w;

    iget-object v1, p1, Lcom/applovin/exoplayer2/e/v$a;->uQ:Lcom/applovin/exoplayer2/e/w;

    iget-wide v2, v1, Lcom/applovin/exoplayer2/e/w;->rJ:J

    iget-wide v4, v1, Lcom/applovin/exoplayer2/e/w;->uc:J

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/d/d$1;->wG:Lcom/applovin/exoplayer2/e/d/d;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/d/d;->a(Lcom/applovin/exoplayer2/e/d/d;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/applovin/exoplayer2/e/w;-><init>(JJ)V

    new-instance v1, Lcom/applovin/exoplayer2/e/w;

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/v$a;->uR:Lcom/applovin/exoplayer2/e/w;

    iget-wide v2, p1, Lcom/applovin/exoplayer2/e/w;->rJ:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/e/w;->uc:J

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/d/d$1;->wG:Lcom/applovin/exoplayer2/e/d/d;

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/d/d;->a(Lcom/applovin/exoplayer2/e/d/d;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/applovin/exoplayer2/e/w;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;Lcom/applovin/exoplayer2/e/w;)V

    return-object p2
.end method

.method public dd()J
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/d$1;->wF:Lcom/applovin/exoplayer2/e/v;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/v;->dd()J

    move-result-wide v0

    return-wide v0
.end method

.method public hU()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/d/d$1;->wF:Lcom/applovin/exoplayer2/e/v;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/v;->hU()Z

    move-result v0

    return v0
.end method
