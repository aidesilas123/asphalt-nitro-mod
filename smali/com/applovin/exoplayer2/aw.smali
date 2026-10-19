###### Class com.applovin.exoplayer2.aw (com.applovin.exoplayer2.aw)
.class public Lcom/applovin/exoplayer2/aw;
.super Lcom/applovin/exoplayer2/d;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/aw$c;,
        Lcom/applovin/exoplayer2/aw$b;,
        Lcom/applovin/exoplayer2/aw$a;
    }
.end annotation


# instance fields
.field private N:Lcom/applovin/exoplayer2/b/d;

.field protected final bB:[Lcom/applovin/exoplayer2/ar;

.field private final bM:Lcom/applovin/exoplayer2/a/a;

.field private final hA:Lcom/applovin/exoplayer2/bc;

.field private final hB:J

.field private hC:Lcom/applovin/exoplayer2/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hD:Lcom/applovin/exoplayer2/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hE:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hF:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hG:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hH:Landroid/view/SurfaceHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hI:Lcom/applovin/exoplayer2/m/a/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hJ:Z

.field private hK:Landroid/view/TextureView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hL:I

.field private hM:I

.field private hN:I

.field private hO:I

.field private hP:Lcom/applovin/exoplayer2/c/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hQ:Lcom/applovin/exoplayer2/c/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hR:I

.field private hS:F

.field private hT:Z

.field private hU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private hV:Z

.field private hW:Z

.field private hX:Lcom/applovin/exoplayer2/l/aa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hY:Z

.field private hZ:Z

.field private final hq:Lcom/applovin/exoplayer2/l/g;

.field private final hr:Landroid/content/Context;

.field private final hs:Lcom/applovin/exoplayer2/r;

.field private final ht:Lcom/applovin/exoplayer2/aw$b;

.field private final hu:Lcom/applovin/exoplayer2/aw$c;

.field private final hv:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/applovin/exoplayer2/an$d;",
            ">;"
        }
    .end annotation
.end field

.field private final hw:Lcom/applovin/exoplayer2/b;

.field private final hx:Lcom/applovin/exoplayer2/c;

.field private final hy:Lcom/applovin/exoplayer2/ay;

.field private final hz:Lcom/applovin/exoplayer2/bb;

.field private ia:Lcom/applovin/exoplayer2/o;

.field private ib:Lcom/applovin/exoplayer2/m/o;


