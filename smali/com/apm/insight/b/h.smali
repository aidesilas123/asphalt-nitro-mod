###### Class com.apm.insight.b.h (com.apm.insight.b.h)
.class public Lcom/apm/insight/b/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/b/h$c;,
        Lcom/apm/insight/b/h$d;,
        Lcom/apm/insight/b/h$a;,
        Lcom/apm/insight/b/h$b;,
        Lcom/apm/insight/b/h$e;,
        Lcom/apm/insight/b/h$f;
    }
.end annotation


# static fields
.field public static b:Z = false

.field private static t:I = 0x2


# instance fields
.field a:Lcom/apm/insight/b/h$c;

.field private c:I

.field private volatile d:I

.field private e:I

.field private f:I

.field private g:Lcom/apm/insight/b/h$f;

.field private h:Lcom/apm/insight/b/h$b;

.field private i:J

.field private j:J

.field private k:I

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/apm/insight/b/e;

.field private volatile p:Z

.field private q:Z

.field private final r:Lcom/apm/insight/runtime/u;

.field private volatile s:Z

.field private u:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apm/insight/b/h;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/apm/insight/b/h;->c:I

    iput p1, p0, Lcom/apm/insight/b/h;->d:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/apm/insight/b/h;->e:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/apm/insight/b/h;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apm/insight/b/h;->i:J

    iput-wide v0, p0, Lcom/apm/insight/b/h;->j:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/apm/insight/b/h;->k:I

    iput-wide v0, p0, Lcom/apm/insight/b/h;->l:J

    iput-boolean p1, p0, Lcom/apm/insight/b/h;->p:Z

    iput-boolean p1, p0, Lcom/apm/insight/b/h;->q:Z

    iput-boolean p1, p0, Lcom/apm/insight/b/h;->s:Z

    new-instance p1, Lcom/apm/insight/b/h$2;

    invoke-direct {p1, p0}, Lcom/apm/insight/b/h$2;-><init>(Lcom/apm/insight/b/h;)V

    iput-object p1, p0, Lcom/apm/insight/b/h;->u:Ljava/lang/Runnable;

    new-instance p1, Lcom/apm/insight/b/h$1;

    invoke-direct {p1, p0}, Lcom/apm/insight/b/h$1;-><init>(Lcom/apm/insight/b/h;)V

    iput-object p1, p0, Lcom/apm/insight/b/h;->a:Lcom/apm/insight/b/h$c;

    if-nez p2, :cond_3a

    sget-boolean p1, Lcom/apm/insight/b/h;->b:Z

    if-eqz p1, :cond_36

    goto :goto_3a

    :cond_36
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apm/insight/b/h;->r:Lcom/apm/insight/runtime/u;

    goto :goto_56

    :cond_3a
    :goto_3a
    new-instance p1, Lcom/apm/insight/runtime/u;

    const-string p2, "looper_monitor"

    invoke-direct {p1, p2}, Lcom/apm/insight/runtime/u;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/apm/insight/b/h;->r:Lcom/apm/insight/runtime/u;

    invoke-virtual {p1}, Lcom/apm/insight/runtime/u;->b()V

    new-instance p2, Lcom/apm/insight/b/h$b;

    const/16 v0, 0x12c

    invoke-direct {p2, v0}, Lcom/apm/insight/b/h$b;-><init>(I)V

    iput-object p2, p0, Lcom/apm/insight/b/h;->h:Lcom/apm/insight/b/h$b;

    iget-object p2, p0, Lcom/apm/insight/b/h;->u:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Lcom/apm/insight/runtime/u;->a(Ljava/lang/Runnable;J)Z

    :goto_56
    return-void
.end method

.method private static a(I)J
    .registers 3

    const-wide/16 v0, 0x0

    if-gez p0, :cond_5

    return-wide v0

    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/apm/insight/runtime/g;->a(I)J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_9

    :catchall_9
    return-wide v0
.end method

.method static synthetic a(Lcom/apm/insight/b/h;)Lcom/apm/insight/b/h$b;
    .registers 1

    iget-object p0, p0, Lcom/apm/insight/b/h;->h:Lcom/apm/insight/b/h$b;

    return-object p0
.end method

