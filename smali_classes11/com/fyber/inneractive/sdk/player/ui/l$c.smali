###### Class com.fyber.inneractive.sdk.player.ui.l.c (com.fyber.inneractive.sdk.player.ui.l$c)
.class public Lcom/fyber/inneractive/sdk/player/ui/l$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/ui/l;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:[I

.field public final synthetic c:I

.field public final synthetic d:Lcom/fyber/inneractive/sdk/player/ui/l;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/ui/l;Landroid/view/View;[II)V
    .registers 5

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/ui/l$c;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/ui/l$c;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/ui/l$c;->b:[I

    iput p4, p0, Lcom/fyber/inneractive/sdk/player/ui/l$c;->c:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/ui/l$c;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/player/ui/l$c;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/ui/l$c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/ui/l$c;->b:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/ui/l$c;->b:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/ui/l$c;->b:[I

    aget v2, v2, v1

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/ui/l$c;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/ui/d;->a:Lcom/fyber/inneractive/sdk/util/k0;

    iput v0, v2, Lcom/fyber/inneractive/sdk/util/k0;->a:F

    iput p1, v2, Lcom/fyber/inneractive/sdk/util/k0;->b:F

    :cond_2f
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/ui/l$c;->d:Lcom/fyber/inneractive/sdk/player/ui/l;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/ui/d;->g:Lcom/fyber/inneractive/sdk/player/ui/i;

    if-eqz v0, :cond_3e

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/ui/l$c;->c:I

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/ui/d;->a:Lcom/fyber/inneractive/sdk/util/k0;

    check-cast v0, Lcom/fyber/inneractive/sdk/player/controller/n;

    invoke-virtual {v0, v2, p1}, Lcom/fyber/inneractive/sdk/player/controller/n;->a(ILcom/fyber/inneractive/sdk/util/k0;)V

    :cond_3e
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
