###### Class com.ironsource.mediationsdk.s.b.a (com.ironsource.mediationsdk.s$b$a)
.class Lcom/ironsource/mediationsdk/s$b$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/s$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/s$b;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/s$b;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/ironsource/mediationsdk/s$b$a;->a:Lcom/ironsource/mediationsdk/s$b;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$b$a;->a:Lcom/ironsource/mediationsdk/s$b;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/s$b;->a:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->o(Lcom/ironsource/mediationsdk/s;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$b$a;->a:Lcom/ironsource/mediationsdk/s$b;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/s$b;->a:Lcom/ironsource/mediationsdk/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/s;->j(Lcom/ironsource/mediationsdk/s;Z)Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s$b$a;->a:Lcom/ironsource/mediationsdk/s$b;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/s$b;->a:Lcom/ironsource/mediationsdk/s;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/s;->C(Lcom/ironsource/mediationsdk/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/ba;

    const-string v3, "noInternetConnection"

    invoke-interface {v2, v3}, Lcom/ironsource/ba;->d(Ljava/lang/String;)V

    goto :goto_1e

    :cond_30
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Mediation availability false reason: No internet connection"

    invoke-virtual {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_3b
    return-void
.end method

.method public onTick(J)V
    .registers 6

    const-wide/32 v0, 0xafc8

    cmp-long v2, p1, v0

    if-gtz v2, :cond_2b

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s$b$a;->a:Lcom/ironsource/mediationsdk/s$b;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/s$b;->a:Lcom/ironsource/mediationsdk/s;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/s;->l(Lcom/ironsource/mediationsdk/s;Z)Z

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s$b$a;->a:Lcom/ironsource/mediationsdk/s$b;

    iget-object p1, p1, Lcom/ironsource/mediationsdk/s$b;->a:Lcom/ironsource/mediationsdk/s;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/s;->C(Lcom/ironsource/mediationsdk/s;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/ba;

    invoke-interface {p2}, Lcom/ironsource/ba;->a()V

    goto :goto_1b

    :cond_2b
    return-void
.end method
