###### Class com.moat.analytics.mobile.glft.u.AnonymousClass1.C04391 (com.moat.analytics.mobile.glft.u$1$1)
.class Lcom/moat/analytics/mobile/glft/u$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/u$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/u$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/u$1;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/u$1;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/u$1$1;->a:Lcom/moat/analytics/mobile/glft/u$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/moat/analytics/mobile/glft/k;)V
    .registers 6

    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->g()Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/u$1$1;->a:Lcom/moat/analytics/mobile/glft/u$1;

    iget-object v1, v1, Lcom/moat/analytics/mobile/glft/u$1;->b:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v1}, Lcom/moat/analytics/mobile/glft/u;->a(Lcom/moat/analytics/mobile/glft/u;)Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/glft/k;->d()Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object v2

    if-eq v1, v2, :cond_67

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/u$1$1;->a:Lcom/moat/analytics/mobile/glft/u$1;

    iget-object v1, v1, Lcom/moat/analytics/mobile/glft/u$1;->b:Lcom/moat/analytics/mobile/glft/u;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/glft/k;->d()Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/moat/analytics/mobile/glft/u;->a(Lcom/moat/analytics/mobile/glft/u;Lcom/moat/analytics/mobile/glft/u$d;)Lcom/moat/analytics/mobile/glft/u$d;

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/u$1$1;->a:Lcom/moat/analytics/mobile/glft/u$1;

    iget-object p1, p1, Lcom/moat/analytics/mobile/glft/u$1;->b:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/u;->a(Lcom/moat/analytics/mobile/glft/u;)Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object p1

    sget-object v1, Lcom/moat/analytics/mobile/glft/u$d;->b:Lcom/moat/analytics/mobile/glft/u$d;

    if-ne p1, v1, :cond_3b

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/u$1$1;->a:Lcom/moat/analytics/mobile/glft/u$1;

    iget-object p1, p1, Lcom/moat/analytics/mobile/glft/u$1;->b:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/u;->b(Lcom/moat/analytics/mobile/glft/u;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const-string p1, "MoatOnOff"

    const-string v1, "Moat enabled - Version 2.1.0"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->g()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moat/analytics/mobile/glft/u$c;

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/u$1$1;->a:Lcom/moat/analytics/mobile/glft/u$1;

    iget-object v2, v2, Lcom/moat/analytics/mobile/glft/u$1;->b:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v2}, Lcom/moat/analytics/mobile/glft/u;->a(Lcom/moat/analytics/mobile/glft/u;)Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object v2

    sget-object v3, Lcom/moat/analytics/mobile/glft/u$d;->b:Lcom/moat/analytics/mobile/glft/u$d;

    if-ne v2, v3, :cond_61

    iget-object v1, v1, Lcom/moat/analytics/mobile/glft/u$c;->b:Lcom/moat/analytics/mobile/glft/u$b;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/glft/u$b;->b()V

    goto :goto_43

    :cond_61
    iget-object v1, v1, Lcom/moat/analytics/mobile/glft/u$c;->b:Lcom/moat/analytics/mobile/glft/u$b;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/glft/u$b;->c()V

    goto :goto_43

    :cond_67
    :goto_67
    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->g()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_79

    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->g()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_67

    :cond_79
    monitor-exit v0

    return-void

    :catchall_7b
    move-exception p1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_5 .. :try_end_7d} :catchall_7b

    throw p1
.end method