.method static synthetic a(Lcom/apm/insight/b/h;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/apm/insight/b/h;->n:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, ")"

    const-string v1, " "

    const-string v2, "@"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string p0, "unknown message"

    return-object p0

    :cond_f
    :try_start_f
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_a3

    const/4 v5, 0x2

    const-string v6, ""

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1f

    :try_start_1c
    aget-object v3, v3, v7

    goto :goto_20

    :cond_1f
    move-object v3, v6

    :goto_20
    const-string/jumbo v4, "{"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_53

    const-string/jumbo v4, "}"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_53

    const-string v4, "\\{"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_a3

    :try_start_3b
    const-string v8, "\\}"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_54

    :cond_53
    move-object v4, p0

    :goto_54
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v8, v2

    if-le v8, v7, :cond_63

    aget-object p0, v2, v5

    :cond_63
    const-string v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_88

    const-string v2, " null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "\\("

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    if-le v5, v7, :cond_84

    aget-object p0, v2, v7

    :cond_84
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_88
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_a1
    .catchall {:try_start_3b .. :try_end_a1} :catchall_a2

    return-object p0

    :catchall_a2
    move-object p0, v4

    :catchall_a3
    return-object p0
.end method

.method private a(IJLjava/lang/String;)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/apm/insight/b/h;->a(IJLjava/lang/String;Z)V

    return-void
.end method

.method private a(IJLjava/lang/String;Z)V
    .registers 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apm/insight/b/h;->q:Z

    iget-object v0, p0, Lcom/apm/insight/b/h;->g:Lcom/apm/insight/b/h$f;

    invoke-virtual {v0, p1}, Lcom/apm/insight/b/h$f;->a(I)Lcom/apm/insight/b/h$e;

    move-result-object p1

    iget-wide v0, p0, Lcom/apm/insight/b/h;->i:J

    sub-long v0, p2, v0

    iput-wide v0, p1, Lcom/apm/insight/b/h$e;->f:J

    if-eqz p5, :cond_1e

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/apm/insight/b/h;->l:J

    sub-long v2, v0, v2

    iput-wide v2, p1, Lcom/apm/insight/b/h$e;->g:J

    iput-wide v0, p0, Lcom/apm/insight/b/h;->l:J

    goto :goto_22

    :cond_1e
    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/apm/insight/b/h$e;->g:J

    :goto_22
    iget p5, p0, Lcom/apm/insight/b/h;->c:I

    iput p5, p1, Lcom/apm/insight/b/h$e;->e:I

    iput-object p4, p1, Lcom/apm/insight/b/h$e;->h:Ljava/lang/String;

    iget-object p4, p0, Lcom/apm/insight/b/h;->m:Ljava/lang/String;

    iput-object p4, p1, Lcom/apm/insight/b/h$e;->i:Ljava/lang/String;

    iget-wide p4, p0, Lcom/apm/insight/b/h;->i:J

    iput-wide p4, p1, Lcom/apm/insight/b/h$e;->a:J

    iput-wide p2, p1, Lcom/apm/insight/b/h$e;->b:J

    iget-wide p4, p0, Lcom/apm/insight/b/h;->j:J

    iput-wide p4, p1, Lcom/apm/insight/b/h$e;->c:J

    iget-object p4, p0, Lcom/apm/insight/b/h;->g:Lcom/apm/insight/b/h$f;

    invoke-virtual {p4, p1}, Lcom/apm/insight/b/h$f;->a(Lcom/apm/insight/b/h$e;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/apm/insight/b/h;->c:I

    iput-wide p2, p0, Lcom/apm/insight/b/h;->i:J

    return-void
.end method

.method static synthetic a(Lcom/apm/insight/b/h;ZJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/apm/insight/b/h;->a(ZJ)V

    return-void
.end method

.method private a(ZJ)V
    .registers 13

    iget v0, p0, Lcom/apm/insight/b/h;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/apm/insight/b/h;->d:I

    const v2, 0xffff

    and-int/2addr v0, v2

    iput v0, p0, Lcom/apm/insight/b/h;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apm/insight/b/h;->q:Z

    iget-wide v2, p0, Lcom/apm/insight/b/h;->i:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_19

    iput-wide p2, p0, Lcom/apm/insight/b/h;->i:J

    :cond_19
    iget-wide v2, p0, Lcom/apm/insight/b/h;->j:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_21

    iput-wide p2, p0, Lcom/apm/insight/b/h;->j:J

    :cond_21
    iget v0, p0, Lcom/apm/insight/b/h;->k:I

    if-gez v0, :cond_31

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/apm/insight/b/h;->k:I

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/apm/insight/b/h;->l:J

    :cond_31
    iget-wide v2, p0, Lcom/apm/insight/b/h;->i:J

    sub-long v2, p2, v2

    iget v0, p0, Lcom/apm/insight/b/h;->f:I

    int-to-long v4, v0

    cmp-long v6, v2, v4

    if-lez v6, :cond_80

    iget-wide v2, p0, Lcom/apm/insight/b/h;->j:J

    sub-long v4, p2, v2

    int-to-long v6, v0

    const/16 v0, 0x9

    cmp-long v8, v4, v6

    if-lez v8, :cond_7b

    if-eqz p1, :cond_5d

    iget v4, p0, Lcom/apm/insight/b/h;->c:I

    if-nez v4, :cond_53

    const-string v0, "no message running"

    invoke-direct {p0, v1, p2, p3, v0}, Lcom/apm/insight/b/h;->a(IJLjava/lang/String;)V

    goto :goto_80

    :cond_53
    iget-object v1, p0, Lcom/apm/insight/b/h;->m:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/apm/insight/b/h;->a(IJLjava/lang/String;)V

    const/4 v1, 0x1

    const/4 v5, 0x0

    const-string v4, "no message running"

    goto :goto_66

    :cond_5d
    iget v0, p0, Lcom/apm/insight/b/h;->c:I

    if-nez v0, :cond_68

    const/16 v1, 0x8

    iget-object v4, p0, Lcom/apm/insight/b/h;->n:Ljava/lang/String;

    const/4 v5, 0x1

    :goto_66
    move-object v0, p0

    goto :goto_76

    :cond_68
    const/16 v1, 0x9

    iget-object v4, p0, Lcom/apm/insight/b/h;->m:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/apm/insight/b/h;->a(IJLjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-object v4, p0, Lcom/apm/insight/b/h;->n:Ljava/lang/String;

    const/4 v5, 0x1

    :goto_76
    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/apm/insight/b/h;->a(IJLjava/lang/String;Z)V

    goto :goto_80

    :cond_7b
    iget-object v1, p0, Lcom/apm/insight/b/h;->n:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/apm/insight/b/h;->a(IJLjava/lang/String;)V

    :cond_80
    :goto_80
    iput-wide p2, p0, Lcom/apm/insight/b/h;->j:J

    return-void
.end method

.method static synthetic a(Lcom/apm/insight/b/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/apm/insight/b/h;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/apm/insight/b/h;)I
    .registers 1

    iget p0, p0, Lcom/apm/insight/b/h;->d:I

    return p0
.end method

.method static synthetic b(Lcom/apm/insight/b/h;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/apm/insight/b/h;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/apm/insight/b/h;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/apm/insight/b/h;->s:Z

    return p0
.end method

.method static synthetic d()I
    .registers 1

    sget v0, Lcom/apm/insight/b/h;->t:I

    return v0
.end method

.method static synthetic d(Lcom/apm/insight/b/h;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/apm/insight/b/h;->u:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcom/apm/insight/b/h;)Lcom/apm/insight/runtime/u;
    .registers 1

    iget-object p0, p0, Lcom/apm/insight/b/h;->r:Lcom/apm/insight/runtime/u;

    return-object p0
.end method

.method private e()V
    .registers 2

    const/16 v0, 0x64

    iput v0, p0, Lcom/apm/insight/b/h;->e:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/apm/insight/b/h;->f:I

    return-void
.end method

.method static synthetic f(Lcom/apm/insight/b/h;)I
    .registers 3

    iget v0, p0, Lcom/apm/insight/b/h;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/apm/insight/b/h;->c:I

    return v0
.end method

.method static synthetic g(Lcom/apm/insight/b/h;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/apm/insight/b/h;->n:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(J)Lcom/apm/insight/b/h$e;
    .registers 6

    new-instance v0, Lcom/apm/insight/b/h$e;

    invoke-direct {v0}, Lcom/apm/insight/b/h$e;-><init>()V

    iget-object v1, p0, Lcom/apm/insight/b/h;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/apm/insight/b/h$e;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/apm/insight/b/h;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/apm/insight/b/h$e;->i:Ljava/lang/String;

    iget-wide v1, p0, Lcom/apm/insight/b/h;->j:J

    sub-long/2addr p1, v1

    iput-wide p1, v0, Lcom/apm/insight/b/h$e;->f:J

    iget p1, p0, Lcom/apm/insight/b/h;->k:I

    invoke-static {p1}, Lcom/apm/insight/b/h;->a(I)J

    move-result-wide p1

    iget-wide v1, p0, Lcom/apm/insight/b/h;->l:J

    sub-long/2addr p1, v1

    iput-wide p1, v0, Lcom/apm/insight/b/h$e;->g:J

    iget p1, p0, Lcom/apm/insight/b/h;->c:I

    iput p1, v0, Lcom/apm/insight/b/h$e;->e:I

    return-object v0
.end method

.method public a()V
    .registers 3

    iget-boolean v0, p0, Lcom/apm/insight/b/h;->p:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apm/insight/b/h;->p:Z

    invoke-direct {p0}, Lcom/apm/insight/b/h;->e()V

    new-instance v0, Lcom/apm/insight/b/h$f;

    iget v1, p0, Lcom/apm/insight/b/h;->e:I

    invoke-direct {v0, v1}, Lcom/apm/insight/b/h$f;-><init>(I)V

    iput-object v0, p0, Lcom/apm/insight/b/h;->g:Lcom/apm/insight/b/h$f;

    new-instance v0, Lcom/apm/insight/b/h$3;

    invoke-direct {v0, p0}, Lcom/apm/insight/b/h$3;-><init>(Lcom/apm/insight/b/h;)V

    iput-object v0, p0, Lcom/apm/insight/b/h;->o:Lcom/apm/insight/b/e;

    invoke-static {}, Lcom/apm/insight/b/i;->a()V

    iget-object v0, p0, Lcom/apm/insight/b/h;->o:Lcom/apm/insight/b/e;

    invoke-static {v0}, Lcom/apm/insight/b/i;->a(Lcom/apm/insight/b/e;)V

    invoke-static {}, Lcom/apm/insight/b/k;->a()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/b/k;->a(Landroid/os/MessageQueue;)Landroid/os/Message;

    return-void
.end method

.method b()V
    .registers 1

    invoke-virtual {p0}, Lcom/apm/insight/b/h;->a()V

    return-void
.end method

.method public c()Lorg/json/JSONArray;
    .registers 6

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/apm/insight/b/h;->g:Lcom/apm/insight/b/h$f;

    invoke-virtual {v1}, Lcom/apm/insight/b/h$f;->a()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e

    return-object v0

    :cond_e
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apm/insight/b/h$e;

    if-nez v3, :cond_22

    goto :goto_13

    :cond_22
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Lcom/apm/insight/b/h$e;->a()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    goto :goto_13

    :catchall_32
    :cond_32
    return-object v0
.end method

###### Class com.apm.insight.b.h.AnonymousClass1 (com.apm.insight.b.h$1)
.class Lcom/apm/insight/b/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apm/insight/b/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/b/h;-><init>(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apm/insight/b/h;


# direct methods
.method constructor <init>(Lcom/apm/insight/b/h;)V
    .registers 2

    iput-object p1, p0, Lcom/apm/insight/b/h$1;->a:Lcom/apm/insight/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.apm.insight.b.h.AnonymousClass2 (com.apm.insight.b.h$2)
.class Lcom/apm/insight/b/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apm/insight/b/h;

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Lcom/apm/insight/b/h;)V
    .registers 4

    iput-object p1, p0, Lcom/apm/insight/b/h$2;->a:Lcom/apm/insight/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/apm/insight/b/h$2;->b:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/apm/insight/b/h$2;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/apm/insight/b/h$2;->e:I

    iput p1, p0, Lcom/apm/insight/b/h$2;->f:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/apm/insight/b/h$2;->a:Lcom/apm/insight/b/h;

    invoke-static {v2}, Lcom/apm/insight/b/h;->a(Lcom/apm/insight/b/h;)Lcom/apm/insight/b/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apm/insight/b/h$b;->a()Lcom/apm/insight/b/h$a;

    move-result-object v2

    iget v3, p0, Lcom/apm/insight/b/h$2;->d:I

    iget-object v4, p0, Lcom/apm/insight/b/h$2;->a:Lcom/apm/insight/b/h;

    invoke-static {v4}, Lcom/apm/insight/b/h;->b(Lcom/apm/insight/b/h;)I

    move-result v4

    if-ne v3, v4, :cond_1f

    iget v3, p0, Lcom/apm/insight/b/h$2;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/apm/insight/b/h$2;->e:I

    goto :goto_26

    :cond_1f
    const/4 v3, 0x0

    iput v3, p0, Lcom/apm/insight/b/h$2;->e:I

    iput v3, p0, Lcom/apm/insight/b/h$2;->f:I

    iput-wide v0, p0, Lcom/apm/insight/b/h$2;->c:J

    :goto_26
    iget-object v3, p0, Lcom/apm/insight/b/h$2;->a:Lcom/apm/insight/b/h;

    invoke-static {v3}, Lcom/apm/insight/b/h;->b(Lcom/apm/insight/b/h;)I

    move-result v3

    iput v3, p0, Lcom/apm/insight/b/h$2;->d:I

    iget v3, p0, Lcom/apm/insight/b/h$2;->e:I

    if-lez v3, :cond_67

    iget v4, p0, Lcom/apm/insight/b/h$2;->f:I

    sub-int/2addr v3, v4

    invoke-static {}, Lcom/apm/insight/b/h;->d()I

    move-result v4

    if-lt v3, v4, :cond_67

    iget-wide v3, p0, Lcom/apm/insight/b/h$2;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_67

    iget-wide v3, p0, Lcom/apm/insight/b/h$2;->c:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x2bc

    cmp-long v7, v3, v5

    if-lez v7, :cond_67

    iget-object v3, p0, Lcom/apm/insight/b/h$2;->a:Lcom/apm/insight/b/h;

    invoke-static {v3}, Lcom/apm/insight/b/h;->c(Lcom/apm/insight/b/h;)Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    iput-object v3, v2, Lcom/apm/insight/b/h$a;->f:[Ljava/lang/StackTraceElement;

    iget v3, p0, Lcom/apm/insight/b/h$2;->e:I

    iput v3, p0, Lcom/apm/insight/b/h$2;->f:I

    :cond_67
    iget-object v3, p0, Lcom/apm/insight/b/h$2;->a:Lcom/apm/insight/b/h;

    invoke-static {v3}, Lcom/apm/insight/b/h;->c(Lcom/apm/insight/b/h;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/apm/insight/b/h$a;->d:Z

    iget-wide v3, p0, Lcom/apm/insight/b/h$2;->b:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x12c

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/apm/insight/b/h$a;->c:J

    iput-wide v0, v2, Lcom/apm/insight/b/h$a;->a:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/apm/insight/b/h$2;->b:J

    sub-long/2addr v3, v0

    iput-wide v3, v2, Lcom/apm/insight/b/h$a;->b:J

    iget-object v0, p0, Lcom/apm/insight/b/h$2;->a:Lcom/apm/insight/b/h;

    invoke-static {v0}, Lcom/apm/insight/b/h;->b(Lcom/apm/insight/b/h;)I

    move-result v0

    iput v0, v2, Lcom/apm/insight/b/h$a;->e:I

    iget-object v0, p0, Lcom/apm/insight/b/h$2;->a:Lcom/apm/insight/b/h;

    invoke-static {v0}, Lcom/apm/insight/b/h;->e(Lcom/apm/insight/b/h;)Lcom/apm/insight/runtime/u;

    move-result-object v0

    iget-object v1, p0, Lcom/apm/insight/b/h$2;->a:Lcom/apm/insight/b/h;

    invoke-static {v1}, Lcom/apm/insight/b/h;->d(Lcom/apm/insight/b/h;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/apm/insight/runtime/u;->a(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/apm/insight/b/h$2;->a:Lcom/apm/insight/b/h;

    invoke-static {v0}, Lcom/apm/insight/b/h;->a(Lcom/apm/insight/b/h;)Lcom/apm/insight/b/h$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/apm/insight/b/h$b;->a(Lcom/apm/insight/b/h$a;)V

    return-void
.end method

###### Class com.apm.insight.b.h.AnonymousClass3 (com.apm.insight.b.h$3)
.class Lcom/apm/insight/b/h$3;
.super Lcom/apm/insight/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/b/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/apm/insight/b/h;


# direct methods
.method constructor <init>(Lcom/apm/insight/b/h;)V
    .registers 2

    iput-object p1, p0, Lcom/apm/insight/b/h$3;->d:Lcom/apm/insight/b/h;

    invoke-direct {p0}, Lcom/apm/insight/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/apm/insight/b/h$3;->d:Lcom/apm/insight/b/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apm/insight/b/h;->a(Lcom/apm/insight/b/h;Z)Z

    iget-object v0, p0, Lcom/apm/insight/b/h$3;->d:Lcom/apm/insight/b/h;

    invoke-static {v0, p1}, Lcom/apm/insight/b/h;->a(Lcom/apm/insight/b/h;Ljava/lang/String;)Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/apm/insight/b/e;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/apm/insight/b/h$3;->d:Lcom/apm/insight/b/h;

    sget-wide v2, Lcom/apm/insight/b/e;->a:J

    invoke-static {p1, v1, v2, v3}, Lcom/apm/insight/b/h;->a(Lcom/apm/insight/b/h;ZJ)V

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/apm/insight/b/e;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/apm/insight/b/h$3;->d:Lcom/apm/insight/b/h;

    invoke-static {p1}, Lcom/apm/insight/b/h;->f(Lcom/apm/insight/b/h;)I

    iget-object p1, p0, Lcom/apm/insight/b/h$3;->d:Lcom/apm/insight/b/h;

    sget-wide v0, Lcom/apm/insight/b/e;->a:J

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/apm/insight/b/h;->a(Lcom/apm/insight/b/h;ZJ)V

    iget-object p1, p0, Lcom/apm/insight/b/h$3;->d:Lcom/apm/insight/b/h;

    invoke-static {p1}, Lcom/apm/insight/b/h;->g(Lcom/apm/insight/b/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/apm/insight/b/h;->b(Lcom/apm/insight/b/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/apm/insight/b/h$3;->d:Lcom/apm/insight/b/h;

    const-string v0, "no message running"

    invoke-static {p1, v0}, Lcom/apm/insight/b/h;->a(Lcom/apm/insight/b/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/apm/insight/b/h$3;->d:Lcom/apm/insight/b/h;

    invoke-static {p1, v2}, Lcom/apm/insight/b/h;->a(Lcom/apm/insight/b/h;Z)Z

    return-void
.end method

###### Class com.apm.insight.b.h.a (com.apm.insight.b.h$a)
.class Lcom/apm/insight/b/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:Z

.field e:I

.field f:[Ljava/lang/StackTraceElement;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apm/insight/b/h$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/apm/insight/b/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apm/insight/b/h$a;->a:J

    iput-wide v0, p0, Lcom/apm/insight/b/h$a;->b:J

    iput-wide v0, p0, Lcom/apm/insight/b/h$a;->c:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/apm/insight/b/h$a;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apm/insight/b/h$a;->f:[Ljava/lang/StackTraceElement;

    return-void
.end method

###### Class com.apm.insight.b.h.b (com.apm.insight.b.h$b)
.class Lcom/apm/insight/b/h$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:I

.field b:Lcom/apm/insight/b/h$a;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apm/insight/b/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apm/insight/b/h$b;->d:I

    iput p1, p0, Lcom/apm/insight/b/h$b;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/apm/insight/b/h$b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()Lcom/apm/insight/b/h$a;
    .registers 3

    iget-object v0, p0, Lcom/apm/insight/b/h$b;->b:Lcom/apm/insight/b/h$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iput-object v1, p0, Lcom/apm/insight/b/h$b;->b:Lcom/apm/insight/b/h$a;

    goto :goto_d

    :cond_8
    new-instance v0, Lcom/apm/insight/b/h$a;

    invoke-direct {v0, v1}, Lcom/apm/insight/b/h$a;-><init>(Lcom/apm/insight/b/h$1;)V

    :goto_d
    return-object v0
.end method

.method a(Lcom/apm/insight/b/h$a;)V
    .registers 4

    iget-object v0, p0, Lcom/apm/insight/b/h$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/apm/insight/b/h$b;->a:I

    if-ge v0, v1, :cond_16

    iget-object v0, p0, Lcom/apm/insight/b/h$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/apm/insight/b/h$b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_2c

    :cond_16
    iget v0, p0, Lcom/apm/insight/b/h$b;->d:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/apm/insight/b/h$b;->d:I

    iget-object v1, p0, Lcom/apm/insight/b/h$b;->c:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apm/insight/b/h$a;

    invoke-virtual {p1}, Lcom/apm/insight/b/h$a;->a()V

    iput-object p1, p0, Lcom/apm/insight/b/h$b;->b:Lcom/apm/insight/b/h$a;

    iget p1, p0, Lcom/apm/insight/b/h$b;->d:I

    add-int/lit8 p1, p1, 0x1

    :goto_2c
    iput p1, p0, Lcom/apm/insight/b/h$b;->d:I

    return-void
.end method

###### Class com.apm.insight.b.h.c (com.apm.insight.b.h$c)
.class public interface abstract Lcom/apm/insight/b/h$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

###### Class com.apm.insight.b.h.d (com.apm.insight.b.h$d)
.class public Lcom/apm/insight/b/h$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:J

###### Class com.apm.insight.b.h.e (com.apm.insight.b.h$e)
.class public Lcom/apm/insight/b/h$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:J

.field b:J

.field c:J

.field d:I

.field e:I

.field f:J

.field g:J

.field h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Lcom/apm/insight/b/h$d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 9

    iget-object v0, p0, Lcom/apm/insight/b/h$e;->j:Ljava/lang/String;

    const-string v1, "block_uuid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/apm/insight/b/h$e;->j:Ljava/lang/String;

    const-string v1, "sblock_uuid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/apm/insight/b/h$e;->k:Lcom/apm/insight/b/h$d;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    const-string v1, "belong_frame"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/apm/insight/b/h$e;->k:Lcom/apm/insight/b/h$d;

    if-eqz v0, :cond_70

    iget-wide v1, p0, Lcom/apm/insight/b/h$e;->c:J

    iget-wide v3, v0, Lcom/apm/insight/b/h$d;->a:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    sub-long/2addr v1, v3

    const-string v0, "vsyncDelayTime"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/apm/insight/b/h$e;->k:Lcom/apm/insight/b/h$d;

    iget-wide v0, v0, Lcom/apm/insight/b/h$d;->b:J

    div-long/2addr v0, v5

    iget-wide v2, p0, Lcom/apm/insight/b/h$e;->c:J

    sub-long/2addr v0, v2

    const-string v2, "doFrameTime"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/apm/insight/b/h$e;->k:Lcom/apm/insight/b/h$d;

    iget-wide v1, v0, Lcom/apm/insight/b/h$d;->c:J

    div-long/2addr v1, v5

    iget-wide v3, v0, Lcom/apm/insight/b/h$d;->b:J

    div-long/2addr v3, v5

    sub-long/2addr v1, v3

    const-string v0, "inputHandlingTime"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/apm/insight/b/h$e;->k:Lcom/apm/insight/b/h$d;

    iget-wide v1, v0, Lcom/apm/insight/b/h$d;->d:J

    div-long/2addr v1, v5

    iget-wide v3, v0, Lcom/apm/insight/b/h$d;->c:J

    div-long/2addr v3, v5

    sub-long/2addr v1, v3

    const-string v0, "animationsTime"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/apm/insight/b/h$e;->k:Lcom/apm/insight/b/h$d;

    iget-wide v1, v0, Lcom/apm/insight/b/h$d;->e:J

    div-long/2addr v1, v5

    iget-wide v3, v0, Lcom/apm/insight/b/h$d;->d:J

    div-long/2addr v3, v5

    sub-long/2addr v1, v3

    const-string v0, "performTraversalsTime"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/apm/insight/b/h$e;->b:J

    iget-object v2, p0, Lcom/apm/insight/b/h$e;->k:Lcom/apm/insight/b/h$d;

    iget-wide v2, v2, Lcom/apm/insight/b/h$d;->e:J

    div-long/2addr v2, v5

    sub-long/2addr v0, v2

    const-string v2, "drawTime"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_70
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "msg"

    iget-object v2, p0, Lcom/apm/insight/b/h$e;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/apm/insight/b/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpuDuration"

    iget-wide v2, p0, Lcom/apm/insight/b/h$e;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "duration"

    iget-wide v2, p0, Lcom/apm/insight/b/h$e;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    iget v2, p0, Lcom/apm/insight/b/h$e;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "count"

    iget v2, p0, Lcom/apm/insight/b/h$e;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "messageCount"

    iget v2, p0, Lcom/apm/insight/b/h$e;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lastDuration"

    iget-wide v2, p0, Lcom/apm/insight/b/h$e;->b:J

    iget-wide v4, p0, Lcom/apm/insight/b/h$e;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "start"

    iget-wide v2, p0, Lcom/apm/insight/b/h$e;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "end"

    iget-wide v2, p0, Lcom/apm/insight/b/h$e;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/apm/insight/b/h$e;->a(Lorg/json/JSONObject;)V
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_53
    return-object v0
.end method

.method b()V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/apm/insight/b/h$e;->d:I

    iput v0, p0, Lcom/apm/insight/b/h$e;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apm/insight/b/h$e;->f:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apm/insight/b/h$e;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/apm/insight/b/h$e;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/apm/insight/b/h$e;->k:Lcom/apm/insight/b/h$d;

    iput-object v0, p0, Lcom/apm/insight/b/h$e;->i:Ljava/lang/String;

    return-void
.end method

###### Class com.apm.insight.b.h.f (com.apm.insight.b.h$f)
.class Lcom/apm/insight/b/h$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Lcom/apm/insight/b/h$e;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apm/insight/b/h$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apm/insight/b/h$f;->d:Ljava/util/List;

    iput p1, p0, Lcom/apm/insight/b/h$f;->a:I

    return-void
.end method


# virtual methods
.method a(I)Lcom/apm/insight/b/h$e;
    .registers 3

    iget-object v0, p0, Lcom/apm/insight/b/h$f;->c:Lcom/apm/insight/b/h$e;

    if-eqz v0, :cond_a

    iput p1, v0, Lcom/apm/insight/b/h$e;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apm/insight/b/h$f;->c:Lcom/apm/insight/b/h$e;

    goto :goto_11

    :cond_a
    new-instance v0, Lcom/apm/insight/b/h$e;

    invoke-direct {v0}, Lcom/apm/insight/b/h$e;-><init>()V

    iput p1, v0, Lcom/apm/insight/b/h$e;->d:I

    :goto_11
    return-object v0
.end method

.method a()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apm/insight/b/h$e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/apm/insight/b/h$f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/apm/insight/b/h$f;->a:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3c

    iget v1, p0, Lcom/apm/insight/b/h$f;->b:I

    :goto_12
    iget-object v2, p0, Lcom/apm/insight/b/h$f;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    iget-object v2, p0, Lcom/apm/insight/b/h$f;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apm/insight/b/h$e;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_28
    :goto_28
    iget v1, p0, Lcom/apm/insight/b/h$f;->b:I

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_50

    iget-object v1, p0, Lcom/apm/insight/b/h$f;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apm/insight/b/h$e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_3c
    :goto_3c
    iget-object v1, p0, Lcom/apm/insight/b/h$f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_50

    iget-object v1, p0, Lcom/apm/insight/b/h$f;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_50
    return-object v0
.end method

.method a(Lcom/apm/insight/b/h$e;)V
    .registers 4

    iget-object v0, p0, Lcom/apm/insight/b/h$f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/apm/insight/b/h$f;->a:I

    if-ge v0, v1, :cond_16

    iget-object v0, p0, Lcom/apm/insight/b/h$f;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/apm/insight/b/h$f;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_2c

    :cond_16
    iget v0, p0, Lcom/apm/insight/b/h$f;->b:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/apm/insight/b/h$f;->b:I

    iget-object v1, p0, Lcom/apm/insight/b/h$f;->d:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apm/insight/b/h$e;

    invoke-virtual {p1}, Lcom/apm/insight/b/h$e;->b()V

    iput-object p1, p0, Lcom/apm/insight/b/h$f;->c:Lcom/apm/insight/b/h$e;

    iget p1, p0, Lcom/apm/insight/b/h$f;->b:I

    add-int/lit8 p1, p1, 0x1

    :goto_2c
    iput p1, p0, Lcom/apm/insight/b/h$f;->b:I

    return-void
.end method
