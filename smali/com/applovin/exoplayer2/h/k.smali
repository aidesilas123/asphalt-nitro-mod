###### Class com.applovin.exoplayer2.h.k (com.applovin.exoplayer2.h.k)
.class public final Lcom/applovin/exoplayer2/h/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/h/n;
.implements Lcom/applovin/exoplayer2/h/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/h/k$a;
    }
.end annotation


# instance fields
.field private KS:Lcom/applovin/exoplayer2/h/n$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final Lt:J

.field private final Lu:Lcom/applovin/exoplayer2/k/b;

.field private Lv:Lcom/applovin/exoplayer2/h/k$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Lw:Z

.field private Lx:J

.field public final fE:Lcom/applovin/exoplayer2/h/p$a;

.field private ft:Lcom/applovin/exoplayer2/h/n;

.field private gf:Lcom/applovin/exoplayer2/h/p;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/k/b;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/k;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/k;->Lu:Lcom/applovin/exoplayer2/k/b;

    iput-wide p3, p0, Lcom/applovin/exoplayer2/h/k;->Lt:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/k;->Lx:J

    return-void
.end method

.method private aU(J)J
    .registers 8

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/k;->Lx:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    move-wide p1, v0

    :cond_c
    return-wide p1
.end method


# virtual methods
.method public a(JLcom/applovin/exoplayer2/av;)J
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/h/n;->a(JLcom/applovin/exoplayer2/av;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a([Lcom/applovin/exoplayer2/j/d;[Z[Lcom/applovin/exoplayer2/h/x;[ZJ)J
    .registers 22

    move-object v0, p0

    iget-wide v1, v0, Lcom/applovin/exoplayer2/h/k;->Lx:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_16

    iget-wide v5, v0, Lcom/applovin/exoplayer2/h/k;->Lt:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_16

    iput-wide v3, v0, Lcom/applovin/exoplayer2/h/k;->Lx:J

    move-wide v13, v1

    goto :goto_18

    :cond_16
    move-wide/from16 v13, p5

    :goto_18
    iget-object v1, v0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/applovin/exoplayer2/h/n;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-interface/range {v8 .. v14}, Lcom/applovin/exoplayer2/h/n;->a([Lcom/applovin/exoplayer2/j/d;[Z[Lcom/applovin/exoplayer2/h/x;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public a(Lcom/applovin/exoplayer2/h/n$a;J)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/k;->KS:Lcom/applovin/exoplayer2/h/n$a;

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    if-eqz p1, :cond_f

    iget-wide p2, p0, Lcom/applovin/exoplayer2/h/k;->Lt:J

    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/h/k;->aU(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lcom/applovin/exoplayer2/h/n;->a(Lcom/applovin/exoplayer2/h/n$a;J)V

    :cond_f
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/h/n;)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/k;->KS:Lcom/applovin/exoplayer2/h/n$a;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/h/n$a;

    invoke-interface {p1, p0}, Lcom/applovin/exoplayer2/h/n$a;->a(Lcom/applovin/exoplayer2/h/n;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/k;->Lv:Lcom/applovin/exoplayer2/h/k$a;

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/h/k$a;->h(Lcom/applovin/exoplayer2/h/p$a;)V

    :cond_14
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/h/p;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->gf:Lcom/applovin/exoplayer2/h/p;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/k;->gf:Lcom/applovin/exoplayer2/h/p;

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/h/y;)V
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/h/n;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/h/k;->b(Lcom/applovin/exoplayer2/h/n;)V

    return-void
.end method

.method public aQ(J)J
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/h/n;->aQ(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public aR(J)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/h/n;->aR(J)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public aT(J)V
    .registers 3

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/k;->Lx:J

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/h/n;)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/k;->KS:Lcom/applovin/exoplayer2/h/n$a;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/h/n$a;

    invoke-interface {p1, p0}, Lcom/applovin/exoplayer2/h/y$a;->a(Lcom/applovin/exoplayer2/h/y;)V

    return-void
.end method

.method public cg()J
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->cg()J

    move-result-wide v0

    return-wide v0
.end method

.method public ch()J
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->ch()J

    move-result-wide v0

    return-wide v0
.end method

.method public cj()Lcom/applovin/exoplayer2/h/ad;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->cj()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v0

    return-object v0
.end method

.method public d(JZ)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/h/n;->d(JZ)V

    return-void
.end method

.method public g(Lcom/applovin/exoplayer2/h/p$a;)V
    .registers 6

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/k;->Lt:J

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/h/k;->aU(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/k;->gf:Lcom/applovin/exoplayer2/h/p;

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/h/p;

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/k;->Lu:Lcom/applovin/exoplayer2/k/b;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/applovin/exoplayer2/h/p;->a(Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/k/b;J)Lcom/applovin/exoplayer2/h/n;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/k;->KS:Lcom/applovin/exoplayer2/h/n$a;

    if-eqz v2, :cond_1d

    invoke-interface {p1, p0, v0, v1}, Lcom/applovin/exoplayer2/h/n;->a(Lcom/applovin/exoplayer2/h/n$a;J)V

    :cond_1d
    return-void
.end method

.method public kM()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->kM()V

    goto :goto_21

    :cond_8
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->gf:Lcom/applovin/exoplayer2/h/p;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/p;->kS()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_21

    :catch_10
    move-exception v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/k;->Lv:Lcom/applovin/exoplayer2/h/k$a;

    if-eqz v1, :cond_22

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/h/k;->Lw:Z

    if-nez v2, :cond_21

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/h/k;->Lw:Z

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/k;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-interface {v1, v2, v0}, Lcom/applovin/exoplayer2/h/k$a;->a(Lcom/applovin/exoplayer2/h/p$a;Ljava/io/IOException;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    throw v0
.end method

.method public kN()J
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->kN()J

    move-result-wide v0

    return-wide v0
.end method

.method public kO()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->kO()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public kW()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/k;->Lt:J

    return-wide v0
.end method

.method public kX()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/k;->Lx:J

    return-wide v0
.end method

.method public kY()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->gf:Lcom/applovin/exoplayer2/h/p;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/p;

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/h/p;->f(Lcom/applovin/exoplayer2/h/n;)V

    :cond_11
    return-void
.end method

.method public t(J)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/k;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/h/n;->t(J)V

    return-void
.end method

###### Class com.applovin.exoplayer2.h.k.a (com.applovin.exoplayer2.h.k$a)
.class public interface abstract Lcom/applovin/exoplayer2/h/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/h/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/applovin/exoplayer2/h/p$a;Ljava/io/IOException;)V
.end method

.method public abstract h(Lcom/applovin/exoplayer2/h/p$a;)V
.end method
