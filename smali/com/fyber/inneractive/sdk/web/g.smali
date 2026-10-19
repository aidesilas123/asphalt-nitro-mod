###### Class com.fyber.inneractive.sdk.web.g (com.fyber.inneractive.sdk.web.g)
.class public Lcom/fyber/inneractive/sdk/web/g;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/web/g$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/fyber/inneractive/sdk/web/g$a;

.field public d:Lcom/fyber/inneractive/sdk/web/w;

.field public final e:Lcom/fyber/inneractive/sdk/util/k0;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/g;->a:Z

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/k0;->a()Lcom/fyber/inneractive/sdk/util/k0;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/g;->e:Lcom/fyber/inneractive/sdk/util/k0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->b()Lcom/fyber/inneractive/sdk/config/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/config/e;->a()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/web/g;->a:Z

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/k0;->a()Lcom/fyber/inneractive/sdk/util/k0;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/g;->e:Lcom/fyber/inneractive/sdk/util/k0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "injecting JS: %s"

    invoke-static {v2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_29

    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_22

    goto :goto_29

    :catch_22
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Failed to inject JS"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public a()Z
    .registers 5

    invoke-virtual {p0}, Landroid/webkit/WebView;->isShown()Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getApplicationWindowToken()Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_31

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2b

    invoke-virtual {p0}, Landroid/webkit/WebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/g;->a:Z

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/web/g;->a(Z)Z

    move-result v0

    return v0

    :cond_31
    invoke-virtual {p0}, Landroid/webkit/WebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/g;->a:Z

    if-eqz v0, :cond_42

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    invoke-virtual {p0, v2}, Lcom/fyber/inneractive/sdk/web/g;->a(Z)Z

    move-result v0

    return v0
.end method

.method public final a(Z)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_25

    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_25

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_25

    const/4 p1, 0x0

    :cond_25
    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/web/g;->b:Z

    if-eq v2, p1, :cond_33

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/web/g;->b:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/g;->c:Lcom/fyber/inneractive/sdk/web/g$a;

    if-eqz v0, :cond_32

    invoke-interface {v0, p1}, Lcom/fyber/inneractive/sdk/web/g$a;->a(Z)V

    :cond_32
    return v1

    :cond_33
    return v0
.end method

.method public destroy()V
    .registers 2

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_3

    :catchall_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/g;->c:Lcom/fyber/inneractive/sdk/web/g$a;

    return-void
.end method

.method public getHeightDp()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/web/g;->g:I

    return v0
.end method

.method public getIsVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/g;->b:Z

    return v0
.end method

.method public getLastClickedLocation()Lcom/fyber/inneractive/sdk/util/k0;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/g;->e:Lcom/fyber/inneractive/sdk/util/k0;

    return-object v0
.end method

.method public getWidthDp()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/web/g;->f:I

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/g;->a:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/g;->a:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/g;->c:Lcom/fyber/inneractive/sdk/web/g$a;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/web/g$a;->a()V

    :cond_11
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/g;->a()Z

    :cond_14
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/g;->b:Z

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/web/g;->a:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/web/g;->a:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/g;->c:Lcom/fyber/inneractive/sdk/web/g$a;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/web/g$a;->b()V

    :cond_14
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/g;->a()Z

    :cond_17
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/g;->a()Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_44

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v12, 0x0

    move v10, v0

    move v11, v1

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_44
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/g;->d:Lcom/fyber/inneractive/sdk/web/w;

    if-eqz v0, :cond_4b

    invoke-virtual {v0, p0, p1}, Lcom/fyber/inneractive/sdk/web/w;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_4b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/g;->e:Lcom/fyber/inneractive/sdk/util/k0;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v1, v0, Lcom/fyber/inneractive/sdk/util/k0;->a:F

    iput v2, v0, Lcom/fyber/inneractive/sdk/util/k0;->b:F

    :cond_5f
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/g;->a()Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/g;->a()Z

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_c

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/web/g;->a(Z)Z

    goto :goto_f

    :cond_c
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/g;->a()Z

    :goto_f
    return-void
.end method

.method public setHeightDp(I)V
    .registers 2

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/g;->g:I

    return-void
.end method

.method public setListener(Lcom/fyber/inneractive/sdk/web/g$a;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/g;->c:Lcom/fyber/inneractive/sdk/web/g$a;

    return-void
.end method

.method public setTapListener(Lcom/fyber/inneractive/sdk/web/w$a;)V
    .registers 4

    new-instance v0, Lcom/fyber/inneractive/sdk/web/w;

    sget-object v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->v:Lcom/fyber/inneractive/sdk/config/e;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/config/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fyber/inneractive/sdk/web/w;-><init>(Lcom/fyber/inneractive/sdk/web/w$a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/web/g;->d:Lcom/fyber/inneractive/sdk/web/w;

    return-void
.end method

.method public setWidthDp(I)V
    .registers 2

    iput p1, p0, Lcom/fyber/inneractive/sdk/web/g;->f:I

    return-void
.end method

###### Class com.fyber.inneractive.sdk.web.g.a (com.fyber.inneractive.sdk.web.g$a)
.class public interface abstract Lcom/fyber/inneractive/sdk/web/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/web/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Z)V
.end method

.method public abstract b()V
.end method
