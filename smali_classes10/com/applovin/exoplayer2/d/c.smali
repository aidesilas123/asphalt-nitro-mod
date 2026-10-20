###### Class com.applovin.exoplayer2.d.c (com.applovin.exoplayer2.d.c)
.class public Lcom/applovin/exoplayer2/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/d/h;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/d/c$e;,
        Lcom/applovin/exoplayer2/d/c$b;,
        Lcom/applovin/exoplayer2/d/c$g;,
        Lcom/applovin/exoplayer2/d/c$f;,
        Lcom/applovin/exoplayer2/d/c$c;,
        Lcom/applovin/exoplayer2/d/c$d;,
        Lcom/applovin/exoplayer2/d/c$a;
    }
.end annotation


# instance fields
.field private co:Landroid/os/Looper;

.field private final eB:Z

.field private final ey:Ljava/util/UUID;

.field private rm:I

.field private final sF:Lcom/applovin/exoplayer2/d/m$c;

.field private final sG:[I

.field private final sH:Lcom/applovin/exoplayer2/d/c$f;

.field private final sI:Lcom/applovin/exoplayer2/d/c$g;

.field private final sJ:J

.field private final sK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private final sL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/exoplayer2/d/c$e;",
            ">;"
        }
    .end annotation
.end field

.field private final sM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/exoplayer2/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private sN:I

.field private sO:Lcom/applovin/exoplayer2/d/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sP:Lcom/applovin/exoplayer2/d/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sQ:Lcom/applovin/exoplayer2/d/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sR:Landroid/os/Handler;

.field volatile sS:Lcom/applovin/exoplayer2/d/c$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final si:Z

.field private final sk:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sm:Lcom/applovin/exoplayer2/k/v;

.field private final sn:Lcom/applovin/exoplayer2/d/r;

