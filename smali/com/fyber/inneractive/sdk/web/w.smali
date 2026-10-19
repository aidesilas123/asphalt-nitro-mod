###### Class com.fyber.inneractive.sdk.web.w (com.fyber.inneractive.sdk.web.w)
.class public final Lcom/fyber/inneractive/sdk/web/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/web/w$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/web/w$a;

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/w$a;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/w;->a:Lcom/fyber/inneractive/sdk/web/w$a;

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/w;->d:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/w;->a:Lcom/fyber/inneractive/sdk/web/w$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_b9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/w;->a:Lcom/fyber/inneractive/sdk/web/w$a;

    check-cast p1, Lcom/fyber/inneractive/sdk/web/d;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/web/d;->j()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/w;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/w;->c:F

    goto/16 :goto_b9

    :cond_20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x3

    const/high16 v2, -0x40800000    # -1.0f

    if-ne p1, v1, :cond_36

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/w;->a:Lcom/fyber/inneractive/sdk/web/w$a;

    check-cast p1, Lcom/fyber/inneractive/sdk/web/d;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/web/d;->j()V

    iput v2, p0, Lcom/fyber/inneractive/sdk/web/w;->c:F

    iput v2, p0, Lcom/fyber/inneractive/sdk/web/w;->b:F

    goto/16 :goto_b9

    :cond_36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_b9

    iget p1, p0, Lcom/fyber/inneractive/sdk/web/w;->b:F

    const/4 v3, 0x0

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_b9

    iget v4, p0, Lcom/fyber/inneractive/sdk/web/w;->c:F

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_b9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iget v3, p0, Lcom/fyber/inneractive/sdk/web/w;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    iget v3, p0, Lcom/fyber/inneractive/sdk/web/w;->d:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_b5

    cmpg-float p1, p2, v3

    if-gez p1, :cond_b5

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/w;->a:Lcom/fyber/inneractive/sdk/web/w$a;

    check-cast p1, Lcom/fyber/inneractive/sdk/web/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v3, "IAWebViewController onClicked()"

    invoke-static {v3, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/web/d;->l:Lcom/fyber/inneractive/sdk/web/d$c;

    if-eqz p2, :cond_99

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/web/d;->l:Lcom/fyber/inneractive/sdk/web/d$c;

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/web/d$c;->d()V

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/web/d;->m:Ljava/lang/Runnable;

    if-eqz p2, :cond_92

    sget-object v1, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_92
    const/4 p2, 0x0

    iput-object p2, p1, Lcom/fyber/inneractive/sdk/web/d;->l:Lcom/fyber/inneractive/sdk/web/d$c;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/web/d;->j()V

    goto :goto_b5

    :cond_99
    iget-object p2, p1, Lcom/fyber/inneractive/sdk/web/d;->n:Ljava/lang/Runnable;

    if-eqz p2, :cond_b3

    sget-object p2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->u:Lcom/fyber/inneractive/sdk/config/j;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/config/j;->b:Lcom/fyber/inneractive/sdk/config/i;

    const-string v3, "click_timeout"

    const/16 v4, 0x3e8

    invoke-virtual {p2, v3, v4, v4}, Lcom/fyber/inneractive/sdk/config/i;->a(Ljava/lang/String;II)I

    move-result p2

    sget-object v3, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    iget-object v4, p1, Lcom/fyber/inneractive/sdk/web/d;->n:Ljava/lang/Runnable;

    int-to-long v5, p2

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b3
    iput-boolean v1, p1, Lcom/fyber/inneractive/sdk/web/d;->j:Z

    :cond_b5
    :goto_b5
    iput v2, p0, Lcom/fyber/inneractive/sdk/web/w;->b:F

    iput v2, p0, Lcom/fyber/inneractive/sdk/web/w;->c:F

    :cond_b9
    :goto_b9
    return v0
.end method
