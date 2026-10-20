###### Class com.applovin.exoplayer2.i.d (com.applovin.exoplayer2.i.d)
.class public abstract Lcom/applovin/exoplayer2/i/d;
.super Lcom/applovin/exoplayer2/c/j;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/i/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/c/j<",
        "Lcom/applovin/exoplayer2/i/j;",
        "Lcom/applovin/exoplayer2/i/k;",
        "Lcom/applovin/exoplayer2/i/h;",
        ">;",
        "Lcom/applovin/exoplayer2/i/g;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/applovin/exoplayer2/i/j;

    new-array v0, v0, [Lcom/applovin/exoplayer2/i/k;

    invoke-direct {p0, v1, v0}, Lcom/applovin/exoplayer2/c/j;-><init>([Lcom/applovin/exoplayer2/c/g;[Lcom/applovin/exoplayer2/c/i;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/d;->name:Ljava/lang/String;

    const/16 p1, 0x400

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/c/j;->bA(I)V

    return-void
.end method

.method public static synthetic d(Lcom/applovin/exoplayer2/i/d;Lcom/applovin/exoplayer2/c/i;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/c/j;->releaseOutputBuffer(Lcom/applovin/exoplayer2/c/i;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/applovin/exoplayer2/c/g;Lcom/applovin/exoplayer2/c/i;Z)Lcom/applovin/exoplayer2/c/f;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Lcom/applovin/exoplayer2/i/j;

    check-cast p2, Lcom/applovin/exoplayer2/i/k;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/i/d;->a(Lcom/applovin/exoplayer2/i/j;Lcom/applovin/exoplayer2/i/k;Z)Lcom/applovin/exoplayer2/i/h;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic a(Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/c/f;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/i/d;->h(Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/i/h;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/applovin/exoplayer2/i/j;Lcom/applovin/exoplayer2/i/k;Z)Lcom/applovin/exoplayer2/i/h;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p1, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/applovin/exoplayer2/i/d;->c([BIZ)Lcom/applovin/exoplayer2/i/f;

    move-result-object v5

    iget-wide v3, p1, Lcom/applovin/exoplayer2/c/g;->rJ:J

    iget-wide v6, p1, Lcom/applovin/exoplayer2/i/j;->dD:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/applovin/exoplayer2/i/k;->a(JLcom/applovin/exoplayer2/i/f;J)V

    const/high16 p1, -0x80000000

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/c/a;->bu(I)V
    :try_end_21
    .catch Lcom/applovin/exoplayer2/i/h; {:try_start_0 .. :try_end_21} :catch_23

    const/4 p1, 0x0

    return-object p1

    :catch_23
    move-exception p1

    return-object p1
.end method

.method public bd(J)V
    .registers 3

    return-void
.end method

.method protected abstract c([BIZ)Lcom/applovin/exoplayer2/i/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation
.end method

.method protected final h(Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/i/h;
    .registers 4

    new-instance v0, Lcom/applovin/exoplayer2/i/h;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/applovin/exoplayer2/i/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected synthetic ho()Lcom/applovin/exoplayer2/c/g;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/d;->lY()Lcom/applovin/exoplayer2/i/j;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic hp()Lcom/applovin/exoplayer2/c/i;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/d;->lZ()Lcom/applovin/exoplayer2/i/k;

    move-result-object v0

    return-object v0
.end method

.method protected final lY()Lcom/applovin/exoplayer2/i/j;
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/i/j;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/i/j;-><init>()V

    return-object v0
.end method

.method protected final lZ()Lcom/applovin/exoplayer2/i/k;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/i/e;

    new-instance v1, Lcom/applovin/exoplayer2/i/p;

    invoke-direct {v1, p0}, Lcom/applovin/exoplayer2/i/p;-><init>(Lcom/applovin/exoplayer2/i/d;)V

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/i/e;-><init>(Lcom/applovin/exoplayer2/c/i$a;)V

    return-object v0
.end method
