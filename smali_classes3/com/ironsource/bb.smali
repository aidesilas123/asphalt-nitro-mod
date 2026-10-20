###### Class com.json.bb (com.ironsource.bb)
.class public Lcom/ironsource/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/mediationsdk/model/Placement;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/ironsource/m0;

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/ironsource/mediationsdk/model/Placement;

.field private o:Lcom/ironsource/mediationsdk/utils/a;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/bb;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/ironsource/m0;

    invoke-direct {v0}, Lcom/ironsource/m0;-><init>()V

    iput-object v0, p0, Lcom/ironsource/bb;->b:Lcom/ironsource/m0;

    return-void
.end method

.method public constructor <init>(IZIILcom/ironsource/m0;Lcom/ironsource/mediationsdk/utils/a;IZZJZZZZ)V
    .registers 19

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ironsource/bb;->a:Ljava/util/ArrayList;

    move v1, p1

    iput v1, v0, Lcom/ironsource/bb;->c:I

    move v1, p2

    iput-boolean v1, v0, Lcom/ironsource/bb;->d:Z

    move v1, p3

    iput v1, v0, Lcom/ironsource/bb;->e:I

    move-object v1, p5

    iput-object v1, v0, Lcom/ironsource/bb;->b:Lcom/ironsource/m0;

    move v1, p4

    iput v1, v0, Lcom/ironsource/bb;->f:I

    move-object v1, p6

    iput-object v1, v0, Lcom/ironsource/bb;->o:Lcom/ironsource/mediationsdk/utils/a;

    move v1, p7

    iput v1, v0, Lcom/ironsource/bb;->g:I

    move v1, p8

    iput-boolean v1, v0, Lcom/ironsource/bb;->p:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/ironsource/bb;->h:Z

    move-wide v1, p10

    iput-wide v1, v0, Lcom/ironsource/bb;->i:J

    move v1, p12

    iput-boolean v1, v0, Lcom/ironsource/bb;->j:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/ironsource/bb;->k:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/ironsource/bb;->l:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/ironsource/bb;->m:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/mediationsdk/model/Placement;
    .registers 4

    iget-object v0, p0, Lcom/ironsource/bb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_19
    iget-object v0, p0, Lcom/ironsource/bb;->n:Lcom/ironsource/mediationsdk/model/Placement;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .registers 5

    iget-object v0, p0, Lcom/ironsource/bb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 3

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/ironsource/bb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/bb;->n:Lcom/ironsource/mediationsdk/model/Placement;

    if-nez v0, :cond_c

    goto :goto_13

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/model/BasePlacement;->isPlacementId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_13
    iput-object p1, p0, Lcom/ironsource/bb;->n:Lcom/ironsource/mediationsdk/model/Placement;

    :cond_15
    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/ironsource/bb;->g:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/ironsource/bb;->f:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/bb;->p:Z

    return v0
.end method

.method public e()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/mediationsdk/model/Placement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/bb;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/bb;->j:Z

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/ironsource/bb;->c:I

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/ironsource/bb;->e:I

    return v0
.end method

.method public i()J
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/ironsource/bb;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/bb;->d:Z

    return v0
.end method

.method public k()Lcom/ironsource/mediationsdk/utils/a;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/bb;->o:Lcom/ironsource/mediationsdk/utils/a;

    return-object v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/bb;->h:Z

    return v0
.end method

.method public m()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/bb;->i:J

    return-wide v0
.end method

.method public n()Lcom/ironsource/m0;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/bb;->b:Lcom/ironsource/m0;

    return-object v0
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/bb;->m:Z

    return v0
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/bb;->l:Z

    return v0
.end method

.method public q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/bb;->k:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardedVideoConfigurations{parallelLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ironsource/bb;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bidderExclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/bb;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
