###### Class com.moat.analytics.mobile.glft.u.AnonymousClass2 (com.moat.analytics.mobile.glft.u$2)
.class Lcom/moat/analytics/mobile/glft/u$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/u;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/u;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/u;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/u$2;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->g()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u$2;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/u;->c(Lcom/moat/analytics/mobile/glft/u;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u$2;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/u;->d(Lcom/moat/analytics/mobile/glft/u;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_35

    :cond_1c
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u$2;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/u;->e(Lcom/moat/analytics/mobile/glft/u;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u$2;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/u;->d(Lcom/moat/analytics/mobile/glft/u;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_35
    return-void
.end method