.field private sv:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/UUID;Lcom/applovin/exoplayer2/d/m$c;Lcom/applovin/exoplayer2/d/r;Ljava/util/HashMap;Z[IZLcom/applovin/exoplayer2/k/v;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/applovin/exoplayer2/d/m$c;",
            "Lcom/applovin/exoplayer2/d/r;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z[IZ",
            "Lcom/applovin/exoplayer2/k/v;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/applovin/exoplayer2/h;->ak:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/c;->ey:Ljava/util/UUID;

    iput-object p2, p0, Lcom/applovin/exoplayer2/d/c;->sF:Lcom/applovin/exoplayer2/d/m$c;

    iput-object p3, p0, Lcom/applovin/exoplayer2/d/c;->sn:Lcom/applovin/exoplayer2/d/r;

    iput-object p4, p0, Lcom/applovin/exoplayer2/d/c;->sk:Ljava/util/HashMap;

    iput-boolean p5, p0, Lcom/applovin/exoplayer2/d/c;->eB:Z

    iput-object p6, p0, Lcom/applovin/exoplayer2/d/c;->sG:[I

    iput-boolean p7, p0, Lcom/applovin/exoplayer2/d/c;->si:Z

    iput-object p8, p0, Lcom/applovin/exoplayer2/d/c;->sm:Lcom/applovin/exoplayer2/k/v;

    new-instance p1, Lcom/applovin/exoplayer2/d/c$f;

    invoke-direct {p1, p0}, Lcom/applovin/exoplayer2/d/c$f;-><init>(Lcom/applovin/exoplayer2/d/c;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/c;->sH:Lcom/applovin/exoplayer2/d/c$f;

    new-instance p1, Lcom/applovin/exoplayer2/d/c$g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/applovin/exoplayer2/d/c$g;-><init>(Lcom/applovin/exoplayer2/d/c;Lcom/applovin/exoplayer2/d/c$1;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/c;->sI:Lcom/applovin/exoplayer2/d/c$g;

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/d/c;->rm:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/c;->sK:Ljava/util/List;

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/aq;->gT()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/c;->sL:Ljava/util/Set;

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/aq;->gT()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/c;->sM:Ljava/util/Set;

    iput-wide p9, p0, Lcom/applovin/exoplayer2/d/c;->sJ:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Lcom/applovin/exoplayer2/d/m$c;Lcom/applovin/exoplayer2/d/r;Ljava/util/HashMap;Z[IZLcom/applovin/exoplayer2/k/v;JLcom/applovin/exoplayer2/d/c$1;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Lcom/applovin/exoplayer2/d/c;-><init>(Ljava/util/UUID;Lcom/applovin/exoplayer2/d/m$c;Lcom/applovin/exoplayer2/d/r;Ljava/util/HashMap;Z[IZLcom/applovin/exoplayer2/k/v;J)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/d/c;Lcom/applovin/exoplayer2/d/b;)Lcom/applovin/exoplayer2/d/b;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/c;->sP:Lcom/applovin/exoplayer2/d/b;

    return-object p1
.end method

.method private a(Ljava/util/List;ZLcom/applovin/exoplayer2/d/g$a;)Lcom/applovin/exoplayer2/d/b;
    .registers 20
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/d/e$a;",
            ">;Z",
            "Lcom/applovin/exoplayer2/d/g$a;",
            ")",
            "Lcom/applovin/exoplayer2/d/b;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/applovin/exoplayer2/d/c;->sO:Lcom/applovin/exoplayer2/d/m;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Lcom/applovin/exoplayer2/d/c;->si:Z

    or-int v9, v1, p2

    new-instance v1, Lcom/applovin/exoplayer2/d/b;

    iget-object v3, v0, Lcom/applovin/exoplayer2/d/c;->ey:Ljava/util/UUID;

    iget-object v4, v0, Lcom/applovin/exoplayer2/d/c;->sO:Lcom/applovin/exoplayer2/d/m;

    iget-object v5, v0, Lcom/applovin/exoplayer2/d/c;->sH:Lcom/applovin/exoplayer2/d/c$f;

    iget-object v6, v0, Lcom/applovin/exoplayer2/d/c;->sI:Lcom/applovin/exoplayer2/d/c$g;

    iget v8, v0, Lcom/applovin/exoplayer2/d/c;->rm:I

    iget-object v11, v0, Lcom/applovin/exoplayer2/d/c;->sv:[B

    iget-object v12, v0, Lcom/applovin/exoplayer2/d/c;->sk:Ljava/util/HashMap;

    iget-object v13, v0, Lcom/applovin/exoplayer2/d/c;->sn:Lcom/applovin/exoplayer2/d/r;

    iget-object v2, v0, Lcom/applovin/exoplayer2/d/c;->co:Landroid/os/Looper;

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/os/Looper;

    iget-object v15, v0, Lcom/applovin/exoplayer2/d/c;->sm:Lcom/applovin/exoplayer2/k/v;

    move-object v2, v1

    move-object/from16 v7, p1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v15}, Lcom/applovin/exoplayer2/d/b;-><init>(Ljava/util/UUID;Lcom/applovin/exoplayer2/d/m;Lcom/applovin/exoplayer2/d/b$a;Lcom/applovin/exoplayer2/d/b$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/applovin/exoplayer2/d/r;Landroid/os/Looper;Lcom/applovin/exoplayer2/k/v;)V

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/d/g$a;)V

    iget-wide v2, v0, Lcom/applovin/exoplayer2/d/c;->sJ:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_44

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/d/g$a;)V

    :cond_44
    return-object v1
.end method

.method private a(Ljava/util/List;ZLcom/applovin/exoplayer2/d/g$a;Z)Lcom/applovin/exoplayer2/d/b;
    .registers 7
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/d/e$a;",
            ">;Z",
            "Lcom/applovin/exoplayer2/d/g$a;",
            "Z)",
            "Lcom/applovin/exoplayer2/d/b;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/d/c;->a(Ljava/util/List;ZLcom/applovin/exoplayer2/d/g$a;)Lcom/applovin/exoplayer2/d/b;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/d/c;->a(Lcom/applovin/exoplayer2/d/f;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/c;->sM:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/c;->hC()V

    invoke-direct {p0, v0, p3}, Lcom/applovin/exoplayer2/d/c;->a(Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/g$a;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/d/c;->a(Ljava/util/List;ZLcom/applovin/exoplayer2/d/g$a;)Lcom/applovin/exoplayer2/d/b;

    move-result-object v0

    :cond_1c
    invoke-static {v0}, Lcom/applovin/exoplayer2/d/c;->a(Lcom/applovin/exoplayer2/d/f;)Z

    move-result v1

    if-eqz v1, :cond_41

    if-eqz p4, :cond_41

    iget-object p4, p0, Lcom/applovin/exoplayer2/d/c;->sL:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_41

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/c;->hD()V

    iget-object p4, p0, Lcom/applovin/exoplayer2/d/c;->sM:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3a

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/c;->hC()V

    :cond_3a
    invoke-direct {p0, v0, p3}, Lcom/applovin/exoplayer2/d/c;->a(Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/g$a;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/d/c;->a(Ljava/util/List;ZLcom/applovin/exoplayer2/d/g$a;)Lcom/applovin/exoplayer2/d/b;

    move-result-object v0

    :cond_41
    return-object v0
.end method

.method private a(Landroid/os/Looper;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/v;Z)Lcom/applovin/exoplayer2/d/f;
    .registers 9
    .param p2    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/d/c;->b(Landroid/os/Looper;)V

    iget-object p1, p3, Lcom/applovin/exoplayer2/v;->dC:Lcom/applovin/exoplayer2/d/e;

    if-nez p1, :cond_12

    iget-object p1, p3, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/u;->ba(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p4}, Lcom/applovin/exoplayer2/d/c;->h(IZ)Lcom/applovin/exoplayer2/d/f;

    move-result-object p1

    return-object p1

    :cond_12
    iget-object p3, p0, Lcom/applovin/exoplayer2/d/c;->sv:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_4a

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/d/e;

    iget-object p3, p0, Lcom/applovin/exoplayer2/d/c;->ey:Ljava/util/UUID;

    invoke-static {p1, p3, v0}, Lcom/applovin/exoplayer2/d/c;->a(Lcom/applovin/exoplayer2/d/e;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4b

    new-instance p1, Lcom/applovin/exoplayer2/d/c$d;

    iget-object p3, p0, Lcom/applovin/exoplayer2/d/c;->ey:Ljava/util/UUID;

    invoke-direct {p1, p3, v1}, Lcom/applovin/exoplayer2/d/c$d;-><init>(Ljava/util/UUID;Lcom/applovin/exoplayer2/d/c$1;)V

    const-string p3, "DefaultDrmSessionMgr"

    const-string p4, "DRM error"

    invoke-static {p3, p4, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_3d

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/d/g$a;->j(Ljava/lang/Exception;)V

    :cond_3d
    new-instance p2, Lcom/applovin/exoplayer2/d/l;

    new-instance p3, Lcom/applovin/exoplayer2/d/f$a;

    const/16 p4, 0x1773

    invoke-direct {p3, p1, p4}, Lcom/applovin/exoplayer2/d/f$a;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p2, p3}, Lcom/applovin/exoplayer2/d/l;-><init>(Lcom/applovin/exoplayer2/d/f$a;)V

    return-object p2

    :cond_4a
    move-object p1, v1

    :cond_4b
    iget-boolean p3, p0, Lcom/applovin/exoplayer2/d/c;->eB:Z

    if-nez p3, :cond_52

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/c;->sQ:Lcom/applovin/exoplayer2/d/b;

    goto :goto_6d

    :cond_52
    iget-object p3, p0, Lcom/applovin/exoplayer2/d/c;->sK:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_58
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/d/b;

    iget-object v3, v2, Lcom/applovin/exoplayer2/d/b;->se:Ljava/util/List;

    invoke-static {v3, p1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    move-object v1, v2

    :cond_6d
    :goto_6d
    if-nez v1, :cond_7f

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/applovin/exoplayer2/d/c;->a(Ljava/util/List;ZLcom/applovin/exoplayer2/d/g$a;Z)Lcom/applovin/exoplayer2/d/b;

    move-result-object v1

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/d/c;->eB:Z

    if-nez p1, :cond_79

    iput-object v1, p0, Lcom/applovin/exoplayer2/d/c;->sQ:Lcom/applovin/exoplayer2/d/b;

    :cond_79
    iget-object p1, p0, Lcom/applovin/exoplayer2/d/c;->sK:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_82

    :cond_7f
    invoke-virtual {v1, p2}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/d/g$a;)V

    :goto_82
    return-object v1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/d/c;Landroid/os/Looper;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/v;Z)Lcom/applovin/exoplayer2/d/f;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/d/c;->a(Landroid/os/Looper;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/v;Z)Lcom/applovin/exoplayer2/d/f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/d/c;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/d/c;->sK:Ljava/util/List;

    return-object p0
.end method

.method private static a(Lcom/applovin/exoplayer2/d/e;Ljava/util/UUID;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/d/e;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/d/e$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/applovin/exoplayer2/d/e;->td:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    iget v3, p0, Lcom/applovin/exoplayer2/d/e;->td:I

    if-ge v2, v3, :cond_39

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/d/e;->bC(I)Lcom/applovin/exoplayer2/d/e$a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/applovin/exoplayer2/d/e$a;->a(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_2a

    sget-object v4, Lcom/applovin/exoplayer2/h;->al:Ljava/util/UUID;

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    sget-object v4, Lcom/applovin/exoplayer2/h;->ak:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Lcom/applovin/exoplayer2/d/e$a;->a(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v4, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v4, 0x1

    :goto_2b
    if-eqz v4, :cond_36

    iget-object v4, v3, Lcom/applovin/exoplayer2/d/e$a;->tf:[B

    if-nez v4, :cond_33

    if-eqz p2, :cond_36

    :cond_33
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_39
    return-object v0
.end method

.method private declared-synchronized a(Landroid/os/Looper;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->co:Landroid/os/Looper;

    if-nez v0, :cond_f

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/c;->co:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sR:Landroid/os/Handler;

    goto :goto_1c

    :cond_f
    if-ne v0, p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/d/c;->sR:Landroid/os/Handler;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :goto_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/g$a;)V
    .registers 7
    .param p2    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/d/f;->b(Lcom/applovin/exoplayer2/d/g$a;)V

    iget-wide v0, p0, Lcom/applovin/exoplayer2/d/c;->sJ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_12

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/d/f;->b(Lcom/applovin/exoplayer2/d/g$a;)V

    :cond_12
    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/d/f;)Z
    .registers 4

    invoke-interface {p0}, Lcom/applovin/exoplayer2/d/f;->P()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_21

    invoke-interface {p0}, Lcom/applovin/exoplayer2/d/f;->ht()Lcom/applovin/exoplayer2/d/f$a;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/applovin/exoplayer2/d/f$a;

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Landroid/media/ResourceBusyException;

    if-eqz p0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    :goto_21
    return v1
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/d/c;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/d/c;->sJ:J

    return-wide v0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/d/c;Lcom/applovin/exoplayer2/d/b;)Lcom/applovin/exoplayer2/d/b;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/c;->sQ:Lcom/applovin/exoplayer2/d/b;

    return-object p1
.end method

.method private b(Landroid/os/Looper;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sS:Lcom/applovin/exoplayer2/d/c$c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/applovin/exoplayer2/d/c$c;

    invoke-direct {v0, p0, p1}, Lcom/applovin/exoplayer2/d/c$c;-><init>(Lcom/applovin/exoplayer2/d/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sS:Lcom/applovin/exoplayer2/d/c$c;

    :cond_b
    return-void
.end method

.method private b(Lcom/applovin/exoplayer2/d/e;)Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sv:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->ey:Ljava/util/UUID;

    invoke-static {p1, v0, v1}, Lcom/applovin/exoplayer2/d/c;->a(Lcom/applovin/exoplayer2/d/e;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    iget v0, p1, Lcom/applovin/exoplayer2/d/e;->td:I

    if-ne v0, v1, :cond_3c

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/d/e;->bC(I)Lcom/applovin/exoplayer2/d/e$a;

    move-result-object v0

    sget-object v3, Lcom/applovin/exoplayer2/h;->ak:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/d/e$a;->a(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/exoplayer2/d/c;->ey:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DefaultDrmSessionMgr"

    invoke-static {v3, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_3c
    return v2

    :cond_3d
    :goto_3d
    iget-object p1, p1, Lcom/applovin/exoplayer2/d/e;->tc:Ljava/lang/String;

    if-eqz p1, :cond_6e

    const-string v0, "cenc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_6e

    :cond_4a
    const-string v0, "cbcs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    sget p1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    return v1

    :cond_5b
    const-string v0, "cbc1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    const-string v0, "cens"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    goto :goto_6d

    :cond_6c
    return v1

    :cond_6d
    :goto_6d
    return v2

    :cond_6e
    :goto_6e
    return v1
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/d/c;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/d/c;->sM:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/d/c;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/d/c;->sR:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/d/c;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/d/c;->sN:I

    return p0
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/d/c;)Lcom/applovin/exoplayer2/d/b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/d/c;->sP:Lcom/applovin/exoplayer2/d/b;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/exoplayer2/d/c;)Lcom/applovin/exoplayer2/d/b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/d/c;->sQ:Lcom/applovin/exoplayer2/d/b;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/exoplayer2/d/c;)Lcom/applovin/exoplayer2/d/c$f;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/d/c;->sH:Lcom/applovin/exoplayer2/d/c$f;

    return-object p0
.end method

.method private h(IZ)Lcom/applovin/exoplayer2/d/f;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sO:Lcom/applovin/exoplayer2/d/m;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/d/m;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/m;->hN()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_16

    sget-boolean v1, Lcom/applovin/exoplayer2/d/n;->to:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    const/4 v3, 0x0

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/c;->sG:[I

    invoke-static {v1, p1}, Lcom/applovin/exoplayer2/l/ai;->c([II)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_44

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/m;->hN()I

    move-result p1

    if-ne p1, v2, :cond_2a

    goto :goto_44

    :cond_2a
    iget-object p1, p0, Lcom/applovin/exoplayer2/d/c;->sP:Lcom/applovin/exoplayer2/d/b;

    if-nez p1, :cond_3e

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/applovin/exoplayer2/d/c;->a(Ljava/util/List;ZLcom/applovin/exoplayer2/d/g$a;Z)Lcom/applovin/exoplayer2/d/b;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/d/c;->sK:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/c;->sP:Lcom/applovin/exoplayer2/d/b;

    goto :goto_41

    :cond_3e
    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/d/g$a;)V

    :goto_41
    iget-object p1, p0, Lcom/applovin/exoplayer2/d/c;->sP:Lcom/applovin/exoplayer2/d/b;

    return-object p1

    :cond_44
    :goto_44
    return-object v3
.end method

.method private hC()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sM:Ljava/util/Set;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/w;->e(Ljava/util/Collection;)Lcom/applovin/exoplayer2/common/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/w;->fU()Lcom/applovin/exoplayer2/common/a/ax;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/d/f;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/d/f;->b(Lcom/applovin/exoplayer2/d/g$a;)V

    goto :goto_a

    :cond_1b
    return-void
.end method

.method private hD()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sL:Ljava/util/Set;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/w;->e(Ljava/util/Collection;)Lcom/applovin/exoplayer2/common/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/w;->fU()Lcom/applovin/exoplayer2/common/a/ax;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/d/c$e;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/d/c$e;->release()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private hE()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sO:Lcom/applovin/exoplayer2/d/m;

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/applovin/exoplayer2/d/c;->sN:I

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sL:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sO:Lcom/applovin/exoplayer2/d/m;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/d/m;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/m;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sO:Lcom/applovin/exoplayer2/d/m;

    :cond_26
    return-void
.end method

.method static synthetic i(Lcom/applovin/exoplayer2/d/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/c;->hE()V

    return-void
.end method

.method static synthetic j(Lcom/applovin/exoplayer2/d/c;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/d/c;->sL:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic k(Lcom/applovin/exoplayer2/d/c;)Landroid/os/Looper;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/d/c;->co:Landroid/os/Looper;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Looper;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/d/h$a;
    .registers 5
    .param p2    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget v0, p0, Lcom/applovin/exoplayer2/d/c;->sN:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/d/c;->a(Landroid/os/Looper;)V

    new-instance p1, Lcom/applovin/exoplayer2/d/c$e;

    invoke-direct {p1, p0, p2}, Lcom/applovin/exoplayer2/d/c$e;-><init>(Lcom/applovin/exoplayer2/d/c;Lcom/applovin/exoplayer2/d/g$a;)V

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/d/c$e;->h(Lcom/applovin/exoplayer2/v;)V

    return-object p1
.end method

.method public a(I[B)V
    .registers 4
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    :cond_f
    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iput p1, p0, Lcom/applovin/exoplayer2/d/c;->rm:I

    iput-object p2, p0, Lcom/applovin/exoplayer2/d/c;->sv:[B

    return-void
.end method

.method public final aD()V
    .registers 7

    iget v0, p0, Lcom/applovin/exoplayer2/d/c;->sN:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/applovin/exoplayer2/d/c;->sN:I

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sO:Lcom/applovin/exoplayer2/d/m;

    const/4 v1, 0x0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sF:Lcom/applovin/exoplayer2/d/m$c;

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/c;->ey:Ljava/util/UUID;

    invoke-interface {v0, v2}, Lcom/applovin/exoplayer2/d/m$c;->acquireExoMediaDrm(Ljava/util/UUID;)Lcom/applovin/exoplayer2/d/m;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sO:Lcom/applovin/exoplayer2/d/m;

    new-instance v2, Lcom/applovin/exoplayer2/d/c$b;

    invoke-direct {v2, p0, v1}, Lcom/applovin/exoplayer2/d/c$b;-><init>(Lcom/applovin/exoplayer2/d/c;Lcom/applovin/exoplayer2/d/c$1;)V

    invoke-interface {v0, v2}, Lcom/applovin/exoplayer2/d/m;->a(Lcom/applovin/exoplayer2/d/m$b;)V

    goto :goto_43

    :cond_21
    iget-wide v2, p0, Lcom/applovin/exoplayer2/d/c;->sJ:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    :goto_2d
    iget-object v2, p0, Lcom/applovin/exoplayer2/d/c;->sK:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_43

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/c;->sK:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/d/b;

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/d/g$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_43
    :goto_43
    return-void
.end method

.method public b(Landroid/os/Looper;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/d/f;
    .registers 6
    .param p2    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/d/c;->sN:I

    const/4 v1, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/d/c;->a(Landroid/os/Looper;)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/applovin/exoplayer2/d/c;->a(Landroid/os/Looper;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/v;Z)Lcom/applovin/exoplayer2/d/f;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/applovin/exoplayer2/v;)I
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/c;->sO:Lcom/applovin/exoplayer2/d/m;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/d/m;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/m;->hN()I

    move-result v0

    iget-object v1, p1, Lcom/applovin/exoplayer2/v;->dC:Lcom/applovin/exoplayer2/d/e;

    if-nez v1, :cond_22

    iget-object p1, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/u;->ba(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/c;->sG:[I

    invoke-static {v1, p1}, Lcom/applovin/exoplayer2/l/ai;->c([II)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0

    :cond_22
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/d/c;->b(Lcom/applovin/exoplayer2/d/e;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    return v0
.end method

.method public final release()V
    .registers 6

    iget v0, p0, Lcom/applovin/exoplayer2/d/c;->sN:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/d/c;->sN:I

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-wide v0, p0, Lcom/applovin/exoplayer2/d/c;->sJ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/c;->sK:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/d/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/d/b;->b(Lcom/applovin/exoplayer2/d/g$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2f
    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/c;->hD()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/c;->hE()V

    return-void
.end method
