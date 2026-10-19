###### Class com.mbridge.msdk.foundation.same.report.b (com.mbridge.msdk.foundation.same.report.b)
.class public final Lcom/mbridge/msdk/foundation/same/report/b;
.super Ljava/lang/Object;
.source "CommonReportEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/same/report/b$b;,
        Lcom/mbridge/msdk/foundation/same/report/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/mbridge/msdk/foundation/same/report/d;

.field private final f:Lcom/mbridge/msdk/foundation/same/report/o;

.field private final g:J

.field private final h:Z

.field private final i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/content/Context;

.field private final l:Lcom/mbridge/msdk/foundation/same/report/b$a;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Z

.field private final r:Lcom/mbridge/msdk/foundation/same/net/m;

.field private s:Ljava/lang/String;

.field private final t:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private final u:J

.field private v:Z

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/foundation/same/report/b$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->v:Z

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b;->l:Lcom/mbridge/msdk/foundation/same/report/b$a;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->a(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->b(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->c(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->d(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->d:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->e(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->f(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->g(Lcom/mbridge/msdk/foundation/same/report/b$a;)Lcom/mbridge/msdk/foundation/same/report/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->e:Lcom/mbridge/msdk/foundation/same/report/d;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->h(Lcom/mbridge/msdk/foundation/same/report/b$a;)Lcom/mbridge/msdk/foundation/same/report/o;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->f:Lcom/mbridge/msdk/foundation/same/report/o;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->i(Lcom/mbridge/msdk/foundation/same/report/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->g:J

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->j(Lcom/mbridge/msdk/foundation/same/report/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->h:Z

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->k(Lcom/mbridge/msdk/foundation/same/report/b$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->k:Landroid/content/Context;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->l(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->m(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->n(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->o:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->o(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->p(Lcom/mbridge/msdk/foundation/same/report/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->q:Z

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->q(Lcom/mbridge/msdk/foundation/same/report/b$a;)Lcom/mbridge/msdk/foundation/same/net/m;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->r:Lcom/mbridge/msdk/foundation/same/net/m;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->r(Lcom/mbridge/msdk/foundation/same/report/b$a;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->t:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->s(Lcom/mbridge/msdk/foundation/same/report/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->u:J

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->t(Lcom/mbridge/msdk/foundation/same/report/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->v:Z

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/b$a;->u(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b;->w:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 9

    new-instance v6, Lcom/mbridge/msdk/foundation/same/report/b$a;

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/foundation/same/report/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v6
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/same/report/b;)Lcom/mbridge/msdk/foundation/same/report/d;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->e:Lcom/mbridge/msdk/foundation/same/report/d;

    return-object p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/foundation/same/report/b;)Lcom/mbridge/msdk/foundation/same/report/o;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->f:Lcom/mbridge/msdk/foundation/same/report/o;

    return-object p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/foundation/same/report/b;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->k:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->l:Lcom/mbridge/msdk/foundation/same/report/b$a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b;->s:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .registers 3

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/b$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/mbridge/msdk/foundation/same/report/b$1;-><init>(Lcom/mbridge/msdk/foundation/same/report/b;Lcom/mbridge/msdk/foundation/same/report/b;Lcom/mbridge/msdk/foundation/same/report/b$b;)V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/b;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final d()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->k:Landroid/content/Context;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->l:Lcom/mbridge/msdk/foundation/same/report/b$a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/report/b$a;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->v:Z

    return v0
.end method

.method public final k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->q:Z

    return v0
.end method

.method public final l()Lcom/mbridge/msdk/foundation/same/net/m;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->r:Lcom/mbridge/msdk/foundation/same/net/m;

    return-object v0
.end method

.method public final m()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->j:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final n()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->g:J

    return-wide v0
.end method

.method public final o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->h:Z

    return v0
.end method

.method public final p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final q()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/same/report/b;->u:J

    return-wide v0
.end method

###### Class com.mbridge.msdk.foundation.same.report.b.AnonymousClass1 (com.mbridge.msdk.foundation.same.report.b$1)
.class final Lcom/mbridge/msdk/foundation/same/report/b$1;
.super Ljava/lang/Object;
.source "CommonReportEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/report/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/report/b;

.field final synthetic b:Lcom/mbridge/msdk/foundation/same/report/b$b;

.field final synthetic c:Lcom/mbridge/msdk/foundation/same/report/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/report/b;Lcom/mbridge/msdk/foundation/same/report/b;Lcom/mbridge/msdk/foundation/same/report/b$b;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$1;->c:Lcom/mbridge/msdk/foundation/same/report/b;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/report/b$1;->a:Lcom/mbridge/msdk/foundation/same/report/b;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/same/report/b$1;->b:Lcom/mbridge/msdk/foundation/same/report/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$1;->a:Lcom/mbridge/msdk/foundation/same/report/b;

    const-string v1, "CommonReport"

    if-nez v0, :cond_c

    const-string v0, "reportEvent is null !!!"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/b;->a(Lcom/mbridge/msdk/foundation/same/report/b;)Lcom/mbridge/msdk/foundation/same/report/d;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "decorate is null !!!"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/b$1;->a:Lcom/mbridge/msdk/foundation/same/report/b;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/report/b;->b(Lcom/mbridge/msdk/foundation/same/report/b;)Lcom/mbridge/msdk/foundation/same/report/o;

    move-result-object v2

    if-nez v2, :cond_26

    const-string v0, "report is null !!!"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    const/4 v3, 0x0

    :try_start_27
    iget-object v4, p0, Lcom/mbridge/msdk/foundation/same/report/b$1;->a:Lcom/mbridge/msdk/foundation/same/report/b;

    invoke-interface {v0, v4}, Lcom/mbridge/msdk/foundation/same/report/d;->a(Lcom/mbridge/msdk/foundation/same/report/b;)Lcom/mbridge/msdk/foundation/same/net/h/d;

    move-result-object v0

    if-nez v0, :cond_44

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_38

    const-string v0, "requestParams is null !!!"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$1;->b:Lcom/mbridge/msdk/foundation/same/report/b$b;

    if-eqz v0, :cond_69

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/b$1;->a:Lcom/mbridge/msdk/foundation/same/report/b;

    const-string v4, "requestParams is null"

    invoke-interface {v0, v2, v3, v4}, Lcom/mbridge/msdk/foundation/same/report/b$b;->a(Lcom/mbridge/msdk/foundation/same/report/b;ILjava/lang/String;)V

    goto :goto_69

    :cond_44
    iget-object v4, p0, Lcom/mbridge/msdk/foundation/same/report/b$1;->a:Lcom/mbridge/msdk/foundation/same/report/b;

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/same/report/b;->c(Lcom/mbridge/msdk/foundation/same/report/b;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/same/report/b$1;->b:Lcom/mbridge/msdk/foundation/same/report/b$b;

    iget-object v6, p0, Lcom/mbridge/msdk/foundation/same/report/b$1;->a:Lcom/mbridge/msdk/foundation/same/report/b;

    invoke-interface {v2, v4, v5, v6, v0}, Lcom/mbridge/msdk/foundation/same/report/o;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/b$b;Lcom/mbridge/msdk/foundation/same/report/b;Lcom/mbridge/msdk/foundation/same/net/h/d;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_51} :catch_52

    goto :goto_69

    :catch_52
    move-exception v0

    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_5c

    const-string v2, "report error"

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5c
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/b$1;->b:Lcom/mbridge/msdk/foundation/same/report/b$b;

    if-eqz v1, :cond_69

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/b$1;->a:Lcom/mbridge/msdk/foundation/same/report/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/mbridge/msdk/foundation/same/report/b$b;->a(Lcom/mbridge/msdk/foundation/same/report/b;ILjava/lang/String;)V

    :cond_69
    :goto_69
    return-void
.end method

###### Class com.mbridge.msdk.foundation.same.report.b.a (com.mbridge.msdk.foundation.same.report.b$a)
.class public final Lcom/mbridge/msdk/foundation/same/report/b$a;
.super Ljava/lang/Object;
.source "CommonReportEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/report/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/Executor;

.field private h:Lcom/mbridge/msdk/foundation/same/report/d;

.field private i:J

.field private j:Z

.field private k:Lcom/mbridge/msdk/foundation/same/report/o;

.field private l:Landroid/content/Context;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lcom/mbridge/msdk/foundation/same/net/m;

.field private s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private t:J

.field private u:Z

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->j:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->p:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->q:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->u:Z

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->v:Ljava/lang/String;

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->b:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->c:Ljava/lang/String;

    goto :goto_2d

    :cond_2b
    iput-object p3, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->c:Ljava/lang/String;

    :goto_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->t:J

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->d:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Lcom/mbridge/msdk/foundation/same/report/v;->a(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p5}, Lcom/mbridge/msdk/foundation/same/report/v;->a(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic f(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic g(Lcom/mbridge/msdk/foundation/same/report/b$a;)Lcom/mbridge/msdk/foundation/same/report/d;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->h:Lcom/mbridge/msdk/foundation/same/report/d;

    return-object p0
.end method

.method static synthetic h(Lcom/mbridge/msdk/foundation/same/report/b$a;)Lcom/mbridge/msdk/foundation/same/report/o;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->k:Lcom/mbridge/msdk/foundation/same/report/o;

    return-object p0
.end method

.method static synthetic i(Lcom/mbridge/msdk/foundation/same/report/b$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->i:J

    return-wide v0
.end method

.method static synthetic j(Lcom/mbridge/msdk/foundation/same/report/b$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->j:Z

    return p0
.end method

.method static synthetic k(Lcom/mbridge/msdk/foundation/same/report/b$a;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->l:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic l(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lcom/mbridge/msdk/foundation/same/report/b$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->q:Z

    return p0
.end method

.method static synthetic q(Lcom/mbridge/msdk/foundation/same/report/b$a;)Lcom/mbridge/msdk/foundation/same/net/m;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->r:Lcom/mbridge/msdk/foundation/same/net/m;

    return-object p0
.end method

.method static synthetic r(Lcom/mbridge/msdk/foundation/same/report/b$a;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->s:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method static synthetic s(Lcom/mbridge/msdk/foundation/same/report/b$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->t:J

    return-wide v0
.end method

.method static synthetic t(Lcom/mbridge/msdk/foundation/same/report/b$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->u:Z

    return p0
.end method

.method static synthetic u(Lcom/mbridge/msdk/foundation/same/report/b$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->v:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(J)Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->i:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->j:Z

    return-object p0
.end method

.method public final a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->l:Landroid/content/Context;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mbridge/msdk/foundation/same/report/b$a;"
        }
    .end annotation

    if-eqz p1, :cond_5f

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5f

    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_11

    :cond_38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "CommonReport"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_5f
    :goto_5f
    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;)Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final a(Z)Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->q:Z

    return-object p0
.end method

.method public final a()Lcom/mbridge/msdk/foundation/same/report/b;
    .registers 6

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->g:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_f

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/b$a$1;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/same/report/b$a$1;-><init>(Lcom/mbridge/msdk/foundation/same/report/b$a;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->g:Ljava/util/concurrent/Executor;

    :cond_f
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->l:Landroid/content/Context;

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->l:Landroid/content/Context;

    :cond_1d
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->h:Lcom/mbridge/msdk/foundation/same/report/d;

    if-nez v0, :cond_28

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/e;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/e;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->h:Lcom/mbridge/msdk/foundation/same/report/d;

    :cond_28
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->k:Lcom/mbridge/msdk/foundation/same/report/o;

    const/4 v1, 0x1

    if-nez v0, :cond_53

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ac;->a()Lcom/mbridge/msdk/foundation/tools/ac;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "e_t_l"

    invoke-virtual {v0, v3, v2}, Lcom/mbridge/msdk/foundation/tools/ac;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ac;->a()Lcom/mbridge/msdk/foundation/tools/ac;

    move-result-object v2

    const-string v4, "metrics"

    invoke-virtual {v2, v4, v3, v0}, Lcom/mbridge/msdk/foundation/tools/ac;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4c

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/j;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/j;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->k:Lcom/mbridge/msdk/foundation/same/report/o;

    goto :goto_53

    :cond_4c
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/f;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/f;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->k:Lcom/mbridge/msdk/foundation/same/report/o;

    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->r:Lcom/mbridge/msdk/foundation/same/net/m;

    if-nez v0, :cond_60

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b;

    const/16 v2, 0x7530

    invoke-direct {v0, v2, v1}, Lcom/mbridge/msdk/foundation/same/net/b;-><init>(II)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->r:Lcom/mbridge/msdk/foundation/same/net/m;

    :cond_60
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/b;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/same/report/b;-><init>(Lcom/mbridge/msdk/foundation/same/report/b$a;)V

    return-object v0
.end method

.method public final b(J)Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->t:J

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Z)Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->u:Z

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->v:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/b$a;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    const-class v2, Lcom/mbridge/msdk/foundation/same/report/b$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_29

    :cond_10
    :try_start_10
    check-cast p1, Lcom/mbridge/msdk/foundation/same/report/b$a;

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/mbridge/msdk/foundation/same/report/b$a;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/mbridge/msdk/foundation/same/report/b$a;->d:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_29

    if-eqz p1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0

    :catch_29
    :cond_29
    :goto_29
    return v1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->c:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

###### Class com.mbridge.msdk.foundation.same.report.b.a.AnonymousClass1 (com.mbridge.msdk.foundation.same.report.b$a$1)
.class final Lcom/mbridge/msdk/foundation/same/report/b$a$1;
.super Ljava/lang/Object;
.source "CommonReportEvent.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/report/b$a;->a()Lcom/mbridge/msdk/foundation/same/report/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/report/b$a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/report/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/b$a$1;->a:Lcom/mbridge/msdk/foundation/same/report/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "mb-common-report-thread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.mbridge.msdk.foundation.same.report.b.InterfaceC0407b (com.mbridge.msdk.foundation.same.report.b$b)
.class public interface abstract Lcom/mbridge/msdk/foundation/same/report/b$b;
.super Ljava/lang/Object;
.source "CommonReportEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/report/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Lcom/mbridge/msdk/foundation/same/report/b;)V
.end method

.method public abstract a(Lcom/mbridge/msdk/foundation/same/report/b;ILjava/lang/String;)V
.end method
