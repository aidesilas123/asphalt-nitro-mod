###### Class com.fyber.inneractive.sdk.renderers.b (com.fyber.inneractive.sdk.renderers.b)
.class public Lcom/fyber/inneractive/sdk/renderers/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/renderers/b$c;
    }
.end annotation


# instance fields
.field public a:Lcom/fyber/inneractive/sdk/util/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/util/i<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/fyber/inneractive/sdk/response/e;

.field public final c:Landroid/widget/RelativeLayout;

.field public d:F

.field public e:I

.field public f:F

.field public g:J

.field public h:Z

.field public i:Z

.field public final j:Lcom/fyber/inneractive/sdk/renderers/b$c;

.field public final k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/response/e;Landroid/widget/RelativeLayout;Lcom/fyber/inneractive/sdk/renderers/b$c;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->d:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/renderers/b;->e:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->f:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->h:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->i:Z

    new-instance v0, Lcom/fyber/inneractive/sdk/renderers/b$a;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/renderers/b$a;-><init>(Lcom/fyber/inneractive/sdk/renderers/b;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->k:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/b;->b:Lcom/fyber/inneractive/sdk/response/e;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/renderers/b;->c:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/renderers/b;->j:Lcom/fyber/inneractive/sdk/renderers/b$c;

    new-instance p1, Lcom/fyber/inneractive/sdk/util/i;

    new-instance p2, Lcom/fyber/inneractive/sdk/renderers/b$b;

    invoke-direct {p2, p0}, Lcom/fyber/inneractive/sdk/renderers/b$b;-><init>(Lcom/fyber/inneractive/sdk/renderers/b;)V

    const/4 p3, 0x4

    invoke-direct {p1, p3, p2}, Lcom/fyber/inneractive/sdk/util/i;-><init>(ILcom/fyber/inneractive/sdk/util/i$a;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/renderers/b;->a:Lcom/fyber/inneractive/sdk/util/i;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IAVisibilityTracker: onCheckVisibility"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/fyber/inneractive/sdk/renderers/b;->e:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/renderers/b;->a:Lcom/fyber/inneractive/sdk/util/i;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/util/i;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/renderers/b;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_48

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3}, Landroid/view/View;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int v5, v5, v3

    int-to-float v3, v5

    div-float/2addr v4, v3

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/renderers/b;->a:Lcom/fyber/inneractive/sdk/util/i;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/util/i;->a:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iput v4, p0, Lcom/fyber/inneractive/sdk/renderers/b;->d:F

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_71

    iget v4, p0, Lcom/fyber/inneractive/sdk/renderers/b;->f:F

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float v4, v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/fyber/inneractive/sdk/renderers/b;->g:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_71

    cmp-long v4, v8, v2

    if-eqz v4, :cond_71

    const/4 v4, 0x1

    goto :goto_72

    :cond_71
    const/4 v4, 0x0

    :goto_72
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v7, "BannerVisibilityTracker | visible = %s, minVis = %f"

    invoke-static {v7, v6}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_d6

    iget-boolean v4, p0, Lcom/fyber/inneractive/sdk/renderers/b;->h:Z

    if-eqz v4, :cond_d6

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/renderers/b;->j:Lcom/fyber/inneractive/sdk/renderers/b$c;

    if-eqz v1, :cond_101

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/renderers/b;->i:Z

    if-nez v1, :cond_101

    iput-boolean v5, p0, Lcom/fyber/inneractive/sdk/renderers/b;->i:Z

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BannerVisibilityTracker | firing viewable"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/renderers/b;->j:Lcom/fyber/inneractive/sdk/renderers/b$c;

    check-cast v1, Lcom/fyber/inneractive/sdk/renderers/d;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/renderers/d;->a:Lcom/fyber/inneractive/sdk/renderers/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_a6
    iget-object v2, v1, Lcom/fyber/inneractive/sdk/flow/r;->b:Lcom/fyber/inneractive/sdk/flow/q;

    if-eqz v2, :cond_101

    move-object v3, v2

    check-cast v3, Lcom/fyber/inneractive/sdk/flow/b0;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/flow/q;->b:Lcom/fyber/inneractive/sdk/response/e;

    if-eqz v3, :cond_101

    check-cast v2, Lcom/fyber/inneractive/sdk/flow/b0;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/flow/q;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v2, Lcom/fyber/inneractive/sdk/response/f;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/response/e;->v:Ljava/lang/String;

    if-eqz v2, :cond_101

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_101

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    sget v1, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    const/4 v1, 0x0

    const-string v3, "MRC_VISIBILITY_IMPRESSION"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v3, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/network/j0;->b(Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_d5} :catch_101

    goto :goto_101

    :cond_d6
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->h:Z

    if-eqz v0, :cond_101

    iget v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->d:F

    cmpg-float v4, v0, v1

    if-gez v4, :cond_e3

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/renderers/b;->g:J

    goto :goto_f3

    :cond_e3
    cmpl-float v0, v0, v1

    if-ltz v0, :cond_f3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->g:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_f3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->g:J

    :cond_f3
    :goto_f3
    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/renderers/b;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/renderers/b;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :catch_101
    :cond_101
    :goto_101
    return-void
.end method

.method public b()V
    .registers 6

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->i:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->h:Z

    if-nez v0, :cond_18

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/renderers/b;->g:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->h:Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/renderers/b;->a()V

    :cond_18
    return-void
.end method

.method public c()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/renderers/b;->h:Z

    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/renderers/b;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
