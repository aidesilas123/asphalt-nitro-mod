###### Class com.applovin.exoplayer2.d.b (com.applovin.exoplayer2.d.b)
.class Lcom/applovin/exoplayer2/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/d/f;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/d/b$d;,
        Lcom/applovin/exoplayer2/d/b$c;,
        Lcom/applovin/exoplayer2/d/b$e;,
        Lcom/applovin/exoplayer2/d/b$b;,
        Lcom/applovin/exoplayer2/d/b$a;,
        Lcom/applovin/exoplayer2/d/b$f;
    }
.end annotation


# instance fields
.field private Z:I

.field final ey:Ljava/util/UUID;

.field private final rm:I

.field public final se:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/d/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final sf:Lcom/applovin/exoplayer2/d/m;

.field private final sg:Lcom/applovin/exoplayer2/d/b$a;

.field private final sh:Lcom/applovin/exoplayer2/d/b$b;

.field private final si:Z

.field private final sj:Z

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

.field private final sl:Lcom/applovin/exoplayer2/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/l/i<",
            "Lcom/applovin/exoplayer2/d/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private final sm:Lcom/applovin/exoplayer2/k/v;

.field final sn:Lcom/applovin/exoplayer2/d/r;

.field final so:Lcom/applovin/exoplayer2/d/b$e;

.field private sp:I