# direct methods
.method protected constructor <init>(Lcom/applovin/exoplayer2/aw$a;)V
    .registers 39

    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/d;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/l/g;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/l/g;-><init>()V

    iput-object v0, v15, Lcom/applovin/exoplayer2/aw;->hq:Lcom/applovin/exoplayer2/l/g;

    :try_start_c
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->a(Lcom/applovin/exoplayer2/aw$a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v15, Lcom/applovin/exoplayer2/aw;->hr:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->b(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v7

    iput-object v7, v15, Lcom/applovin/exoplayer2/aw;->bM:Lcom/applovin/exoplayer2/a/a;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->c(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/l/aa;

    move-result-object v2

    iput-object v2, v15, Lcom/applovin/exoplayer2/aw;->hX:Lcom/applovin/exoplayer2/l/aa;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->d(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/b/d;

    move-result-object v2

    iput-object v2, v15, Lcom/applovin/exoplayer2/aw;->N:Lcom/applovin/exoplayer2/b/d;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->e(Lcom/applovin/exoplayer2/aw$a;)I

    move-result v2

    iput v2, v15, Lcom/applovin/exoplayer2/aw;->hL:I

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->f(Lcom/applovin/exoplayer2/aw$a;)I

    move-result v2

    iput v2, v15, Lcom/applovin/exoplayer2/aw;->hM:I

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->g(Lcom/applovin/exoplayer2/aw$a;)Z

    move-result v2

    iput-boolean v2, v15, Lcom/applovin/exoplayer2/aw;->hT:Z

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->h(Lcom/applovin/exoplayer2/aw$a;)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/applovin/exoplayer2/aw;->hB:J

    new-instance v14, Lcom/applovin/exoplayer2/aw$b;

    const/4 v6, 0x0

    invoke-direct {v14, v15, v6}, Lcom/applovin/exoplayer2/aw$b;-><init>(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/aw$1;)V

    iput-object v14, v15, Lcom/applovin/exoplayer2/aw;->ht:Lcom/applovin/exoplayer2/aw$b;

    new-instance v5, Lcom/applovin/exoplayer2/aw$c;

    invoke-direct {v5, v6}, Lcom/applovin/exoplayer2/aw$c;-><init>(Lcom/applovin/exoplayer2/aw$1;)V

    iput-object v5, v15, Lcom/applovin/exoplayer2/aw;->hu:Lcom/applovin/exoplayer2/aw$c;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/applovin/exoplayer2/aw;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v4, Landroid/os/Handler;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->i(Lcom/applovin/exoplayer2/aw$a;)Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->j(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/au;

    move-result-object v8

    move-object v9, v4

    move-object v10, v14

    move-object v11, v14

    move-object v12, v14

    move-object v13, v14

    invoke-interface/range {v8 .. v13}, Lcom/applovin/exoplayer2/au;->a(Landroid/os/Handler;Lcom/applovin/exoplayer2/m/n;Lcom/applovin/exoplayer2/b/g;Lcom/applovin/exoplayer2/i/l;Lcom/applovin/exoplayer2/g/e;)[Lcom/applovin/exoplayer2/ar;

    move-result-object v2

    iput-object v2, v15, Lcom/applovin/exoplayer2/aw;->bB:[Lcom/applovin/exoplayer2/ar;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v15, Lcom/applovin/exoplayer2/aw;->hS:F

    sget v3, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v8, 0x15

    const/4 v12, 0x0

    if-ge v3, v8, :cond_80

    invoke-direct {v15, v12}, Lcom/applovin/exoplayer2/aw;->ah(I)I

    move-result v1

    iput v1, v15, Lcom/applovin/exoplayer2/aw;->hR:I

    goto :goto_86

    :cond_80
    invoke-static {v1}, Lcom/applovin/exoplayer2/h;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, v15, Lcom/applovin/exoplayer2/aw;->hR:I

    :goto_86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v15, Lcom/applovin/exoplayer2/aw;->hU:Ljava/util/List;

    const/4 v13, 0x1

    iput-boolean v13, v15, Lcom/applovin/exoplayer2/aw;->hV:Z

    new-instance v1, Lcom/applovin/exoplayer2/an$a$a;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/an$a$a;-><init>()V

    const/16 v10, 0x8

    new-array v3, v10, [I

    const/16 v9, 0x14

    aput v9, v3, v12

    aput v8, v3, v13

    const/16 v8, 0x16

    const/4 v11, 0x2

    aput v8, v3, v11

    const/16 v8, 0x17

    const/4 v9, 0x3

    aput v8, v3, v9

    const/16 v8, 0x18

    move-object/from16 v22, v0

    const/4 v0, 0x4

    aput v8, v3, v0

    const/16 v8, 0x19

    const/4 v0, 0x5

    aput v8, v3, v0

    const/16 v8, 0x1a

    const/4 v0, 0x6

    aput v8, v3, v0

    const/16 v8, 0x1b

    const/4 v0, 0x7

    aput v8, v3, v0

    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/an$a$a;->a([I)Lcom/applovin/exoplayer2/an$a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/an$a$a;->cC()Lcom/applovin/exoplayer2/an$a;

    move-result-object v21

    new-instance v8, Lcom/applovin/exoplayer2/r;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->k(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/j/j;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->l(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/h/r;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->m(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/aa;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->n(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/k/d;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->o(Lcom/applovin/exoplayer2/aw$a;)Z

    move-result v19

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->p(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/av;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->q(Lcom/applovin/exoplayer2/aw$a;)J

    move-result-wide v23

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->r(Lcom/applovin/exoplayer2/aw$a;)J

    move-result-wide v25

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->s(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/z;

    move-result-object v27

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->t(Lcom/applovin/exoplayer2/aw$a;)J

    move-result-wide v28

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->u(Lcom/applovin/exoplayer2/aw$a;)Z

    move-result v30

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->v(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/l/d;

    move-result-object v31

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->i(Lcom/applovin/exoplayer2/aw$a;)Landroid/os/Looper;

    move-result-object v32
    :try_end_fc
    .catchall {:try_start_c .. :try_end_fc} :catchall_20f

    move-object v1, v8

    move-object v0, v4

    move-object/from16 v4, v16

    move-object/from16 v33, v5

    move-object/from16 v5, v17

    move-object/from16 v34, v6

    move-object/from16 v6, v18

    move-object/from16 v35, v0

    move-object v0, v8

    move/from16 v8, v19

    move-object/from16 v9, v20

    move-wide/from16 v10, v23

    const/16 v23, 0x0

    move-wide/from16 v12, v25

    move-object/from16 v36, v14

    move-object/from16 v14, v27

    move-wide/from16 v15, v28

    move/from16 v17, v30

    move-object/from16 v18, v31

    move-object/from16 v19, v32

    move-object/from16 v20, p0

    :try_start_123
    invoke-direct/range {v1 .. v21}, Lcom/applovin/exoplayer2/r;-><init>([Lcom/applovin/exoplayer2/ar;Lcom/applovin/exoplayer2/j/j;Lcom/applovin/exoplayer2/h/r;Lcom/applovin/exoplayer2/aa;Lcom/applovin/exoplayer2/k/d;Lcom/applovin/exoplayer2/a/a;ZLcom/applovin/exoplayer2/av;JJLcom/applovin/exoplayer2/z;JZLcom/applovin/exoplayer2/l/d;Landroid/os/Looper;Lcom/applovin/exoplayer2/an;Lcom/applovin/exoplayer2/an$a;)V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_20b

    move-object/from16 v1, p0

    :try_start_128
    iput-object v0, v1, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    move-object/from16 v2, v36

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/an$b;)V

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/q$a;)V

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->w(Lcom/applovin/exoplayer2/aw$a;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_143

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->w(Lcom/applovin/exoplayer2/aw$a;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/applovin/exoplayer2/r;->j(J)V

    :cond_143
    new-instance v0, Lcom/applovin/exoplayer2/b;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->a(Lcom/applovin/exoplayer2/aw$a;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v4, v35

    invoke-direct {v0, v3, v4, v2}, Lcom/applovin/exoplayer2/b;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/applovin/exoplayer2/b$b;)V

    iput-object v0, v1, Lcom/applovin/exoplayer2/aw;->hw:Lcom/applovin/exoplayer2/b;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->x(Lcom/applovin/exoplayer2/aw$a;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/b;->setEnabled(Z)V

    new-instance v0, Lcom/applovin/exoplayer2/c;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->a(Lcom/applovin/exoplayer2/aw$a;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v4, v2}, Lcom/applovin/exoplayer2/c;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/applovin/exoplayer2/c$b;)V

    iput-object v0, v1, Lcom/applovin/exoplayer2/aw;->hx:Lcom/applovin/exoplayer2/c;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->y(Lcom/applovin/exoplayer2/aw$a;)Z

    move-result v3

    if-eqz v3, :cond_16b

    iget-object v6, v1, Lcom/applovin/exoplayer2/aw;->N:Lcom/applovin/exoplayer2/b/d;

    goto :goto_16d

    :cond_16b
    move-object/from16 v6, v34

    :goto_16d
    invoke-virtual {v0, v6}, Lcom/applovin/exoplayer2/c;->a(Lcom/applovin/exoplayer2/b/d;)V

    new-instance v0, Lcom/applovin/exoplayer2/ay;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->a(Lcom/applovin/exoplayer2/aw$a;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v4, v2}, Lcom/applovin/exoplayer2/ay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/applovin/exoplayer2/ay$a;)V

    iput-object v0, v1, Lcom/applovin/exoplayer2/aw;->hy:Lcom/applovin/exoplayer2/ay;

    iget-object v2, v1, Lcom/applovin/exoplayer2/aw;->N:Lcom/applovin/exoplayer2/b/d;

    iget v2, v2, Lcom/applovin/exoplayer2/b/d;->jG:I

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/ai;->fM(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/ay;->aj(I)V

    new-instance v2, Lcom/applovin/exoplayer2/bb;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->a(Lcom/applovin/exoplayer2/aw$a;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/applovin/exoplayer2/bb;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/applovin/exoplayer2/aw;->hz:Lcom/applovin/exoplayer2/bb;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->z(Lcom/applovin/exoplayer2/aw$a;)I

    move-result v3

    if-eqz v3, :cond_199

    const/4 v12, 0x1

    goto :goto_19a

    :cond_199
    const/4 v12, 0x0

    :goto_19a
    invoke-virtual {v2, v12}, Lcom/applovin/exoplayer2/bb;->setEnabled(Z)V

    new-instance v2, Lcom/applovin/exoplayer2/bc;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->a(Lcom/applovin/exoplayer2/aw$a;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/applovin/exoplayer2/bc;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/applovin/exoplayer2/aw;->hA:Lcom/applovin/exoplayer2/bc;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->z(Lcom/applovin/exoplayer2/aw$a;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b1

    const/4 v12, 0x1

    goto :goto_1b2

    :cond_1b1
    const/4 v12, 0x0

    :goto_1b2
    invoke-virtual {v2, v12}, Lcom/applovin/exoplayer2/bc;->setEnabled(Z)V

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/ay;)Lcom/applovin/exoplayer2/o;

    move-result-object v0

    iput-object v0, v1, Lcom/applovin/exoplayer2/aw;->ia:Lcom/applovin/exoplayer2/o;

    sget-object v0, Lcom/applovin/exoplayer2/m/o;->afk:Lcom/applovin/exoplayer2/m/o;

    iput-object v0, v1, Lcom/applovin/exoplayer2/aw;->ib:Lcom/applovin/exoplayer2/m/o;

    iget v0, v1, Lcom/applovin/exoplayer2/aw;->hR:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    iget v0, v1, Lcom/applovin/exoplayer2/aw;->hR:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v4, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/applovin/exoplayer2/aw;->N:Lcom/applovin/exoplayer2/b/d;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    iget v0, v1, Lcom/applovin/exoplayer2/aw;->hL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {v1, v4, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    iget v0, v1, Lcom/applovin/exoplayer2/aw;->hM:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    invoke-direct {v1, v4, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    const/16 v0, 0x9

    iget-boolean v2, v1, Lcom/applovin/exoplayer2/aw;->hT:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v3, v0, v2}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    move-object/from16 v0, v33

    const/4 v2, 0x7

    invoke-direct {v1, v4, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V
    :try_end_205
    .catchall {:try_start_128 .. :try_end_205} :catchall_209

    invoke-virtual/range {v22 .. v22}, Lcom/applovin/exoplayer2/l/g;->oN()Z

    return-void

    :catchall_209
    move-exception v0

    goto :goto_211

    :catchall_20b
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_211

    :catchall_20f
    move-exception v0

    move-object v1, v15

    :goto_211
    iget-object v2, v1, Lcom/applovin/exoplayer2/aw;->hq:Lcom/applovin/exoplayer2/l/g;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/g;->oN()Z

    throw v0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->bM:Lcom/applovin/exoplayer2/a/a;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/c/e;)Lcom/applovin/exoplayer2/c/e;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->hP:Lcom/applovin/exoplayer2/c/e;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/m/o;)Lcom/applovin/exoplayer2/m/o;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->ib:Lcom/applovin/exoplayer2/m/o;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/o;)Lcom/applovin/exoplayer2/o;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->ia:Lcom/applovin/exoplayer2/o;

    return-object p1
.end method

.method private static a(Lcom/applovin/exoplayer2/ay;)Lcom/applovin/exoplayer2/o;
    .registers 4

    new-instance v0, Lcom/applovin/exoplayer2/o;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ay;->da()I

    move-result v1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ay;->db()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/applovin/exoplayer2/o;-><init>(III)V

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/v;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->hC:Lcom/applovin/exoplayer2/v;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->hU:Ljava/util/List;

    return-object p1
.end method

.method private a(IILjava/lang/Object;)V
    .registers 9
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/applovin/exoplayer2/ar;->M()I

    move-result v4

    if-ne v4, p1, :cond_1f

    iget-object v4, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v4, v3}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/ao$b;)Lcom/applovin/exoplayer2/ao;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/applovin/exoplayer2/ao;->ad(I)Lcom/applovin/exoplayer2/ao;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/applovin/exoplayer2/ao;->h(Ljava/lang/Object;)Lcom/applovin/exoplayer2/ao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/ao;->cM()Lcom/applovin/exoplayer2/ao;

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_22
    return-void
.end method

.method private a(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/aw;->i(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/aw;->hG:Landroid/view/Surface;

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/aw;->g(II)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Landroid/graphics/SurfaceTexture;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/aw;->a(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/aw;->i(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;ZII)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/aw;->b(ZII)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/aw;->hT:Z

    return p1
.end method

.method private ah(I)I
    .registers 11

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hE:Landroid/media/AudioTrack;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v0, p1, :cond_12

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hE:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/aw;->hE:Landroid/media/AudioTrack;

    :cond_12
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hE:Landroid/media/AudioTrack;

    if-nez v0, :cond_26

    const/16 v3, 0xfa0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x2

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v7, 0x0

    move-object v1, v0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/aw;->hE:Landroid/media/AudioTrack;

    :cond_26
    iget-object p1, p0, Lcom/applovin/exoplayer2/aw;->hE:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/c/e;)Lcom/applovin/exoplayer2/c/e;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->hQ:Lcom/applovin/exoplayer2/c/e;

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/ay;)Lcom/applovin/exoplayer2/o;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/ay;)Lcom/applovin/exoplayer2/o;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/v;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->hD:Lcom/applovin/exoplayer2/v;

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/aw;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private b(ZII)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    const/4 p1, -0x1

    if-eq p2, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    if-eqz p1, :cond_f

    if-eq p2, v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    iget-object p2, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {p2, p1, v0, p3}, Lcom/applovin/exoplayer2/r;->a(ZII)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/aw;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/aw;->hY:Z

    return p1
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/aw;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->hF:Ljava/lang/Object;

    return-object p0
.end method

.method private c(Landroid/view/SurfaceHolder;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/aw;->hJ:Z

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->hH:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->ht:Lcom/applovin/exoplayer2/aw$b;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw;->hH:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw;->hH:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/aw;->g(II)V

    goto :goto_2d

    :cond_2a
    invoke-direct {p0, v0, v0}, Lcom/applovin/exoplayer2/aw;->g(II)V

    :goto_2d
    return-void
.end method

.method private cT()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hI:Lcom/applovin/exoplayer2/m/a/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    iget-object v2, p0, Lcom/applovin/exoplayer2/aw;->hu:Lcom/applovin/exoplayer2/aw$c;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/ao$b;)Lcom/applovin/exoplayer2/ao;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/ao;->ad(I)Lcom/applovin/exoplayer2/ao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ao;->h(Ljava/lang/Object;)Lcom/applovin/exoplayer2/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ao;->cM()Lcom/applovin/exoplayer2/ao;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hI:Lcom/applovin/exoplayer2/m/a/i;

    iget-object v2, p0, Lcom/applovin/exoplayer2/aw;->ht:Lcom/applovin/exoplayer2/aw$b;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/m/a/i;->b(Lcom/applovin/exoplayer2/m/a/i$a;)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/aw;->hI:Lcom/applovin/exoplayer2/m/a/i;

    :cond_23
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hK:Landroid/view/TextureView;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/aw;->ht:Lcom/applovin/exoplayer2/aw$b;

    if-eq v0, v2, :cond_37

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_37
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hK:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_3c
    iput-object v1, p0, Lcom/applovin/exoplayer2/aw;->hK:Landroid/view/TextureView;

    :cond_3e
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hH:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_49

    iget-object v2, p0, Lcom/applovin/exoplayer2/aw;->ht:Lcom/applovin/exoplayer2/aw$b;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/aw;->hH:Landroid/view/SurfaceHolder;

    :cond_49
    return-void
.end method

.method private cU()V
    .registers 4

    iget v0, p0, Lcom/applovin/exoplayer2/aw;->hS:F

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->hx:Lcom/applovin/exoplayer2/c;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/c;->n()F

    move-result v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private cV()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->bM:Lcom/applovin/exoplayer2/a/a;

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/aw;->hT:Z

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/a/a;->A(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/an$d;

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/aw;->hT:Z

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/an$d;->A(Z)V

    goto :goto_d

    :cond_1f
    return-void
.end method

.method private cW()V
    .registers 6

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->aB()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_35

    const/4 v3, 0x2

    if-eq v0, v3, :cond_18

    const/4 v3, 0x3

    if-eq v0, v3, :cond_18

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    goto :goto_35

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_18
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->ay()Z

    move-result v0

    iget-object v3, p0, Lcom/applovin/exoplayer2/aw;->hz:Lcom/applovin/exoplayer2/bb;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->aE()Z

    move-result v4

    if-eqz v4, :cond_27

    if-nez v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    invoke-virtual {v3, v1}, Lcom/applovin/exoplayer2/bb;->C(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hA:Lcom/applovin/exoplayer2/bc;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->aE()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/bc;->C(Z)V

    goto :goto_3f

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hz:Lcom/applovin/exoplayer2/bb;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/bb;->C(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hA:Lcom/applovin/exoplayer2/bc;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/bc;->C(Z)V

    :goto_3f
    return-void
.end method

.method private cX()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hq:Lcom/applovin/exoplayer2/l/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/g;->oQ()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->az()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_53

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->az()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/aw;->hV:Z

    if-nez v1, :cond_4d

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/aw;->hW:Z

    if-eqz v1, :cond_40

    const/4 v1, 0x0

    goto :goto_45

    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_45
    const-string v3, "SimpleExoPlayer"

    invoke-static {v3, v0, v1}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/aw;->hW:Z

    goto :goto_53

    :cond_4d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_53
    :goto_53
    return-void
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/aw;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/aw;->hT:Z

    return p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/aw;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cV()V

    return-void
.end method

.method private static f(ZI)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    return v0
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/r;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    return-object p0
.end method

.method static synthetic g(ZI)I
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/aw;->f(ZI)I

    move-result p0

    return p0
.end method

.method private g(II)V
    .registers 5

    iget v0, p0, Lcom/applovin/exoplayer2/aw;->hN:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/applovin/exoplayer2/aw;->hO:I

    if-eq p2, v0, :cond_27

    :cond_8
    iput p1, p0, Lcom/applovin/exoplayer2/aw;->hN:I

    iput p2, p0, Lcom/applovin/exoplayer2/aw;->hO:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->bM:Lcom/applovin/exoplayer2/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/a/a;->f(II)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/an$d;

    invoke-interface {v1, p1, p2}, Lcom/applovin/exoplayer2/an$d;->f(II)V

    goto :goto_17

    :cond_27
    return-void
.end method

.method static synthetic g(Lcom/applovin/exoplayer2/aw;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/aw;->hJ:Z

    return p0
.end method

.method static synthetic h(Lcom/applovin/exoplayer2/aw;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cU()V

    return-void
.end method

.method static synthetic i(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/ay;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->hy:Lcom/applovin/exoplayer2/ay;

    return-object p0
.end method

.method private i(Ljava/lang/Object;)V
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->bB:[Lcom/applovin/exoplayer2/ar;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2e

    aget-object v6, v1, v4

    invoke-interface {v6}, Lcom/applovin/exoplayer2/ar;->M()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2b

    iget-object v7, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v7, v6}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/ao$b;)Lcom/applovin/exoplayer2/ao;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/ao;->ad(I)Lcom/applovin/exoplayer2/ao;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/applovin/exoplayer2/ao;->h(Ljava/lang/Object;)Lcom/applovin/exoplayer2/ao;

    move-result-object v5

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/ao;->cM()Lcom/applovin/exoplayer2/ao;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_2e
    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->hF:Ljava/lang/Object;

    if-eqz v1, :cond_61

    if-eq v1, p1, :cond_61

    :try_start_34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/ao;

    iget-wide v6, p0, Lcom/applovin/exoplayer2/aw;->hB:J

    invoke-virtual {v1, v6, v7}, Lcom/applovin/exoplayer2/ao;->y(J)Z
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_49} :catch_4c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_34 .. :try_end_49} :catch_4a

    goto :goto_38

    :catch_4a
    nop

    goto :goto_54

    :catch_4c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_53
    const/4 v5, 0x0

    :goto_54
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hF:Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->hG:Landroid/view/Surface;

    if-ne v0, v1, :cond_62

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/aw;->hG:Landroid/view/Surface;

    goto :goto_62

    :cond_61
    const/4 v5, 0x0

    :cond_62
    :goto_62
    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->hF:Ljava/lang/Object;

    if-eqz v5, :cond_77

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    new-instance v0, Lcom/applovin/exoplayer2/u;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/u;-><init>(I)V

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/p;->a(Ljava/lang/RuntimeException;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/applovin/exoplayer2/r;->a(ZLcom/applovin/exoplayer2/p;)V

    :cond_77
    return-void
.end method

.method static synthetic j(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/o;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->ia:Lcom/applovin/exoplayer2/o;

    return-object p0
.end method

.method static synthetic k(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/l/aa;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->hX:Lcom/applovin/exoplayer2/l/aa;

    return-object p0
.end method

.method static synthetic l(Lcom/applovin/exoplayer2/aw;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/aw;->hY:Z

    return p0
.end method

.method static synthetic m(Lcom/applovin/exoplayer2/aw;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cW()V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .registers 5

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->bM:Lcom/applovin/exoplayer2/a/a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/a/a;->dq()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/r;->a(IJ)V

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->cS()V

    goto :goto_3d

    :cond_9
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cT()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/aw;->hJ:Z

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->hH:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->ht:Lcom/applovin/exoplayer2/aw$b;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/aw;->i(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/aw;->g(II)V

    goto :goto_3d

    :cond_35
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/aw;->i(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/applovin/exoplayer2/aw;->g(II)V

    :goto_3d
    return-void
.end method

.method public a(Landroid/view/SurfaceView;)V
    .registers 4
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    instance-of v0, p1, Lcom/applovin/exoplayer2/m/k;

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cT()V

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/aw;->i(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/aw;->c(Landroid/view/SurfaceHolder;)V

    goto :goto_5b

    :cond_15
    instance-of v0, p1, Lcom/applovin/exoplayer2/m/a/i;

    if-eqz v0, :cond_50

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cT()V

    move-object v0, p1

    check-cast v0, Lcom/applovin/exoplayer2/m/a/i;

    iput-object v0, p0, Lcom/applovin/exoplayer2/aw;->hI:Lcom/applovin/exoplayer2/m/a/i;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->hu:Lcom/applovin/exoplayer2/aw$c;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/ao$b;)Lcom/applovin/exoplayer2/ao;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ao;->ad(I)Lcom/applovin/exoplayer2/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->hI:Lcom/applovin/exoplayer2/m/a/i;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ao;->h(Ljava/lang/Object;)Lcom/applovin/exoplayer2/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ao;->cM()Lcom/applovin/exoplayer2/ao;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hI:Lcom/applovin/exoplayer2/m/a/i;

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->ht:Lcom/applovin/exoplayer2/aw$b;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/m/a/i;->a(Lcom/applovin/exoplayer2/m/a/i$a;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hI:Lcom/applovin/exoplayer2/m/a/i;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/a/i;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/aw;->i(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/aw;->c(Landroid/view/SurfaceHolder;)V

    goto :goto_5b

    :cond_50
    if-nez p1, :cond_54

    const/4 p1, 0x0

    goto :goto_58

    :cond_54
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_58
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/aw;->a(Landroid/view/SurfaceHolder;)V

    :goto_5b
    return-void
.end method

.method public a(Landroid/view/TextureView;)V
    .registers 4
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->cS()V

    goto :goto_45

    :cond_9
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cT()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->hK:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v0, "SimpleExoPlayer"

    const-string v1, "Replacing existing SurfaceTextureListener."

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->ht:Lcom/applovin/exoplayer2/aw$b;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    move-object v0, v1

    :goto_2d
    if-nez v0, :cond_37

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/aw;->i(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/applovin/exoplayer2/aw;->g(II)V

    goto :goto_45

    :cond_37
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/aw;->a(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/aw;->g(II)V

    :goto_45
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/an$d;)V
    .registers 3

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/aw;->f(Lcom/applovin/exoplayer2/an$b;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/h/p;)V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/h/p;)V

    return-void
.end method

.method public aA()Lcom/applovin/exoplayer2/an$a;
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aA()Lcom/applovin/exoplayer2/an$a;

    move-result-object v0

    return-object v0
.end method

.method public aB()I
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aB()I

    move-result v0

    return v0
.end method

.method public aC()I
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aC()I

    move-result v0

    return v0
.end method

.method public aD()V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->aE()Z

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->hx:Lcom/applovin/exoplayer2/c;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/exoplayer2/c;->a(ZI)I

    move-result v1

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/aw;->f(ZI)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/aw;->b(ZII)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aD()V

    return-void
.end method

.method public aE()Z
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aE()Z

    move-result v0

    return v0
.end method

.method public aF()I
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aF()I

    move-result v0

    return v0
.end method

.method public aG()Z
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aG()Z

    move-result v0

    return v0
.end method

.method public aH()J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aH()J

    move-result-wide v0

    return-wide v0
.end method

.method public aI()J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aI()J

    move-result-wide v0

    return-wide v0
.end method

.method public aJ()J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aJ()J

    move-result-wide v0

    return-wide v0
.end method

.method public aK()I
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aK()I

    move-result v0

    return v0
.end method

.method public aL()I
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aL()I

    move-result v0

    return v0
.end method

.method public aM()J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aM()J

    move-result-wide v0

    return-wide v0
.end method

.method public aN()J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aN()J

    move-result-wide v0

    return-wide v0
.end method

.method public aO()J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aO()J

    move-result-wide v0

    return-wide v0
.end method

.method public aP()Z
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aP()Z

    move-result v0

    return v0
.end method

.method public aQ()I
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aQ()I

    move-result v0

    return v0
.end method

.method public aR()I
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aR()I

    move-result v0

    return v0
.end method

.method public aS()J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aS()J

    move-result-wide v0

    return-wide v0
.end method

.method public aT()J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aT()J

    move-result-wide v0

    return-wide v0
.end method

.method public aU()Lcom/applovin/exoplayer2/h/ad;
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aU()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v0

    return-object v0
.end method

.method public aV()Lcom/applovin/exoplayer2/j/h;
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aV()Lcom/applovin/exoplayer2/j/h;

    move-result-object v0

    return-object v0
.end method

.method public aW()Lcom/applovin/exoplayer2/ac;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aW()Lcom/applovin/exoplayer2/ac;

    move-result-object v0

    return-object v0
.end method

.method public aX()Lcom/applovin/exoplayer2/ba;
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    return-object v0
.end method

.method public aY()Lcom/applovin/exoplayer2/m/o;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->ib:Lcom/applovin/exoplayer2/m/o;

    return-object v0
.end method

.method public av()Lcom/applovin/exoplayer2/am;
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->av()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    return-object v0
.end method

.method public aw()Lcom/applovin/exoplayer2/p;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->aw()Lcom/applovin/exoplayer2/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ax()Lcom/applovin/exoplayer2/ak;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->aw()Lcom/applovin/exoplayer2/p;

    move-result-object v0

    return-object v0
.end method

.method public ay()Z
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->ay()Z

    move-result v0

    return v0
.end method

.method public az()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->az()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hH:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->cS()V

    :cond_c
    return-void
.end method

.method public b(Landroid/view/SurfaceView;)V
    .registers 2
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_b
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/aw;->b(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public b(Landroid/view/TextureView;)V
    .registers 3
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hK:Landroid/view/TextureView;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->cS()V

    :cond_c
    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/an$d;)V
    .registers 3

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/aw;->g(Lcom/applovin/exoplayer2/an$b;)V

    return-void
.end method

.method public bd()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hU:Ljava/util/List;

    return-object v0
.end method

.method public cS()V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cT()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/aw;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/applovin/exoplayer2/aw;->g(II)V

    return-void
.end method

.method public f(Lcom/applovin/exoplayer2/an$b;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/an$b;)V

    return-void
.end method

.method public g(Lcom/applovin/exoplayer2/an$b;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/r;->b(Lcom/applovin/exoplayer2/an$b;)V

    return-void
.end method

.method public h(F)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/applovin/exoplayer2/l/ai;->a(FFF)F

    move-result p1

    iget v0, p0, Lcom/applovin/exoplayer2/aw;->hS:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_11

    return-void

    :cond_11
    iput p1, p0, Lcom/applovin/exoplayer2/aw;->hS:F

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cU()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->bM:Lcom/applovin/exoplayer2/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/a/a;->g(F)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hv:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/an$d;

    invoke-interface {v1, p1}, Lcom/applovin/exoplayer2/an$d;->g(F)V

    goto :goto_21

    :cond_31
    return-void
.end method

.method public k(Z)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hx:Lcom/applovin/exoplayer2/c;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->aB()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/exoplayer2/c;->a(ZI)I

    move-result v0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/aw;->f(ZI)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/exoplayer2/aw;->b(ZII)V

    return-void
.end method

.method public l(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/r;->l(Z)V

    return-void
.end method

.method public release()V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_13

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hE:Landroid/media/AudioTrack;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lcom/applovin/exoplayer2/aw;->hE:Landroid/media/AudioTrack;

    :cond_13
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hw:Lcom/applovin/exoplayer2/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/b;->setEnabled(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hy:Lcom/applovin/exoplayer2/ay;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ay;->release()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hz:Lcom/applovin/exoplayer2/bb;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/bb;->C(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hA:Lcom/applovin/exoplayer2/bc;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/bc;->C(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hx:Lcom/applovin/exoplayer2/c;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c;->release()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->release()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->bM:Lcom/applovin/exoplayer2/a/a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/a/a;->release()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cT()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hG:Landroid/view/Surface;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/applovin/exoplayer2/aw;->hG:Landroid/view/Surface;

    :cond_43
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/aw;->hY:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hX:Lcom/applovin/exoplayer2/l/aa;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/l/aa;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/aa;->fF(I)V

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/aw;->hY:Z

    :cond_54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/aw;->hU:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/aw;->hZ:Z

    return-void
.end method

.method public u(I)V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->cX()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->hs:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/r;->u(I)V

    return-void
.end method

###### Class com.applovin.exoplayer2.aw.AnonymousClass1 (com.applovin.exoplayer2.aw$1)
.class synthetic Lcom/applovin/exoplayer2/aw$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.aw.a (com.applovin.exoplayer2.aw$a)
.class public final Lcom/applovin/exoplayer2/aw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final E:Landroid/content/Context;

.field private N:Lcom/applovin/exoplayer2/b/d;

.field private bC:Lcom/applovin/exoplayer2/j/j;

.field private bK:Z

.field private bL:Lcom/applovin/exoplayer2/h/r;

.field private bM:Lcom/applovin/exoplayer2/a/a;

.field private bO:Lcom/applovin/exoplayer2/k/d;

.field private bP:J

.field private bQ:J

.field private bR:Lcom/applovin/exoplayer2/l/d;

.field private bY:Lcom/applovin/exoplayer2/av;

.field private bZ:Z

.field private cl:Lcom/applovin/exoplayer2/aa;

.field private ct:Lcom/applovin/exoplayer2/z;

.field private cu:J

.field private gU:Landroid/os/Looper;

.field private hB:J

.field private hL:I

.field private hM:I

.field private hT:Z

.field private hX:Lcom/applovin/exoplayer2/l/aa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final ic:Lcom/applovin/exoplayer2/au;

.field private id:J

.field private ie:Z

.field private if:I

.field private ig:Z

.field private ih:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/n;

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/n;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/applovin/exoplayer2/e/f;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/e/f;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/exoplayer2/aw$a;-><init>(Landroid/content/Context;Lcom/applovin/exoplayer2/au;Lcom/applovin/exoplayer2/e/l;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/applovin/exoplayer2/au;Lcom/applovin/exoplayer2/e/l;)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v3, Lcom/applovin/exoplayer2/j/c;

    invoke-direct {v3, p1}, Lcom/applovin/exoplayer2/j/c;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/applovin/exoplayer2/h/f;

    invoke-direct {v4, p1, p3}, Lcom/applovin/exoplayer2/h/f;-><init>(Landroid/content/Context;Lcom/applovin/exoplayer2/e/l;)V

    new-instance v5, Lcom/applovin/exoplayer2/l;

    invoke-direct {v5}, Lcom/applovin/exoplayer2/l;-><init>()V

    invoke-static {p1}, Lcom/applovin/exoplayer2/k/n;->i(Landroid/content/Context;)Lcom/applovin/exoplayer2/k/n;

    move-result-object v6

    new-instance v7, Lcom/applovin/exoplayer2/a/a;

    sget-object p3, Lcom/applovin/exoplayer2/l/d;->abJ:Lcom/applovin/exoplayer2/l/d;

    invoke-direct {v7, p3}, Lcom/applovin/exoplayer2/a/a;-><init>(Lcom/applovin/exoplayer2/l/d;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/applovin/exoplayer2/aw$a;-><init>(Landroid/content/Context;Lcom/applovin/exoplayer2/au;Lcom/applovin/exoplayer2/j/j;Lcom/applovin/exoplayer2/h/r;Lcom/applovin/exoplayer2/aa;Lcom/applovin/exoplayer2/k/d;Lcom/applovin/exoplayer2/a/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/applovin/exoplayer2/au;Lcom/applovin/exoplayer2/j/j;Lcom/applovin/exoplayer2/h/r;Lcom/applovin/exoplayer2/aa;Lcom/applovin/exoplayer2/k/d;Lcom/applovin/exoplayer2/a/a;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$a;->E:Landroid/content/Context;

    iput-object p2, p0, Lcom/applovin/exoplayer2/aw$a;->ic:Lcom/applovin/exoplayer2/au;

    iput-object p3, p0, Lcom/applovin/exoplayer2/aw$a;->bC:Lcom/applovin/exoplayer2/j/j;

    iput-object p4, p0, Lcom/applovin/exoplayer2/aw$a;->bL:Lcom/applovin/exoplayer2/h/r;

    iput-object p5, p0, Lcom/applovin/exoplayer2/aw$a;->cl:Lcom/applovin/exoplayer2/aa;

    iput-object p6, p0, Lcom/applovin/exoplayer2/aw$a;->bO:Lcom/applovin/exoplayer2/k/d;

    iput-object p7, p0, Lcom/applovin/exoplayer2/aw$a;->bM:Lcom/applovin/exoplayer2/a/a;

    invoke-static {}, Lcom/applovin/exoplayer2/l/ai;->pZ()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$a;->gU:Landroid/os/Looper;

    sget-object p1, Lcom/applovin/exoplayer2/b/d;->jD:Lcom/applovin/exoplayer2/b/d;

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$a;->N:Lcom/applovin/exoplayer2/b/d;

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/aw$a;->if:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/applovin/exoplayer2/aw$a;->hL:I

    iput p1, p0, Lcom/applovin/exoplayer2/aw$a;->hM:I

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/aw$a;->bK:Z

    sget-object p1, Lcom/applovin/exoplayer2/av;->hn:Lcom/applovin/exoplayer2/av;

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$a;->bY:Lcom/applovin/exoplayer2/av;

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/applovin/exoplayer2/aw$a;->bP:J

    const-wide/16 p1, 0x3a98

    iput-wide p1, p0, Lcom/applovin/exoplayer2/aw$a;->bQ:J

    new-instance p1, Lcom/applovin/exoplayer2/k$a;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/k$a;-><init>()V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/k$a;->ao()Lcom/applovin/exoplayer2/k;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$a;->ct:Lcom/applovin/exoplayer2/z;

    sget-object p1, Lcom/applovin/exoplayer2/l/d;->abJ:Lcom/applovin/exoplayer2/l/d;

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$a;->bR:Lcom/applovin/exoplayer2/l/d;

    const-wide/16 p1, 0x1f4

    iput-wide p1, p0, Lcom/applovin/exoplayer2/aw$a;->cu:J

    const-wide/16 p1, 0x7d0

    iput-wide p1, p0, Lcom/applovin/exoplayer2/aw$a;->hB:J

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw$a;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw$a;->E:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/a/a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw$a;->bM:Lcom/applovin/exoplayer2/a/a;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/l/aa;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw$a;->hX:Lcom/applovin/exoplayer2/l/aa;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/b/d;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw$a;->N:Lcom/applovin/exoplayer2/b/d;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/aw$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/aw$a;->hL:I

    return p0
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/aw$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/aw$a;->hM:I

    return p0
.end method

.method static synthetic g(Lcom/applovin/exoplayer2/aw$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/aw$a;->hT:Z

    return p0
.end method

.method static synthetic h(Lcom/applovin/exoplayer2/aw$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/aw$a;->hB:J

    return-wide v0
.end method

.method static synthetic i(Lcom/applovin/exoplayer2/aw$a;)Landroid/os/Looper;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw$a;->gU:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic j(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/au;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw$a;->ic:Lcom/applovin/exoplayer2/au;

    return-object p0
.end method

.method static synthetic k(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/j/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw$a;->bC:Lcom/applovin/exoplayer2/j/j;

    return-object p0
.end method

.method static synthetic l(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/h/r;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw$a;->bL:Lcom/applovin/exoplayer2/h/r;

    return-object p0
.end method

.method static synthetic m(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/aa;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw$a;->cl:Lcom/applovin/exoplayer2/aa;

    return-object p0
.end method

.method static synthetic n(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/k/d;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw$a;->bO:Lcom/applovin/exoplayer2/k/d;

    return-object p0
.end method

.method static synthetic o(Lcom/applovin/exoplayer2/aw$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/aw$a;->bK:Z

    return p0
.end method

.method static synthetic p(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/av;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw$a;->bY:Lcom/applovin/exoplayer2/av;

    return-object p0
.end method

.method static synthetic q(Lcom/applovin/exoplayer2/aw$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/aw$a;->bP:J

    return-wide v0
.end method

.method static synthetic r(Lcom/applovin/exoplayer2/aw$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/aw$a;->bQ:J

    return-wide v0
.end method

.method static synthetic s(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/z;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw$a;->ct:Lcom/applovin/exoplayer2/z;

    return-object p0
.end method

.method static synthetic t(Lcom/applovin/exoplayer2/aw$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/aw$a;->cu:J

    return-wide v0
.end method

.method static synthetic u(Lcom/applovin/exoplayer2/aw$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/aw$a;->bZ:Z

    return p0
.end method

.method static synthetic v(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/l/d;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/aw$a;->bR:Lcom/applovin/exoplayer2/l/d;

    return-object p0
.end method

.method static synthetic w(Lcom/applovin/exoplayer2/aw$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/aw$a;->id:J

    return-wide v0
.end method

.method static synthetic x(Lcom/applovin/exoplayer2/aw$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/aw$a;->ig:Z

    return p0
.end method

.method static synthetic y(Lcom/applovin/exoplayer2/aw$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/aw$a;->ie:Z

    return p0
.end method

.method static synthetic z(Lcom/applovin/exoplayer2/aw$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/aw$a;->if:I

    return p0
.end method


# virtual methods
.method public cY()Lcom/applovin/exoplayer2/aw;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/aw$a;->ih:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/aw$a;->ih:Z

    new-instance v0, Lcom/applovin/exoplayer2/aw;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/aw;-><init>(Lcom/applovin/exoplayer2/aw$a;)V

    return-object v0
.end method

###### Class com.applovin.exoplayer2.aw.b (com.applovin.exoplayer2.aw$b)
.class final Lcom/applovin/exoplayer2/aw$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/applovin/exoplayer2/an$b;
.implements Lcom/applovin/exoplayer2/ay$a;
.implements Lcom/applovin/exoplayer2/b$b;
.implements Lcom/applovin/exoplayer2/b/g;
.implements Lcom/applovin/exoplayer2/c$b;
.implements Lcom/applovin/exoplayer2/g/e;
.implements Lcom/applovin/exoplayer2/i/l;
.implements Lcom/applovin/exoplayer2/m/a/i$a;
.implements Lcom/applovin/exoplayer2/m/n;
.implements Lcom/applovin/exoplayer2/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic ii:Lcom/applovin/exoplayer2/aw;


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/aw;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/aw$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/aw$b;-><init>(Lcom/applovin/exoplayer2/aw;)V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->d(Lcom/applovin/exoplayer2/aw;)Z

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;Z)Z

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1}, Lcom/applovin/exoplayer2/aw;->e(Lcom/applovin/exoplayer2/aw;)V

    return-void
.end method

.method public Z(I)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1}, Lcom/applovin/exoplayer2/aw;->m(Lcom/applovin/exoplayer2/aw;)V

    return-void
.end method

.method public a(IJJ)V
    .registers 13

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/a/a;->a(IJJ)V

    return-void
.end method

.method public a(JI)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/a/a;->a(JI)V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/ab;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/w1;->b(Lcom/applovin/exoplayer2/an$b;Lcom/applovin/exoplayer2/ab;I)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/ac;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->c(Lcom/applovin/exoplayer2/an$b;Lcom/applovin/exoplayer2/ac;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/ak;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->d(Lcom/applovin/exoplayer2/an$b;Lcom/applovin/exoplayer2/ak;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/an$e;Lcom/applovin/exoplayer2/an$e;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/w1;->e(Lcom/applovin/exoplayer2/an$b;Lcom/applovin/exoplayer2/an$e;Lcom/applovin/exoplayer2/an$e;I)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/an;Lcom/applovin/exoplayer2/an$c;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/w1;->f(Lcom/applovin/exoplayer2/an$b;Lcom/applovin/exoplayer2/an;Lcom/applovin/exoplayer2/an$c;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/c/e;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/c/e;)Lcom/applovin/exoplayer2/c/e;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/a/a;->a(Lcom/applovin/exoplayer2/c/e;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/g/a;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/a/a;->a(Lcom/applovin/exoplayer2/g/a;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->f(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/g/a;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/aw;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/an$d;

    invoke-interface {v1, p1}, Lcom/applovin/exoplayer2/an$d;->a(Lcom/applovin/exoplayer2/g/a;)V

    goto :goto_1c

    :cond_2c
    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/h;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/w1;->g(Lcom/applovin/exoplayer2/an$b;Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/h;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/m/o;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/m/o;)Lcom/applovin/exoplayer2/m/o;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/a/a;->a(Lcom/applovin/exoplayer2/m/o;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/aw;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/an$d;

    invoke-interface {v1, p1}, Lcom/applovin/exoplayer2/an$d;->a(Lcom/applovin/exoplayer2/m/o;)V

    goto :goto_18

    :cond_28
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/h;)V
    .registers 4
    .param p2    # Lcom/applovin/exoplayer2/c/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/v;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/a/a;->a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/h;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/a/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/Object;J)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/a/a;->a(Ljava/lang/Object;J)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p2}, Lcom/applovin/exoplayer2/aw;->c(Lcom/applovin/exoplayer2/aw;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_2b

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/aw;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/an$d;

    invoke-interface {p2}, Lcom/applovin/exoplayer2/an$d;->cE()V

    goto :goto_1b

    :cond_2b
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .registers 13

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/a/a;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic aa(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->h(Lcom/applovin/exoplayer2/an$b;I)V

    return-void
.end method

.method public synthetic ab(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->i(Lcom/applovin/exoplayer2/an$b;I)V

    return-void
.end method

.method public synthetic ac(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->j(Lcom/applovin/exoplayer2/an$b;I)V

    return-void
.end method

.method public ai(I)V
    .registers 4

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1}, Lcom/applovin/exoplayer2/aw;->i(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/ay;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/ay;)Lcom/applovin/exoplayer2/o;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->j(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/o;)Lcom/applovin/exoplayer2/o;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/aw;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/an$d;

    invoke-interface {v1, p1}, Lcom/applovin/exoplayer2/an$d;->a(Lcom/applovin/exoplayer2/o;)V

    goto :goto_25

    :cond_35
    return-void
.end method

.method public b(F)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1}, Lcom/applovin/exoplayer2/aw;->h(Lcom/applovin/exoplayer2/aw;)V

    return-void
.end method

.method public b(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/a/a;->b(IJ)V

    return-void
.end method

.method public synthetic b(Lcom/applovin/exoplayer2/ak;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->k(Lcom/applovin/exoplayer2/an$b;Lcom/applovin/exoplayer2/ak;)V

    return-void
.end method

.method public synthetic b(Lcom/applovin/exoplayer2/am;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->l(Lcom/applovin/exoplayer2/an$b;Lcom/applovin/exoplayer2/am;)V

    return-void
.end method

.method public synthetic b(Lcom/applovin/exoplayer2/ba;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/w1;->m(Lcom/applovin/exoplayer2/an$b;Lcom/applovin/exoplayer2/ba;I)V

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/c/e;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/a/a;->b(Lcom/applovin/exoplayer2/c/e;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/v;

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/c/e;)Lcom/applovin/exoplayer2/c/e;

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/h;)V
    .registers 4
    .param p2    # Lcom/applovin/exoplayer2/c/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/v;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/a/a;->b(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/h;)V

    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/a/a;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public b(Ljava/lang/String;JJ)V
    .registers 13

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/a/a;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method public c(Lcom/applovin/exoplayer2/c/e;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/c/e;)Lcom/applovin/exoplayer2/c/e;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/a/a;->c(Lcom/applovin/exoplayer2/c/e;)V

    return-void
.end method

.method public synthetic c(Lcom/applovin/exoplayer2/v;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/b/l0;->g(Lcom/applovin/exoplayer2/b/g;Lcom/applovin/exoplayer2/v;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/a/a;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic cD()V
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/w1;->n(Lcom/applovin/exoplayer2/an$b;)V

    return-void
.end method

.method public synthetic d(Lcom/applovin/exoplayer2/an$a;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->o(Lcom/applovin/exoplayer2/an$b;Lcom/applovin/exoplayer2/an$a;)V

    return-void
.end method

.method public d(Lcom/applovin/exoplayer2/c/e;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/a/a;->d(Lcom/applovin/exoplayer2/c/e;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/v;

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/c/e;)Lcom/applovin/exoplayer2/c/e;

    return-void
.end method

.method public synthetic d(ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/w1;->p(Lcom/applovin/exoplayer2/an$b;ZI)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/aw;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/an$d;

    invoke-interface {v1, p1}, Lcom/applovin/exoplayer2/an$d;->e(Ljava/util/List;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public e(ZI)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1}, Lcom/applovin/exoplayer2/aw;->m(Lcom/applovin/exoplayer2/aw;)V

    return-void
.end method

.method public f(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/aw;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/an$d;

    invoke-interface {v1, p1, p2}, Lcom/applovin/exoplayer2/an$d;->e(IZ)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public synthetic i(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/b2;->a(Lcom/applovin/exoplayer2/q$a;Z)V

    return-void
.end method

.method public j(Z)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1}, Lcom/applovin/exoplayer2/aw;->m(Lcom/applovin/exoplayer2/aw;)V

    return-void
.end method

.method public l(I)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/aw;->aE()Z

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/aw;->g(ZI)I

    move-result v2

    invoke-static {v1, v0, p1, v2}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;ZII)V

    return-void
.end method

.method public m()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;ZII)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1, p2, p3}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1, p2, p3}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/a/a;->r(Ljava/lang/String;)V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/a/a;->s(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1, p3, p4}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->g(Lcom/applovin/exoplayer2/aw;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1}, Lcom/applovin/exoplayer2/aw;->g(Lcom/applovin/exoplayer2/aw;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;Ljava/lang/Object;)V

    :cond_e
    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;II)V

    return-void
.end method

.method public w(Z)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->k(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/l/aa;

    move-result-object v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v1}, Lcom/applovin/exoplayer2/aw;->l(Lcom/applovin/exoplayer2/aw;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1}, Lcom/applovin/exoplayer2/aw;->k(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/l/aa;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/aa;->cR(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/aw;Z)Z

    goto :goto_3b

    :cond_23
    if-nez p1, :cond_3b

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1}, Lcom/applovin/exoplayer2/aw;->l(Lcom/applovin/exoplayer2/aw;)Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1}, Lcom/applovin/exoplayer2/aw;->k(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/l/aa;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/aa;->fF(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/aw;Z)Z

    :cond_3b
    :goto_3b
    return-void
.end method

.method public synthetic x(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->s(Lcom/applovin/exoplayer2/an$b;Z)V

    return-void
.end method

.method public synthetic y(Lcom/applovin/exoplayer2/v;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/m/c0;->k(Lcom/applovin/exoplayer2/m/n;Lcom/applovin/exoplayer2/v;)V

    return-void
.end method

.method public synthetic y(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->t(Lcom/applovin/exoplayer2/an$b;Z)V

    return-void
.end method

.method public z(J)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$b;->ii:Lcom/applovin/exoplayer2/aw;

    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/a/a;->z(J)V

    return-void
.end method

.method public synthetic z(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/w1;->u(Lcom/applovin/exoplayer2/an$b;Z)V

    return-void
.end method

###### Class com.applovin.exoplayer2.aw.c (com.applovin.exoplayer2.aw$c)
.class final Lcom/applovin/exoplayer2/aw$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/ao$b;
.implements Lcom/applovin/exoplayer2/m/a/a;
.implements Lcom/applovin/exoplayer2/m/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private ij:Lcom/applovin/exoplayer2/m/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ik:Lcom/applovin/exoplayer2/m/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private il:Lcom/applovin/exoplayer2/m/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private im:Lcom/applovin/exoplayer2/m/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/aw$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x7

    if-eq p1, v0, :cond_28

    const/16 v0, 0x8

    if-eq p1, v0, :cond_23

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_c

    goto :goto_2c

    :cond_c
    check-cast p2, Lcom/applovin/exoplayer2/m/a/i;

    if-nez p2, :cond_16

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$c;->il:Lcom/applovin/exoplayer2/m/l;

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$c;->im:Lcom/applovin/exoplayer2/m/a/a;

    goto :goto_2c

    :cond_16
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/m/a/i;->getVideoFrameMetadataListener()Lcom/applovin/exoplayer2/m/l;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$c;->il:Lcom/applovin/exoplayer2/m/l;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/m/a/i;->getCameraMotionListener()Lcom/applovin/exoplayer2/m/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$c;->im:Lcom/applovin/exoplayer2/m/a/a;

    goto :goto_2c

    :cond_23
    check-cast p2, Lcom/applovin/exoplayer2/m/a/a;

    iput-object p2, p0, Lcom/applovin/exoplayer2/aw$c;->ik:Lcom/applovin/exoplayer2/m/a/a;

    goto :goto_2c

    :cond_28
    check-cast p2, Lcom/applovin/exoplayer2/m/l;

    iput-object p2, p0, Lcom/applovin/exoplayer2/aw$c;->ij:Lcom/applovin/exoplayer2/m/l;

    :goto_2c
    return-void
.end method

.method public a(JJLcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V
    .registers 15
    .param p6    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$c;->il:Lcom/applovin/exoplayer2/m/l;

    if-eqz v0, :cond_b

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/applovin/exoplayer2/m/l;->a(JJLcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V

    :cond_b
    iget-object v1, p0, Lcom/applovin/exoplayer2/aw$c;->ij:Lcom/applovin/exoplayer2/m/l;

    if-eqz v1, :cond_16

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/applovin/exoplayer2/m/l;->a(JJLcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V

    :cond_16
    return-void
.end method

.method public a(J[F)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$c;->im:Lcom/applovin/exoplayer2/m/a/a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/m/a/a;->a(J[F)V

    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$c;->ik:Lcom/applovin/exoplayer2/m/a/a;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/m/a/a;->a(J[F)V

    :cond_e
    return-void
.end method

.method public cZ()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$c;->im:Lcom/applovin/exoplayer2/m/a/a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/applovin/exoplayer2/m/a/a;->cZ()V

    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$c;->ik:Lcom/applovin/exoplayer2/m/a/a;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/applovin/exoplayer2/m/a/a;->cZ()V

    :cond_e
    return-void
.end method
