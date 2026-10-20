###### Class com.applovin.exoplayer2.m.a.h (com.applovin.exoplayer2.m.a.h)
.class final Lcom/applovin/exoplayer2/m/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/m/a/a;
.implements Lcom/applovin/exoplayer2/m/l;


# instance fields
.field private final afL:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final afM:Lcom/applovin/exoplayer2/m/a/c;

.field private final afN:Lcom/applovin/exoplayer2/l/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/l/af<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final afO:Lcom/applovin/exoplayer2/l/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/l/af<",
            "Lcom/applovin/exoplayer2/m/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private volatile afP:I

.field private afQ:I

.field private afR:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private a([BIJ)V
    .registers 7
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/h;->afR:[B

    iget v1, p0, Lcom/applovin/exoplayer2/m/a/h;->afQ:I

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/a/h;->afR:[B

    const/4 p1, -0x1

    if-ne p2, p1, :cond_b

    iget p2, p0, Lcom/applovin/exoplayer2/m/a/h;->afP:I

    :cond_b
    iput p2, p0, Lcom/applovin/exoplayer2/m/a/h;->afQ:I

    if-ne v1, p2, :cond_18

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/a/h;->afR:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_18

    return-void

    :cond_18
    const/4 p1, 0x0

    iget-object p2, p0, Lcom/applovin/exoplayer2/m/a/h;->afR:[B

    if-eqz p2, :cond_23

    iget p1, p0, Lcom/applovin/exoplayer2/m/a/h;->afQ:I

    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/m/a/f;->m([BI)Lcom/applovin/exoplayer2/m/a/e;

    move-result-object p1

    :cond_23
    if-eqz p1, :cond_2c

    invoke-static {p1}, Lcom/applovin/exoplayer2/m/a/g;->a(Lcom/applovin/exoplayer2/m/a/e;)Z

    move-result p2

    if-eqz p2, :cond_2c

    goto :goto_32

    :cond_2c
    iget p1, p0, Lcom/applovin/exoplayer2/m/a/h;->afQ:I

    invoke-static {p1}, Lcom/applovin/exoplayer2/m/a/e;->fT(I)Lcom/applovin/exoplayer2/m/a/e;

    move-result-object p1

    :goto_32
    iget-object p2, p0, Lcom/applovin/exoplayer2/m/a/h;->afO:Lcom/applovin/exoplayer2/l/af;

    invoke-virtual {p2, p3, p4, p1}, Lcom/applovin/exoplayer2/l/af;->a(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(JJLcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V
    .registers 7
    .param p6    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p6, p0, Lcom/applovin/exoplayer2/m/a/h;->afN:Lcom/applovin/exoplayer2/l/af;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p6, p3, p4, p1}, Lcom/applovin/exoplayer2/l/af;->a(JLjava/lang/Object;)V

    iget-object p1, p5, Lcom/applovin/exoplayer2/v;->dI:[B

    iget p2, p5, Lcom/applovin/exoplayer2/v;->dJ:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/m/a/h;->a([BIJ)V

    return-void
.end method

.method public a(J[F)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/h;->afM:Lcom/applovin/exoplayer2/m/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/m/a/c;->b(J[F)V

    return-void
.end method

.method public cZ()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/h;->afN:Lcom/applovin/exoplayer2/l/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/af;->clear()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/h;->afM:Lcom/applovin/exoplayer2/m/a/c;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/a/c;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/h;->afL:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setDefaultStereoMode(I)V
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/m/a/h;->afP:I

    return-void
.end method
