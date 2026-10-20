###### Class com.json.k1 (com.ironsource.k1)
.class public Lcom/ironsource/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/m0;

.field private b:I

.field private c:J

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/m1;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/ironsource/m1;

.field private g:I

.field private h:I

.field private i:Lcom/ironsource/mediationsdk/utils/a;

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/m0;

    invoke-direct {v0}, Lcom/ironsource/m0;-><init>()V

    iput-object v0, p0, Lcom/ironsource/k1;->a:Lcom/ironsource/m0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/k1;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(IJZLcom/ironsource/m0;ILcom/ironsource/mediationsdk/utils/a;IZZJZZZZ)V
    .registers 20

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ironsource/k1;->e:Ljava/util/ArrayList;

    move v1, p1

    iput v1, v0, Lcom/ironsource/k1;->b:I

    move-wide v1, p2

    iput-wide v1, v0, Lcom/ironsource/k1;->c:J

    move v1, p4

    iput-boolean v1, v0, Lcom/ironsource/k1;->d:Z

    move-object v1, p5

    iput-object v1, v0, Lcom/ironsource/k1;->a:Lcom/ironsource/m0;

    move v1, p6

    iput v1, v0, Lcom/ironsource/k1;->g:I

    move v1, p8

    iput v1, v0, Lcom/ironsource/k1;->h:I

    move-object v1, p7

    iput-object v1, v0, Lcom/ironsource/k1;->i:Lcom/ironsource/mediationsdk/utils/a;

    move v1, p9

    iput-boolean v1, v0, Lcom/ironsource/k1;->j:Z

    move v1, p10

    iput-boolean v1, v0, Lcom/ironsource/k1;->k:Z

    move-wide v1, p11

    iput-wide v1, v0, Lcom/ironsource/k1;->l:J

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/ironsource/k1;->m:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/ironsource/k1;->n:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/ironsource/k1;->o:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/ironsource/k1;->p:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/ironsource/k1;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/ironsource/m1;
    .registers 5

    iget-object v0, p0, Lcom/ironsource/k1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/m1;

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

.method public a(Lcom/ironsource/m1;)V
    .registers 3

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/ironsource/k1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/k1;->f:Lcom/ironsource/m1;

    if-nez v0, :cond_c

    goto :goto_13

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/model/BasePlacement;->isPlacementId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_13
    iput-object p1, p0, Lcom/ironsource/k1;->f:Lcom/ironsource/m1;

    :cond_15
    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/k1;->c:J

    return-wide v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/k1;->d:Z

    return v0
.end method

.method public d()Lcom/ironsource/mediationsdk/utils/a;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/k1;->i:Lcom/ironsource/mediationsdk/utils/a;

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/k1;->k:Z

    return v0
.end method

.method public f()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/k1;->l:J

    return-wide v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/ironsource/k1;->h:I

    return v0
.end method

.method public h()Lcom/ironsource/m0;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/k1;->a:Lcom/ironsource/m0;

    return-object v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/ironsource/k1;->g:I

    return v0
.end method

.method public j()Lcom/ironsource/m1;
    .registers 4

    iget-object v0, p0, Lcom/ironsource/k1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/m1;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_19
    iget-object v0, p0, Lcom/ironsource/k1;->f:Lcom/ironsource/m1;

    return-object v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/k1;->j:Z

    return v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/k1;->m:Z

    return v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/k1;->p:Z

    return v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/k1;->o:Z

    return v0
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/k1;->n:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BannerConfigurations{parallelLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ironsource/k1;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bidderExclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/k1;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
