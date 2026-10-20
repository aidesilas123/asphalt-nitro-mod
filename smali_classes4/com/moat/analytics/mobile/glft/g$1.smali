###### Class com.moat.analytics.mobile.glft.g.AnonymousClass1 (com.moat.analytics.mobile.glft.g$1)
.class Lcom/moat/analytics/mobile/glft/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/g;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/g;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/g;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    iget-object v0, v0, Lcom/moat/analytics/mobile/glft/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/c;->f()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/g;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    iget-object v0, v0, Lcom/moat/analytics/mobile/glft/c;->g:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3e

    :cond_2c
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    :goto_2e
    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/c;->e()V

    goto :goto_3e

    :cond_32
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_2e

    :catch_35
    move-exception v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/glft/c;->e()V

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_3e
    return-void
.end method
