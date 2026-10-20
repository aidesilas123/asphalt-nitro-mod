###### Class com.applovin.exoplayer2.h.d.a (com.applovin.exoplayer2.h.d$a)
.class final Lcom/applovin/exoplayer2/h/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/h/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field public final KX:Lcom/applovin/exoplayer2/h/x;

.field private KY:Z

.field final synthetic KZ:Lcom/applovin/exoplayer2/h/d;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/h/d;Lcom/applovin/exoplayer2/h/x;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/d$a;->KZ:Lcom/applovin/exoplayer2/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/d$a;->KX:Lcom/applovin/exoplayer2/h/x;

    return-void
.end method


# virtual methods
.method public aS(J)I
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KZ:Lcom/applovin/exoplayer2/h/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/d;->kP()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, -0x3

    return p1

    :cond_a
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KX:Lcom/applovin/exoplayer2/h/x;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/h/x;->aS(J)I

    move-result p1

    return p1
.end method

.method public b(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I
    .registers 14

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KZ:Lcom/applovin/exoplayer2/h/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/d;->kP()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KY:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_14

    invoke-virtual {p2, v2}, Lcom/applovin/exoplayer2/c/a;->bs(I)V

    return v3

    :cond_14
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KX:Lcom/applovin/exoplayer2/h/x;

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/h/x;->b(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_57

    iget-object p2, p1, Lcom/applovin/exoplayer2/w;->dU:Lcom/applovin/exoplayer2/v;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/v;

    iget p3, p2, Lcom/applovin/exoplayer2/v;->dO:I

    if-nez p3, :cond_2f

    iget v1, p2, Lcom/applovin/exoplayer2/v;->dP:I

    if-eqz v1, :cond_56

    :cond_2f
    iget-object v1, p0, Lcom/applovin/exoplayer2/h/d$a;->KZ:Lcom/applovin/exoplayer2/h/d;

    iget-wide v2, v1, Lcom/applovin/exoplayer2/h/d;->KV:J

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    cmp-long v9, v2, v6

    if-eqz v9, :cond_3b

    const/4 p3, 0x0

    :cond_3b
    iget-wide v1, v1, Lcom/applovin/exoplayer2/h/d;->KW:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_42

    goto :goto_44

    :cond_42
    iget v8, p2, Lcom/applovin/exoplayer2/v;->dP:I

    :goto_44
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/v;->bR()Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/applovin/exoplayer2/v$a;->Q(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2, v8}, Lcom/applovin/exoplayer2/v$a;->R(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p2

    iput-object p2, p1, Lcom/applovin/exoplayer2/w;->dU:Lcom/applovin/exoplayer2/v;

    :cond_56
    return v0

    :cond_57
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/d$a;->KZ:Lcom/applovin/exoplayer2/h/d;

    iget-wide v6, p1, Lcom/applovin/exoplayer2/h/d;->KW:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_7f

    if-ne p3, v3, :cond_67

    iget-wide v8, p2, Lcom/applovin/exoplayer2/c/g;->rJ:J

    cmp-long v0, v8, v6

    if-gez v0, :cond_75

    :cond_67
    if-ne p3, v1, :cond_7f

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/d;->cg()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_7f

    iget-boolean p1, p2, Lcom/applovin/exoplayer2/c/g;->rI:Z

    if-nez p1, :cond_7f

    :cond_75
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/c/g;->clear()V

    invoke-virtual {p2, v2}, Lcom/applovin/exoplayer2/c/a;->bs(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/d$a;->KY:Z

    return v3

    :cond_7f
    return p3
.end method

.method public isReady()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KZ:Lcom/applovin/exoplayer2/h/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/d;->kP()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KX:Lcom/applovin/exoplayer2/h/x;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/x;->isReady()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public kQ()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KY:Z

    return-void
.end method

.method public kR()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KX:Lcom/applovin/exoplayer2/h/x;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/x;->kR()V

    return-void
.end method