.field private sq:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sr:Lcom/applovin/exoplayer2/d/b$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ss:Lcom/applovin/exoplayer2/c/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private st:Lcom/applovin/exoplayer2/d/f$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private su:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sv:[B

.field private sw:Lcom/applovin/exoplayer2/d/m$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sx:Lcom/applovin/exoplayer2/d/m$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/applovin/exoplayer2/d/m;Lcom/applovin/exoplayer2/d/b$a;Lcom/applovin/exoplayer2/d/b$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/applovin/exoplayer2/d/r;Landroid/os/Looper;Lcom/applovin/exoplayer2/k/v;)V
    .registers 15
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/applovin/exoplayer2/d/m;",
            "Lcom/applovin/exoplayer2/d/b$a;",
            "Lcom/applovin/exoplayer2/d/b$b;",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/d/e$a;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applovin/exoplayer2/d/r;",
            "Landroid/os/Looper;",
            "Lcom/applovin/exoplayer2/k/v;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_9

    const/4 v0, 0x3

    if-ne p6, v0, :cond_c

    :cond_9
    invoke-static {p9}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b;->ey:Ljava/util/UUID;

    iput-object p3, p0, Lcom/applovin/exoplayer2/d/b;->sg:Lcom/applovin/exoplayer2/d/b$a;

    iput-object p4, p0, Lcom/applovin/exoplayer2/d/b;->sh:Lcom/applovin/exoplayer2/d/b$b;

    iput-object p2, p0, Lcom/applovin/exoplayer2/d/b;->sf:Lcom/applovin/exoplayer2/d/m;

    iput p6, p0, Lcom/applovin/exoplayer2/d/b;->rm:I

    iput-boolean p7, p0, Lcom/applovin/exoplayer2/d/b;->si:Z

    iput-boolean p8, p0, Lcom/applovin/exoplayer2/d/b;->sj:Z

    if-eqz p9, :cond_22

    iput-object p9, p0, Lcom/applovin/exoplayer2/d/b;->sv:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b;->se:Ljava/util/List;

    goto :goto_2e

    :cond_22
    invoke-static {p5}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b;->se:Ljava/util/List;

    :goto_2e
    iput-object p10, p0, Lcom/applovin/exoplayer2/d/b;->sk:Ljava/util/HashMap;

    iput-object p11, p0, Lcom/applovin/exoplayer2/d/b;->sn:Lcom/applovin/exoplayer2/d/r;

    new-instance p1, Lcom/applovin/exoplayer2/l/i;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/i;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sl:Lcom/applovin/exoplayer2/l/i;

    iput-object p13, p0, Lcom/applovin/exoplayer2/d/b;->sm:Lcom/applovin/exoplayer2/k/v;

    const/4 p1, 0x2

    iput p1, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    new-instance p1, Lcom/applovin/exoplayer2/d/b$e;

    invoke-direct {p1, p0, p12}, Lcom/applovin/exoplayer2/d/b$e;-><init>(Lcom/applovin/exoplayer2/d/b;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b;->so:Lcom/applovin/exoplayer2/d/b$e;

    return-void
.end method

.method private J(Z)V
    .registers 10

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/d/b;->sj:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->su:[B

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Lcom/applovin/exoplayer2/d/b;->rm:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_3a

    if-eq v1, v2, :cond_3a

    if-eq v1, v3, :cond_2c

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1c

    goto/16 :goto_8b

    :cond_1c
    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b;->sv:[B

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b;->su:[B

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b;->sv:[B

    invoke-direct {p0, v1, v0, p1}, Lcom/applovin/exoplayer2/d/b;->a([BIZ)V

    goto :goto_8b

    :cond_2c
    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b;->sv:[B

    if-eqz v1, :cond_36

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/b;->hy()Z

    move-result v1

    if-eqz v1, :cond_8b

    :cond_36
    invoke-direct {p0, v0, v3, p1}, Lcom/applovin/exoplayer2/d/b;->a([BIZ)V

    goto :goto_8b

    :cond_3a
    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b;->sv:[B

    if-nez v1, :cond_42

    invoke-direct {p0, v0, v2, p1}, Lcom/applovin/exoplayer2/d/b;->a([BIZ)V

    goto :goto_8b

    :cond_42
    iget v1, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4d

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/b;->hy()Z

    move-result v1

    if-eqz v1, :cond_8b

    :cond_4d
    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/b;->hz()J

    move-result-wide v4

    iget v1, p0, Lcom/applovin/exoplayer2/d/b;->rm:I

    if-nez v1, :cond_75

    const-wide/16 v6, 0x3c

    cmp-long v1, v4, v6

    if-gtz v1, :cond_75

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v1}, Lcom/applovin/exoplayer2/l/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3, p1}, Lcom/applovin/exoplayer2/d/b;->a([BIZ)V

    goto :goto_8b

    :cond_75
    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    if-gtz p1, :cond_84

    new-instance p1, Lcom/applovin/exoplayer2/d/q;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/d/q;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/applovin/exoplayer2/d/b;->a(Ljava/lang/Exception;I)V

    goto :goto_8b

    :cond_84
    iput v2, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    sget-object p1, Lcom/applovin/exoplayer2/d/x;->a:Lcom/applovin/exoplayer2/d/x;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/l/h;)V

    :cond_8b
    :goto_8b
    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/d/b;)Lcom/applovin/exoplayer2/k/v;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/d/b;->sm:Lcom/applovin/exoplayer2/k/v;

    return-object p0
.end method

.method private static synthetic a(ILcom/applovin/exoplayer2/d/g$a;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/applovin/exoplayer2/d/g$a;->bF(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/d/b;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/d/b;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/l/h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/l/h<",
            "Lcom/applovin/exoplayer2/d/g$a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sl:Lcom/applovin/exoplayer2/l/i;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/i;->gN()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/d/g$a;

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/l/h;->accept(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private a(Ljava/lang/Exception;I)V
    .registers 4

    new-instance v0, Lcom/applovin/exoplayer2/d/f$a;

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/d/j;->b(Ljava/lang/Exception;I)I

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/applovin/exoplayer2/d/f$a;-><init>(Ljava/lang/Throwable;I)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/d/b;->st:Lcom/applovin/exoplayer2/d/f$a;

    const-string p2, "DefaultDrmSession"

    const-string v0, "DRM session error"

    invoke-static {p2, v0, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lcom/applovin/exoplayer2/d/z;

    invoke-direct {p2, p1}, Lcom/applovin/exoplayer2/d/z;-><init>(Ljava/lang/Exception;)V

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/l/h;)V

    iget p1, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_22

    const/4 p1, 0x1

    iput p1, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    :cond_22
    return-void
.end method

.method private static synthetic a(Ljava/lang/Exception;Lcom/applovin/exoplayer2/d/g$a;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/applovin/exoplayer2/d/g$a;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method private a([BIZ)V
    .registers 8

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b;->sf:Lcom/applovin/exoplayer2/d/m;

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/b;->se:Ljava/util/List;

    iget-object v3, p0, Lcom/applovin/exoplayer2/d/b;->sk:Ljava/util/HashMap;

    invoke-interface {v1, p1, v2, p2, v3}, Lcom/applovin/exoplayer2/d/m;->a([BLjava/util/List;ILjava/util/HashMap;)Lcom/applovin/exoplayer2/d/m$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sw:Lcom/applovin/exoplayer2/d/m$a;

    iget-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sr:Lcom/applovin/exoplayer2/d/b$c;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/d/b$c;

    iget-object p2, p0, Lcom/applovin/exoplayer2/d/b;->sw:Lcom/applovin/exoplayer2/d/m$a;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3}, Lcom/applovin/exoplayer2/d/b$c;->a(ILjava/lang/Object;Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p1

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/d/b;->b(Ljava/lang/Exception;Z)V

    :goto_23
    return-void
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/d/b;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/d/b;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Exception;Z)V
    .registers 4

    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sg:Lcom/applovin/exoplayer2/d/b$a;

    invoke-interface {p1, p0}, Lcom/applovin/exoplayer2/d/b$a;->b(Lcom/applovin/exoplayer2/d/b;)V

    goto :goto_12

    :cond_a
    if-eqz p2, :cond_e

    const/4 p2, 0x1

    goto :goto_f

    :cond_e
    const/4 p2, 0x2

    :goto_f
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/d/b;->a(Ljava/lang/Exception;I)V

    :goto_12
    return-void
.end method

.method public static synthetic c(ILcom/applovin/exoplayer2/d/g$a;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/d/b;->a(ILcom/applovin/exoplayer2/d/g$a;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Exception;Lcom/applovin/exoplayer2/d/g$a;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/d/b;->a(Ljava/lang/Exception;Lcom/applovin/exoplayer2/d/g$a;)V

    return-void
.end method

.method private hA()V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/d/b;->rm:I

    if-nez v0, :cond_12

    iget v0, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->su:[B

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/d/b;->J(Z)V

    :cond_12
    return-void
.end method

.method private hB()Z
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private hx()Z
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/b;->hB()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sf:Lcom/applovin/exoplayer2/d/m;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/m;->hL()[B

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/d/b;->su:[B

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/b;->sf:Lcom/applovin/exoplayer2/d/m;

    invoke-interface {v2, v0}, Lcom/applovin/exoplayer2/d/m;->s([B)Lcom/applovin/exoplayer2/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/d/b;->ss:Lcom/applovin/exoplayer2/c/b;

    const/4 v0, 0x3

    iput v0, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    new-instance v2, Lcom/applovin/exoplayer2/d/y;

    invoke-direct {v2, v0}, Lcom/applovin/exoplayer2/d/y;-><init>(I)V

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/l/h;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->su:[B

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Landroid/media/NotProvisionedException; {:try_start_8 .. :try_end_28} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_29

    return v1

    :catch_29
    move-exception v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/d/b;->a(Ljava/lang/Exception;I)V

    goto :goto_33

    :catch_2e
    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sg:Lcom/applovin/exoplayer2/d/b$a;

    invoke-interface {v0, p0}, Lcom/applovin/exoplayer2/d/b$a;->b(Lcom/applovin/exoplayer2/d/b;)V

    :goto_33
    const/4 v0, 0x0

    return v0
.end method

.method private hy()Z
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b;->sf:Lcom/applovin/exoplayer2/d/m;

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/b;->su:[B

    iget-object v3, p0, Lcom/applovin/exoplayer2/d/b;->sv:[B

    invoke-interface {v1, v2, v3}, Lcom/applovin/exoplayer2/d/m;->b([B[B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v1

    invoke-direct {p0, v1, v0}, Lcom/applovin/exoplayer2/d/b;->a(Ljava/lang/Exception;I)V

    const/4 v0, 0x0

    return v0
.end method

.method private hz()J
    .registers 6

    sget-object v0, Lcom/applovin/exoplayer2/h;->am:Ljava/util/UUID;

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b;->ey:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_10
    invoke-static {p0}, Lcom/applovin/exoplayer2/d/u;->b(Lcom/applovin/exoplayer2/d/f;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private o(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sx:Lcom/applovin/exoplayer2/d/m$d;

    if-ne p1, v0, :cond_34

    iget p1, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/b;->hB()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_34

    :cond_10
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sx:Lcom/applovin/exoplayer2/d/m$d;

    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sg:Lcom/applovin/exoplayer2/d/b$a;

    check-cast p2, Ljava/lang/Exception;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/applovin/exoplayer2/d/b$a;->a(Ljava/lang/Exception;Z)V

    return-void

    :cond_20
    :try_start_20
    iget-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sf:Lcom/applovin/exoplayer2/d/m;

    check-cast p2, [B

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/d/m;->q([B)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_2d

    iget-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sg:Lcom/applovin/exoplayer2/d/b$a;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/d/b$a;->hr()V

    return-void

    :catch_2d
    move-exception p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/d/b;->sg:Lcom/applovin/exoplayer2/d/b$a;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/applovin/exoplayer2/d/b$a;->a(Ljava/lang/Exception;Z)V

    :cond_34
    :goto_34
    return-void
.end method

.method private p(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sw:Lcom/applovin/exoplayer2/d/m$a;

    if-ne p1, v0, :cond_5b

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/b;->hB()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_5b

    :cond_b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sw:Lcom/applovin/exoplayer2/d/m$a;

    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_19

    check-cast p2, Ljava/lang/Exception;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/applovin/exoplayer2/d/b;->b(Ljava/lang/Exception;Z)V

    return-void

    :cond_19
    :try_start_19
    check-cast p2, [B

    iget p1, p0, Lcom/applovin/exoplayer2/d/b;->rm:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_33

    iget-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sf:Lcom/applovin/exoplayer2/d/m;

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sv:[B

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p1, v0, p2}, Lcom/applovin/exoplayer2/d/m;->a([B[B)[B

    sget-object p1, Lcom/applovin/exoplayer2/d/w;->a:Lcom/applovin/exoplayer2/d/w;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/l/h;)V

    goto :goto_5b

    :cond_33
    iget-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sf:Lcom/applovin/exoplayer2/d/m;

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->su:[B

    invoke-interface {p1, v0, p2}, Lcom/applovin/exoplayer2/d/m;->a([B[B)[B

    move-result-object p1

    iget p2, p0, Lcom/applovin/exoplayer2/d/b;->rm:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_46

    if-nez p2, :cond_4d

    iget-object p2, p0, Lcom/applovin/exoplayer2/d/b;->sv:[B

    if-eqz p2, :cond_4d

    :cond_46
    if-eqz p1, :cond_4d

    array-length p2, p1

    if-eqz p2, :cond_4d

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sv:[B

    :cond_4d
    const/4 p1, 0x4

    iput p1, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    sget-object p1, Lcom/applovin/exoplayer2/d/v;->a:Lcom/applovin/exoplayer2/d/v;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/l/h;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_55} :catch_56

    goto :goto_5b

    :catch_56
    move-exception p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/d/b;->b(Ljava/lang/Exception;Z)V

    :cond_5b
    :goto_5b
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sf:Lcom/applovin/exoplayer2/d/m;

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b;->su:[B

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/d/m;->a([BLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final P()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    return v0
.end method

.method public a(Lcom/applovin/exoplayer2/d/g$a;)V
    .registers 5
    .param p1    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget v0, p0, Lcom/applovin/exoplayer2/d/b;->sp:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sl:Lcom/applovin/exoplayer2/l/i;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/i;->add(Ljava/lang/Object;)V

    :cond_13
    iget v0, p0, Lcom/applovin/exoplayer2/d/b;->sp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/applovin/exoplayer2/d/b;->sp:I

    if-ne v0, v2, :cond_46

    iget p1, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    const/4 v1, 0x1

    :cond_20
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:DrmRequestHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sq:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/applovin/exoplayer2/d/b$c;

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sq:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/applovin/exoplayer2/d/b$c;-><init>(Lcom/applovin/exoplayer2/d/b;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sr:Lcom/applovin/exoplayer2/d/b$c;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/b;->hx()Z

    move-result p1

    if-eqz p1, :cond_5b

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/d/b;->J(Z)V

    goto :goto_5b

    :cond_46
    if-eqz p1, :cond_5b

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/b;->hB()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sl:Lcom/applovin/exoplayer2/l/i;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/i;->P(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v2, :cond_5b

    iget v0, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/d/g$a;->bF(I)V

    :cond_5b
    :goto_5b
    iget-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sh:Lcom/applovin/exoplayer2/d/b$b;

    iget v0, p0, Lcom/applovin/exoplayer2/d/b;->sp:I

    invoke-interface {p1, p0, v0}, Lcom/applovin/exoplayer2/d/b$b;->a(Lcom/applovin/exoplayer2/d/b;I)V

    return-void
.end method

.method public a(Ljava/lang/Exception;Z)V
    .registers 3

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x3

    :goto_5
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/d/b;->a(Ljava/lang/Exception;I)V

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/d/g$a;)V
    .registers 5
    .param p1    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget v0, p0, Lcom/applovin/exoplayer2/d/b;->sp:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget v0, p0, Lcom/applovin/exoplayer2/d/b;->sp:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/d/b;->sp:I

    if-nez v0, :cond_4e

    iput v2, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->so:Lcom/applovin/exoplayer2/d/b$e;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/d/b$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sr:Lcom/applovin/exoplayer2/d/b$c;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/d/b$c;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/d/b$c;->release()V

    iput-object v1, p0, Lcom/applovin/exoplayer2/d/b;->sr:Lcom/applovin/exoplayer2/d/b$c;

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sq:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/applovin/exoplayer2/d/b;->sq:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/applovin/exoplayer2/d/b;->ss:Lcom/applovin/exoplayer2/c/b;

    iput-object v1, p0, Lcom/applovin/exoplayer2/d/b;->st:Lcom/applovin/exoplayer2/d/f$a;

    iput-object v1, p0, Lcom/applovin/exoplayer2/d/b;->sw:Lcom/applovin/exoplayer2/d/m$a;

    iput-object v1, p0, Lcom/applovin/exoplayer2/d/b;->sx:Lcom/applovin/exoplayer2/d/m$d;

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->su:[B

    if-eqz v0, :cond_4e

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/b;->sf:Lcom/applovin/exoplayer2/d/m;

    invoke-interface {v2, v0}, Lcom/applovin/exoplayer2/d/m;->p([B)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/d/b;->su:[B

    :cond_4e
    if-eqz p1, :cond_60

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sl:Lcom/applovin/exoplayer2/l/i;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/i;->O(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sl:Lcom/applovin/exoplayer2/l/i;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/i;->P(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/d/g$a;->hJ()V

    :cond_60
    iget-object p1, p0, Lcom/applovin/exoplayer2/d/b;->sh:Lcom/applovin/exoplayer2/d/b$b;

    iget v0, p0, Lcom/applovin/exoplayer2/d/b;->sp:I

    invoke-interface {p1, p0, v0}, Lcom/applovin/exoplayer2/d/b$b;->b(Lcom/applovin/exoplayer2/d/b;I)V

    return-void
.end method

.method public bB(I)V
    .registers 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    goto :goto_7

    :cond_4
    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/b;->hA()V

    :goto_7
    return-void
.end method

.method public hq()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sf:Lcom/applovin/exoplayer2/d/m;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/m;->hM()Lcom/applovin/exoplayer2/d/m$d;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sx:Lcom/applovin/exoplayer2/d/m$d;

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->sr:Lcom/applovin/exoplayer2/d/b$c;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/d/b$c;

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b;->sx:Lcom/applovin/exoplayer2/d/m$d;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/applovin/exoplayer2/d/b$c;->a(ILjava/lang/Object;Z)V

    return-void
.end method

.method public hr()V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d/b;->hx()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/d/b;->J(Z)V

    :cond_a
    return-void
.end method

.method public hs()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/d/b;->si:Z

    return v0
.end method

.method public final ht()Lcom/applovin/exoplayer2/d/f$a;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/d/b;->Z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->st:Lcom/applovin/exoplayer2/d/f$a;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public final hu()Ljava/util/UUID;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->ey:Ljava/util/UUID;

    return-object v0
.end method

.method public final hv()Lcom/applovin/exoplayer2/c/b;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->ss:Lcom/applovin/exoplayer2/c/b;

    return-object v0
.end method

.method public hw()Ljava/util/Map;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->su:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b;->sf:Lcom/applovin/exoplayer2/d/m;

    invoke-interface {v1, v0}, Lcom/applovin/exoplayer2/d/m;->r([B)Ljava/util/Map;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public n([B)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/b;->su:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

###### Class com.applovin.exoplayer2.d.b.a (com.applovin.exoplayer2.d.b$a)
.class public interface abstract Lcom/applovin/exoplayer2/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Exception;Z)V
.end method

.method public abstract b(Lcom/applovin/exoplayer2/d/b;)V
.end method

.method public abstract hr()V
.end method

###### Class com.applovin.exoplayer2.d.b.InterfaceC0026b (com.applovin.exoplayer2.d.b$b)
.class public interface abstract Lcom/applovin/exoplayer2/d/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Lcom/applovin/exoplayer2/d/b;I)V
.end method

.method public abstract b(Lcom/applovin/exoplayer2/d/b;I)V
.end method

###### Class com.applovin.exoplayer2.d.b.c (com.applovin.exoplayer2.d.b$c)
.class Lcom/applovin/exoplayer2/d/b$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private sy:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final synthetic sz:Lcom/applovin/exoplayer2/d/b;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/d/b;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b$c;->sz:Lcom/applovin/exoplayer2/d/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(Landroid/os/Message;Lcom/applovin/exoplayer2/d/s;)Z
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/applovin/exoplayer2/d/b$d;

    iget-boolean v4, v3, Lcom/applovin/exoplayer2/d/b$d;->sB:Z

    const/4 v5, 0x0

    if-nez v4, :cond_10

    return v5

    :cond_10
    iget v4, v3, Lcom/applovin/exoplayer2/d/b$d;->sE:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v3, Lcom/applovin/exoplayer2/d/b$d;->sE:I

    iget-object v7, v1, Lcom/applovin/exoplayer2/d/b$c;->sz:Lcom/applovin/exoplayer2/d/b;

    invoke-static {v7}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/d/b;)Lcom/applovin/exoplayer2/k/v;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Lcom/applovin/exoplayer2/k/v;->fl(I)I

    move-result v7

    if-le v4, v7, :cond_24

    return v5

    :cond_24
    new-instance v4, Lcom/applovin/exoplayer2/h/j;

    iget-wide v10, v3, Lcom/applovin/exoplayer2/d/b$d;->sA:J

    iget-object v12, v2, Lcom/applovin/exoplayer2/d/s;->tw:Lcom/applovin/exoplayer2/k/l;

    iget-object v13, v2, Lcom/applovin/exoplayer2/d/s;->tx:Landroid/net/Uri;

    iget-object v14, v2, Lcom/applovin/exoplayer2/d/s;->ty:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    iget-wide v6, v3, Lcom/applovin/exoplayer2/d/b$d;->sC:J

    sub-long v17, v17, v6

    iget-wide v6, v2, Lcom/applovin/exoplayer2/d/s;->tz:J

    move-object v9, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v9 .. v20}, Lcom/applovin/exoplayer2/h/j;-><init>(JLcom/applovin/exoplayer2/k/l;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v6, Lcom/applovin/exoplayer2/h/m;

    invoke-direct {v6, v8}, Lcom/applovin/exoplayer2/h/m;-><init>(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/io/IOException;

    if-eqz v7, :cond_56

    invoke-virtual/range {p2 .. p2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    goto :goto_60

    :cond_56
    new-instance v7, Lcom/applovin/exoplayer2/d/b$f;

    invoke-virtual/range {p2 .. p2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/applovin/exoplayer2/d/b$f;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v7

    :goto_60
    iget-object v7, v1, Lcom/applovin/exoplayer2/d/b$c;->sz:Lcom/applovin/exoplayer2/d/b;

    invoke-static {v7}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/d/b;)Lcom/applovin/exoplayer2/k/v;

    move-result-object v7

    new-instance v8, Lcom/applovin/exoplayer2/k/v$a;

    iget v3, v3, Lcom/applovin/exoplayer2/d/b$d;->sE:I

    invoke-direct {v8, v4, v6, v2, v3}, Lcom/applovin/exoplayer2/k/v$a;-><init>(Lcom/applovin/exoplayer2/h/j;Lcom/applovin/exoplayer2/h/m;Ljava/io/IOException;I)V

    invoke-interface {v7, v8}, Lcom/applovin/exoplayer2/k/v;->a(Lcom/applovin/exoplayer2/k/v$a;)J

    move-result-wide v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v6

    if-nez v4, :cond_7b

    return v5

    :cond_7b
    monitor-enter p0

    :try_start_7c
    iget-boolean v4, v1, Lcom/applovin/exoplayer2/d/b$c;->sy:Z

    if-nez v4, :cond_8a

    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_8a
    monitor-exit p0

    return v5

    :catchall_8c
    move-exception v0

    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_7c .. :try_end_8e} :catchall_8c

    throw v0
.end method


# virtual methods
.method a(ILjava/lang/Object;Z)V
    .registers 12

    new-instance v7, Lcom/applovin/exoplayer2/d/b$d;

    invoke-static {}, Lcom/applovin/exoplayer2/h/j;->kV()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, v7

    move v3, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/d/b$d;-><init>(JZJLjava/lang/Object;)V

    invoke-virtual {p0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/applovin/exoplayer2/d/b$d;

    :try_start_4
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_20

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b$c;->sz:Lcom/applovin/exoplayer2/d/b;

    iget-object v2, v1, Lcom/applovin/exoplayer2/d/b;->sn:Lcom/applovin/exoplayer2/d/r;

    iget-object v1, v1, Lcom/applovin/exoplayer2/d/b;->ey:Ljava/util/UUID;

    iget-object v3, v0, Lcom/applovin/exoplayer2/d/b$d;->sD:Ljava/lang/Object;

    check-cast v3, Lcom/applovin/exoplayer2/d/m$a;

    invoke-interface {v2, v1, v3}, Lcom/applovin/exoplayer2/d/r;->a(Ljava/util/UUID;Lcom/applovin/exoplayer2/d/m$a;)[B

    move-result-object v1

    goto :goto_40

    :cond_1a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    :cond_20
    iget-object v1, p0, Lcom/applovin/exoplayer2/d/b$c;->sz:Lcom/applovin/exoplayer2/d/b;

    iget-object v2, v1, Lcom/applovin/exoplayer2/d/b;->sn:Lcom/applovin/exoplayer2/d/r;

    iget-object v1, v1, Lcom/applovin/exoplayer2/d/b;->ey:Ljava/util/UUID;

    iget-object v3, v0, Lcom/applovin/exoplayer2/d/b$d;->sD:Ljava/lang/Object;

    check-cast v3, Lcom/applovin/exoplayer2/d/m$d;

    invoke-interface {v2, v1, v3}, Lcom/applovin/exoplayer2/d/r;->a(Ljava/util/UUID;Lcom/applovin/exoplayer2/d/m$d;)[B

    move-result-object v1
    :try_end_2e
    .catch Lcom/applovin/exoplayer2/d/s; {:try_start_4 .. :try_end_2e} :catch_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_2f

    goto :goto_40

    :catch_2f
    move-exception v1

    const-string v2, "DefaultDrmSession"

    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    invoke-static {v2, v3, v1}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40

    :catch_38
    move-exception v1

    invoke-direct {p0, p1, v1}, Lcom/applovin/exoplayer2/d/b$c;->a(Landroid/os/Message;Lcom/applovin/exoplayer2/d/s;)Z

    move-result v2

    if-eqz v2, :cond_40

    return-void

    :cond_40
    :goto_40
    iget-object v2, p0, Lcom/applovin/exoplayer2/d/b$c;->sz:Lcom/applovin/exoplayer2/d/b;

    invoke-static {v2}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/d/b;)Lcom/applovin/exoplayer2/k/v;

    move-result-object v2

    iget-wide v3, v0, Lcom/applovin/exoplayer2/d/b$d;->sA:J

    invoke-interface {v2, v3, v4}, Lcom/applovin/exoplayer2/k/v;->bm(J)V

    monitor-enter p0

    :try_start_4c
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/d/b$c;->sy:Z

    if-nez v2, :cond_63

    iget-object v2, p0, Lcom/applovin/exoplayer2/d/b$c;->sz:Lcom/applovin/exoplayer2/d/b;

    iget-object v2, v2, Lcom/applovin/exoplayer2/d/b;->so:Lcom/applovin/exoplayer2/d/b$e;

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lcom/applovin/exoplayer2/d/b$d;->sD:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_63
    monitor-exit p0

    return-void

    :catchall_65
    move-exception p1

    monitor-exit p0
    :try_end_67
    .catchall {:try_start_4c .. :try_end_67} :catchall_65

    throw p1
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/d/b$c;->sy:Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.applovin.exoplayer2.d.b.d (com.applovin.exoplayer2.d.b$d)
.class final Lcom/applovin/exoplayer2/d/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final sA:J

.field public final sB:Z

.field public final sC:J

.field public final sD:Ljava/lang/Object;

.field public sE:I


# direct methods
.method public constructor <init>(JZJLjava/lang/Object;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/d/b$d;->sA:J

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/d/b$d;->sB:Z

    iput-wide p4, p0, Lcom/applovin/exoplayer2/d/b$d;->sC:J

    iput-object p6, p0, Lcom/applovin/exoplayer2/d/b$d;->sD:Ljava/lang/Object;

    return-void
.end method

###### Class com.applovin.exoplayer2.d.b.e (com.applovin.exoplayer2.d.b$e)
.class Lcom/applovin/exoplayer2/d/b$e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic sz:Lcom/applovin/exoplayer2/d/b;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/d/b;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/b$e;->sz:Lcom/applovin/exoplayer2/d/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_16

    const/4 v2, 0x1

    if-eq p1, v2, :cond_10

    goto :goto_1b

    :cond_10
    iget-object p1, p0, Lcom/applovin/exoplayer2/d/b$e;->sz:Lcom/applovin/exoplayer2/d/b;

    invoke-static {p1, v1, v0}, Lcom/applovin/exoplayer2/d/b;->b(Lcom/applovin/exoplayer2/d/b;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b

    :cond_16
    iget-object p1, p0, Lcom/applovin/exoplayer2/d/b$e;->sz:Lcom/applovin/exoplayer2/d/b;

    invoke-static {p1, v1, v0}, Lcom/applovin/exoplayer2/d/b;->a(Lcom/applovin/exoplayer2/d/b;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1b
    return-void
.end method

###### Class com.applovin.exoplayer2.d.b.f (com.applovin.exoplayer2.d.b$f)
.class public final Lcom/applovin/exoplayer2/d/b$f;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.applovin.exoplayer2.d.v (com.applovin.exoplayer2.d.v)
.class public final synthetic Lcom/applovin/exoplayer2/d/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/h;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/d/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/d/v;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/d/v;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/d/v;->a:Lcom/applovin/exoplayer2/d/v;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/d/g$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/d/g$a;->hG()V

    return-void
.end method

###### Class com.applovin.exoplayer2.d.w (com.applovin.exoplayer2.d.w)
.class public final synthetic Lcom/applovin/exoplayer2/d/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/h;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/d/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/d/w;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/d/w;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/d/w;->a:Lcom/applovin/exoplayer2/d/w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/d/g$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/d/g$a;->hI()V

    return-void
.end method

###### Class com.applovin.exoplayer2.d.x (com.applovin.exoplayer2.d.x)
.class public final synthetic Lcom/applovin/exoplayer2/d/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/h;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/d/x;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/d/x;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/d/x;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/d/x;->a:Lcom/applovin/exoplayer2/d/x;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/d/g$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/d/g$a;->hH()V

    return-void
.end method

###### Class com.applovin.exoplayer2.d.y (com.applovin.exoplayer2.d.y)
.class public final synthetic Lcom/applovin/exoplayer2/d/y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/h;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/d/y;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/d/y;->a:I

    check-cast p1, Lcom/applovin/exoplayer2/d/g$a;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/d/b;->c(ILcom/applovin/exoplayer2/d/g$a;)V

    return-void
.end method

###### Class com.applovin.exoplayer2.d.z (com.applovin.exoplayer2.d.z)
.class public final synthetic Lcom/applovin/exoplayer2/d/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/l/h;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/z;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/z;->a:Ljava/lang/Exception;

    check-cast p1, Lcom/applovin/exoplayer2/d/g$a;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/d/b;->d(Ljava/lang/Exception;Lcom/applovin/exoplayer2/d/g$a;)V

    return-void
.end method
