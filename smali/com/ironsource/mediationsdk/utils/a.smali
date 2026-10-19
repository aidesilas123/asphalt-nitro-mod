###### Class com.json.mediationsdk.utils.a (com.ironsource.mediationsdk.utils.a)
.class public Lcom/ironsource/mediationsdk/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Z

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/a;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/utils/a;->i:J

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/utils/a;->j:J

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/utils/a;->k:J

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/utils/a;->l:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/a;->m:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/a;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/a;->g:I

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/utils/a;->o:Z

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/utils/a;->p:Z

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/a;->q:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJJJJZIZZZIZ)V
    .registers 26

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/ironsource/mediationsdk/utils/a;->b:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/ironsource/mediationsdk/utils/a;->c:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/ironsource/mediationsdk/utils/a;->d:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lcom/ironsource/mediationsdk/utils/a;->e:I

    move v1, p5

    iput v1, v0, Lcom/ironsource/mediationsdk/utils/a;->f:I

    move-wide v1, p6

    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/a;->h:J

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/a;->a:Z

    move-wide v1, p8

    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/a;->i:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/a;->j:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/a;->k:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/a;->l:J

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/a;->m:Z

    move/from16 v1, p17

    iput v1, v0, Lcom/ironsource/mediationsdk/utils/a;->g:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ironsource/mediationsdk/utils/a;->n:Ljava/util/ArrayList;

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/a;->o:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/a;->p:Z

    move/from16 v1, p21

    iput v1, v0, Lcom/ironsource/mediationsdk/utils/a;->q:I

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/a;->r:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ironsource/mediationsdk/utils/a;->d:Ljava/lang/String;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Lcom/ironsource/mediationsdk/utils/a;->c:Ljava/lang/String;

    :goto_7
    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/a;->j:J

    return-wide v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/ironsource/mediationsdk/utils/a;->f:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/ironsource/mediationsdk/utils/a;->q:I

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/a;->m:Z

    return v0
.end method

.method public f()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/a;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/ironsource/mediationsdk/utils/a;->e:I

    return v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/a;->a:Z

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/ironsource/mediationsdk/utils/a;->g:I

    return v0
.end method

.method public j()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/a;->k:J

    return-wide v0
.end method

.method public k()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/a;->i:J

    return-wide v0
.end method

.method public l()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/a;->l:J

    return-wide v0
.end method

.method public m()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/a;->h:J

    return-wide v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/a;->o:Z

    return v0
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/a;->p:Z

    return v0
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/a;->r:Z

    return v0
.end method
