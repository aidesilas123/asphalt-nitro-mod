###### Class com.applovin.exoplayer2.b.n.g (com.applovin.exoplayer2.b.n$g)
.class final Lcom/applovin/exoplayer2/b/n$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/b/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field final synthetic lR:Lcom/applovin/exoplayer2/b/n;


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/b/n;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n$g;->lR:Lcom/applovin/exoplayer2/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/b/n;Lcom/applovin/exoplayer2/b/n$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/b/n$g;-><init>(Lcom/applovin/exoplayer2/b/n;)V

    return-void
.end method


# virtual methods
.method public E(J)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n$g;->lR:Lcom/applovin/exoplayer2/b/n;

    invoke-static {v0}, Lcom/applovin/exoplayer2/b/n;->c(Lcom/applovin/exoplayer2/b/n;)Lcom/applovin/exoplayer2/b/h$c;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n$g;->lR:Lcom/applovin/exoplayer2/b/n;

    invoke-static {v0}, Lcom/applovin/exoplayer2/b/n;->c(Lcom/applovin/exoplayer2/b/n;)Lcom/applovin/exoplayer2/b/h$c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/b/h$c;->E(J)V

    :cond_11
    return-void
.end method

.method public P(J)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultAudioSink"

    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(JJJJ)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/exoplayer2/b/n$g;->lR:Lcom/applovin/exoplayer2/b/n;

    invoke-static {p2}, Lcom/applovin/exoplayer2/b/n;->e(Lcom/applovin/exoplayer2/b/n;)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/n$g;->lR:Lcom/applovin/exoplayer2/b/n;

    invoke-static {p1}, Lcom/applovin/exoplayer2/b/n;->f(Lcom/applovin/exoplayer2/b/n;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/applovin/exoplayer2/b/n;->kX:Z

    if-nez p2, :cond_47

    const-string p2, "DefaultAudioSink"

    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    new-instance p2, Lcom/applovin/exoplayer2/b/n$d;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/applovin/exoplayer2/b/n$d;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/b/n$1;)V

    throw p2
.end method

.method public b(JJJJ)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/exoplayer2/b/n$g;->lR:Lcom/applovin/exoplayer2/b/n;

    invoke-static {p2}, Lcom/applovin/exoplayer2/b/n;->e(Lcom/applovin/exoplayer2/b/n;)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/n$g;->lR:Lcom/applovin/exoplayer2/b/n;

    invoke-static {p1}, Lcom/applovin/exoplayer2/b/n;->f(Lcom/applovin/exoplayer2/b/n;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/applovin/exoplayer2/b/n;->kX:Z

    if-nez p2, :cond_47

    const-string p2, "DefaultAudioSink"

    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    new-instance p2, Lcom/applovin/exoplayer2/b/n$d;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/applovin/exoplayer2/b/n$d;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/b/n$1;)V

    throw p2
.end method

.method public c(IJ)V
    .registers 14

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n$g;->lR:Lcom/applovin/exoplayer2/b/n;

    invoke-static {v0}, Lcom/applovin/exoplayer2/b/n;->c(Lcom/applovin/exoplayer2/b/n;)Lcom/applovin/exoplayer2/b/h$c;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/b/n$g;->lR:Lcom/applovin/exoplayer2/b/n;

    invoke-static {v2}, Lcom/applovin/exoplayer2/b/n;->g(Lcom/applovin/exoplayer2/b/n;)J

    move-result-wide v2

    sub-long v8, v0, v2

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n$g;->lR:Lcom/applovin/exoplayer2/b/n;

    invoke-static {v0}, Lcom/applovin/exoplayer2/b/n;->c(Lcom/applovin/exoplayer2/b/n;)Lcom/applovin/exoplayer2/b/h$c;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    invoke-interface/range {v4 .. v9}, Lcom/applovin/exoplayer2/b/h$c;->e(IJJ)V

    :cond_1f
    return-void
.end method
