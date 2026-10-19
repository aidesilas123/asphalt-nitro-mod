###### Class com.fyber.inneractive.sdk.player.controller.j (com.fyber.inneractive.sdk.player.controller.j)
.class public Lcom/fyber/inneractive/sdk/player/controller/j;
.super Lcom/fyber/inneractive/sdk/player/controller/n;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/controller/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/player/controller/n<",
        "Lcom/fyber/inneractive/sdk/player/controller/t$a;",
        ">;",
        "Lcom/fyber/inneractive/sdk/player/controller/t;"
    }
.end annotation


# instance fields
.field public C:Ljava/lang/Runnable;

.field public D:F

.field public E:F

.field public F:Z

.field public G:Z

.field public H:Z


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/c;Lcom/fyber/inneractive/sdk/player/ui/l;Lcom/fyber/inneractive/sdk/config/a0;Lcom/fyber/inneractive/sdk/config/global/s;ZLjava/lang/String;Z)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/fyber/inneractive/sdk/player/controller/n;-><init>(Lcom/fyber/inneractive/sdk/player/c;Lcom/fyber/inneractive/sdk/player/ui/l;Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;ZLjava/lang/String;Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->E:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->F:Z

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->G:Z

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->H:Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    check-cast p1, Lcom/fyber/inneractive/sdk/config/a0;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/config/a0;->b()Lcom/fyber/inneractive/sdk/config/e0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/config/e0;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->D:F

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->I()V

    return-void
.end method


# virtual methods
.method public A()V
    .registers 3

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->A()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->J()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->b(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->F:Z

    return-void
.end method

.method public B()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final F()V
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->H:Z

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->H()V

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->l()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    check-cast v0, Lcom/fyber/inneractive/sdk/player/controller/t$a;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/controller/t$a;->c()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%sopening fullscreen"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->H:Z

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v1, :cond_3e

    sget-object v2, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->InvalidOrigin:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/fyber/inneractive/sdk/model/vast/t;

    sget-object v5, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_FULLSCREEN:Lcom/fyber/inneractive/sdk/model/vast/t;

    aput-object v5, v4, v3

    sget-object v3, Lcom/fyber/inneractive/sdk/model/vast/t;->EVENT_EXPAND:Lcom/fyber/inneractive/sdk/model/vast/t;

    aput-object v3, v4, v0

    check-cast v1, Lcom/fyber/inneractive/sdk/player/e;

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/e;->v:Lcom/fyber/inneractive/sdk/model/vast/b;

    invoke-virtual {v1, v0, v2, v4}, Lcom/fyber/inneractive/sdk/player/e;->a(Lcom/fyber/inneractive/sdk/response/i;Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;[Lcom/fyber/inneractive/sdk/model/vast/t;)V

    :cond_3e
    return-void
.end method

.method public final G()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->E:F

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->D:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_47

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_47

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_47

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->f()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    check-cast v0, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/c0;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->F:Z

    if-eqz v0, :cond_47

    :cond_3e
    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->i:Lcom/fyber/inneractive/sdk/config/s;

    iget v0, v0, Lcom/fyber/inneractive/sdk/config/s;->a:I

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/j;->b(I)V

    :cond_47
    return-void
.end method

.method public final H()V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->C:Ljava/lang/Runnable;

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%sCancelling play runnable"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->C:Ljava/lang/Runnable;

    :cond_1d
    return-void
.end method

.method public final I()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_30

    iget-boolean v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->n:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    check-cast v0, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/c0;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/controller/g;->b(Z)V

    goto :goto_30

    :cond_23
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->t()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/controller/g;->d(Z)V

    :cond_30
    :goto_30
    return-void
.end method

.method public J()V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    check-cast v0, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/c0;->i:Lcom/fyber/inneractive/sdk/config/enums/TapAction;

    sget-object v1, Lcom/fyber/inneractive/sdk/config/enums/TapAction;->FULLSCREEN:Lcom/fyber/inneractive/sdk/config/enums/TapAction;

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/ui/l;->v:Landroid/widget/ImageView;

    if-eqz v1, :cond_1b

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/ui/l;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_1b
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->C()V

    return-void
.end method

.method public a()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%sfullscreenExited called"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->H:Z

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->G:Z

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/j;->b(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_2e

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_2e

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Lcom/fyber/inneractive/sdk/player/enums/b;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(I)V

    :cond_2e
    return-void
.end method

.method public a(F)V
    .registers 7

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->E:F

    sget v0, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_31

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    iget v3, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->D:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    iget v3, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->D:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "%sonVisibilityChanged called with: %s vfpl = %s vfpa = %s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_63

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_63

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/enums/b;->Playing:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-ne v0, v1, :cond_60

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->D:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_63

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    if-eqz p1, :cond_63

    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->F:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(ZLcom/fyber/inneractive/sdk/player/controller/n$f;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->H()V

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->pauseVideo()V

    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/player/controller/n;->g(Z)V

    goto :goto_63

    :cond_60
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->G()V

    :cond_63
    :goto_63
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/util/k0;)V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->b:Lcom/fyber/inneractive/sdk/config/b0;

    check-cast v0, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/c0;->i:Lcom/fyber/inneractive/sdk/config/enums/TapAction;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v2, :cond_19

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->E:F

    iget v3, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->D:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_19

    goto :goto_52

    :cond_19
    sget-object v2, Lcom/fyber/inneractive/sdk/config/enums/TapAction;->CTR:Lcom/fyber/inneractive/sdk/config/enums/TapAction;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2f

    sget-object v0, Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;->CTA:Lcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;

    invoke-virtual {p0, v3, v0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(ZLcom/fyber/inneractive/sdk/player/enums/VideoClickOrigin;Lcom/fyber/inneractive/sdk/util/k0;)Z

    move-result p1

    if-eqz p1, :cond_52

    new-instance p1, Lcom/fyber/inneractive/sdk/player/controller/k;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/player/controller/k;-><init>(Lcom/fyber/inneractive/sdk/player/controller/j;)V

    invoke-virtual {p0, v3, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(ZLcom/fyber/inneractive/sdk/player/controller/n$f;)V

    goto :goto_52

    :cond_2f
    sget-object p1, Lcom/fyber/inneractive/sdk/config/enums/TapAction;->FULLSCREEN:Lcom/fyber/inneractive/sdk/config/enums/TapAction;

    if-ne v0, p1, :cond_37

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->F()V

    goto :goto_52

    :cond_37
    sget-object p1, Lcom/fyber/inneractive/sdk/config/enums/TapAction;->DO_NOTHING:Lcom/fyber/inneractive/sdk/config/enums/TapAction;

    if-ne v0, p1, :cond_41

    if-eqz v1, :cond_52

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/c;->d()V

    goto :goto_52

    :cond_41
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "%sonVideoClicked called, but we recieved an unknown tap action %s"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_52
    :goto_52
    return-void
.end method

.method public a(Z)V
    .registers 3

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->E:F

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/j;->a(F)V

    :cond_7
    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(Z)V

    return-void
.end method

.method public b(I)V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_39

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_39

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/enums/b;->Playing:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-eq v0, v1, :cond_39

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->C:Ljava/lang/Runnable;

    if-nez v0, :cond_39

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "%splayVideo %s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_2c

    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/player/controller/j;->h(Z)V

    goto :goto_39

    :cond_2c
    new-instance v0, Lcom/fyber/inneractive/sdk/player/controller/j$a;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/player/controller/j$a;-><init>(Lcom/fyber/inneractive/sdk/player/controller/j;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->C:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_39
    :goto_39
    return-void
.end method

.method public b(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->G:Z

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz p1, :cond_28

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz p1, :cond_28

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/controller/g;->j:Landroid/view/TextureView;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-boolean v0, v0, Lcom/fyber/inneractive/sdk/player/ui/d;->e:Z

    if-eqz v0, :cond_28

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v0, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->k()Z

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->E:F

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/j;->a(F)V

    :cond_28
    return-void
.end method

.method public d(Z)V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->J()V

    :cond_15
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->k:Landroid/graphics/Bitmap;

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/ui/l;->b(Z)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v1, v0}, Lcom/fyber/inneractive/sdk/player/ui/l;->setLastFrameBitmap(Landroid/graphics/Bitmap;)V

    :cond_2a
    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->d(Z)V

    return-void
.end method

.method public destroy()V
    .registers 2

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->H()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->g:Lcom/fyber/inneractive/sdk/player/controller/w;

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->destroy()V

    return-void
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%sonVideoViewDetachedFromWindow"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->l()V

    return-void
.end method

.method public h(Z)V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->I()V

    invoke-super {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->h(Z)V

    :cond_e
    return-void
.end method

.method public k()Z
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->k()Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_50

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_50

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    aput-object v2, v0, v1

    const-string v2, "%sconnectToTextureView playing state = %s"

    invoke-static {v2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->j()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    iget-boolean v2, v2, Lcom/fyber/inneractive/sdk/player/c;->j:Z

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/player/ui/l;->c(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    new-instance v2, Lcom/fyber/inneractive/sdk/player/ui/c;

    invoke-direct {v2}, Lcom/fyber/inneractive/sdk/player/ui/c;-><init>()V

    iput-boolean v3, v2, Lcom/fyber/inneractive/sdk/player/ui/c;->b:Z

    new-instance v4, Lcom/fyber/inneractive/sdk/player/ui/b;

    invoke-direct {v4, v2}, Lcom/fyber/inneractive/sdk/player/ui/b;-><init>(Lcom/fyber/inneractive/sdk/player/ui/c;)V

    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/player/ui/l;->d(Lcom/fyber/inneractive/sdk/player/ui/b;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/ui/l;->b(Z)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->I()V

    :cond_50
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j;->E:F

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/j;->a(F)V

    return v1
.end method

.method public l()V
    .registers 1

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->H()V

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->l()V

    return-void
.end method

.method public o()I
    .registers 5

    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->u:Lcom/fyber/inneractive/sdk/config/j;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    const-string v1, "VideoAdBufferingTimeout"

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/config/i;->a(Ljava/lang/String;II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public pauseVideo()V
    .registers 1

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->H()V

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->pauseVideo()V

    return-void
.end method

.method public s()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public u()V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s onBufferingTimeout reached. Skipping to end card"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-boolean v1, v1, Lcom/fyber/inneractive/sdk/player/ui/d;->e:Z

    if-eqz v1, :cond_1a

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->u:Z

    invoke-virtual {p0, v3}, Lcom/fyber/inneractive/sdk/player/controller/n;->c(Z)V

    :cond_1a
    return-void
.end method

.method public w()V
    .registers 1

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->F()V

    return-void
.end method

.method public x()V
    .registers 3

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->j()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/ui/l;->a(Z)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/n;->D()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->H()V

    return-void
.end method

.method public y()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/n;->a:Lcom/fyber/inneractive/sdk/player/c;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/c;->b:Lcom/fyber/inneractive/sdk/player/controller/g;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->k()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/j;->h(Z)V

    :cond_f
    return-void
.end method

.method public z()V
    .registers 1

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/j;->G()V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.controller.j.a (com.fyber.inneractive.sdk.player.controller.j$a)
.class public Lcom/fyber/inneractive/sdk/player/controller/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/controller/j;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/controller/j;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/controller/j;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/j$a;->a:Lcom/fyber/inneractive/sdk/player/controller/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j$a;->a:Lcom/fyber/inneractive/sdk/player/controller/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/controller/j;->h(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/j$a;->a:Lcom/fyber/inneractive/sdk/player/controller/j;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/player/controller/j;->C:Ljava/lang/Runnable;

    return-void
.end method
