###### Class com.ironsource.mediationsdk.s.a (com.ironsource.mediationsdk.s$a)
.class Lcom/ironsource/mediationsdk/s$a;
.super Lcom/ironsource/mediationsdk/s$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/ironsource/mediationsdk/s;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/s;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/s$f;-><init>(Lcom/ironsource/mediationsdk/s;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/mediationsdk/c0;->f()Lcom/ironsource/mediationsdk/c0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/c0;->b()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->g(Lcom/ironsource/mediationsdk/s;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {}, Lcom/ironsource/s4;->a()Lcom/ironsource/s4;

    move-result-object v1

    const-string v2, "userId"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/s;->g(Lcom/ironsource/mediationsdk/s;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/s4;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_26
    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->k(Lcom/ironsource/mediationsdk/s;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-static {}, Lcom/ironsource/s4;->a()Lcom/ironsource/s4;

    move-result-object v1

    const-string v2, "appKey"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/s;->k(Lcom/ironsource/mediationsdk/s;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/s4;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_41
    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->x(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/z7;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/s;->g(Lcom/ironsource/mediationsdk/s;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/z7;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/s;->c(Lcom/ironsource/mediationsdk/s;J)J

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/s;->g(Lcom/ironsource/mediationsdk/s;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/s$f;->c:Lcom/ironsource/mediationsdk/p$c;

    invoke-virtual {v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/p;->q0(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/s;->e(Lcom/ironsource/mediationsdk/s;Lcom/ironsource/mediationsdk/utils/c;)Lcom/ironsource/mediationsdk/utils/c;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->z(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_220

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->A(Lcom/ironsource/mediationsdk/s;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->z(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->m()Z

    move-result v1

    if-eqz v1, :cond_1f0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    sget-object v2, Lcom/ironsource/mediationsdk/s$d;->d:Lcom/ironsource/mediationsdk/s$d;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/s;->i(Lcom/ironsource/mediationsdk/s;Lcom/ironsource/mediationsdk/s$d;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->z(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/s;->a(Lcom/ironsource/mediationsdk/utils/c;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/s;->b(Z)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->z(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/j0;->e()Lcom/ironsource/o0;

    move-result-object v1

    if-eqz v1, :cond_e2

    sget-object v2, Lcom/ironsource/l3;->a:Lcom/ironsource/l3;

    invoke-virtual {v1}, Lcom/ironsource/o0;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ironsource/l3;->c(Z)V

    invoke-virtual {v1}, Lcom/ironsource/o0;->e()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ironsource/l3;->a(Z)V

    invoke-virtual {v1}, Lcom/ironsource/o0;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ironsource/l3;->a(I)V

    sget-object v2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {v1}, Lcom/ironsource/o0;->g()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->setUseSharedExecutorService(Z)V

    :cond_e2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/s;->z(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/s;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/utils/c;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/s;->y(Lcom/ironsource/mediationsdk/s;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/p;->a(J)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    new-instance v1, Lcom/ironsource/pb;

    invoke-direct {v1}, Lcom/ironsource/pb;-><init>()V

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/s;->f(Lcom/ironsource/mediationsdk/s;Lcom/ironsource/pb;)Lcom/ironsource/pb;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->B(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->z(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/j0;->f()Z

    move-result v0

    if-eqz v0, :cond_144

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_144

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/content/Context;)V

    :cond_144
    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->z(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->C(Lcom/ironsource/mediationsdk/s;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_158
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_178

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/ba;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/s;->D(Lcom/ironsource/mediationsdk/s;)Z

    move-result v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/s;->z(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/ironsource/ba;->a(Ljava/util/List;ZLcom/ironsource/g2;)V

    goto :goto_158

    :cond_178
    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->m(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v0

    if-eqz v0, :cond_1ab

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->z(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/j0;->i()Lcom/ironsource/nb;

    move-result-object v0

    if-eqz v0, :cond_1ab

    invoke-virtual {v0}, Lcom/ironsource/nb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ab

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->m(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/nb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/SegmentListener;->onSegmentReceived(Ljava/lang/String;)V

    :cond_1ab
    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->z(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/j0;->c()Lcom/ironsource/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l0;->f()Z

    move-result v1

    if-eqz v1, :cond_2e8

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSessionId()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/ironsource/u2;->d()Lcom/ironsource/u2;

    move-result-object v2

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ironsource/l0;->b()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/l0;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ironsource/l0;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ironsource/l0;->e()Z

    move-result v7

    invoke-virtual {v0}, Lcom/ironsource/l0;->a()I

    move-result v9

    invoke-virtual {v0}, Lcom/ironsource/l0;->g()Z

    move-result v10

    invoke-virtual/range {v2 .. v10}, Lcom/ironsource/u2;->a(Landroid/content/Context;Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)V

    goto/16 :goto_2e8

    :cond_1f0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->o(Lcom/ironsource/mediationsdk/s;)Z

    move-result v0

    if-nez v0, :cond_2e8

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    sget-object v1, Lcom/ironsource/mediationsdk/s$d;->c:Lcom/ironsource/mediationsdk/s$d;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/s;->i(Lcom/ironsource/mediationsdk/s;Lcom/ironsource/mediationsdk/s$d;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/s;->j(Lcom/ironsource/mediationsdk/s;Z)Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->C(Lcom/ironsource/mediationsdk/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/ba;

    const-string v2, "serverResponseIsNotValid"

    invoke-interface {v1, v2}, Lcom/ironsource/ba;->d(Ljava/lang/String;)V

    goto :goto_20e

    :cond_220
    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->p(Lcom/ironsource/mediationsdk/s;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_248

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/s;->l(Lcom/ironsource/mediationsdk/s;Z)Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->C(Lcom/ironsource/mediationsdk/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_238
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_248

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/ba;

    invoke-interface {v1}, Lcom/ironsource/ba;->a()V

    goto :goto_238

    :cond_248
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/s$f;->a:Z

    if-eqz v0, :cond_285

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->p(Lcom/ironsource/mediationsdk/s;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->t(Lcom/ironsource/mediationsdk/s;)I

    move-result v1

    if-ge v0, v1, :cond_285

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/s;->n(Lcom/ironsource/mediationsdk/s;Z)Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->A(Lcom/ironsource/mediationsdk/s;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->u(Lcom/ironsource/mediationsdk/s;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->p(Lcom/ironsource/mediationsdk/s;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->v(Lcom/ironsource/mediationsdk/s;)I

    move-result v1

    if-ge v0, v1, :cond_285

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/s;->a(Lcom/ironsource/mediationsdk/s;I)I

    :cond_285
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/s$f;->a:Z

    if-eqz v0, :cond_297

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->p(Lcom/ironsource/mediationsdk/s;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/s;->w(Lcom/ironsource/mediationsdk/s;)I

    move-result v1

    if-ne v0, v1, :cond_2de

    :cond_297
    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->o(Lcom/ironsource/mediationsdk/s;)Z

    move-result v0

    if-nez v0, :cond_2de

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/s;->j(Lcom/ironsource/mediationsdk/s;Z)Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b0

    const-string v0, "noServerResponse"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/s$f;->b:Ljava/lang/String;

    :cond_2b0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->C(Lcom/ironsource/mediationsdk/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2ba
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/ba;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/s$f;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/ironsource/ba;->d(Ljava/lang/String;)V

    goto :goto_2ba

    :cond_2cc
    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    sget-object v1, Lcom/ironsource/mediationsdk/s$d;->c:Lcom/ironsource/mediationsdk/s$d;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/s;->i(Lcom/ironsource/mediationsdk/s;Lcom/ironsource/mediationsdk/s$d;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Mediation availability false reason: No server response"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_2de
    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$a;->e:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->r(Lcom/ironsource/mediationsdk/s;)I
    :try_end_2e3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e3} :catch_2e4

    goto :goto_2e8

    :catch_2e4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2e8
    :goto_2e8
    return-void
.end method
