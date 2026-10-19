###### Class com.facebook.ads.redexgen.X.KA (com.facebook.ads.redexgen.X.KA)
.class public final Lcom/facebook/ads/redexgen/X/KA;
.super Landroid/view/ViewGroup;
.source ""


# static fields
.field public static final A00:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private final A00()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method private final A01()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method private final A02()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    return-void
.end method

.method private final A03(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method private final A04(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method private final A05(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    return-void
.end method

.method private final A06(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private A07(Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KF;->A00()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v1

    const/16 v0, 0xce8

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A9E(ILjava/lang/Throwable;)V

    return-void
.end method

.method public static A08(Z)V
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private final A09(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    return-void
.end method

.method private final A0A(ZILandroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method private final A0B()Z
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0C(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0D(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0E(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KA;->A00()V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KA;->A01()V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KA;->A06(Landroid/graphics/Canvas;)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onFinishInflate()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KA;->A02()V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KA;->A0A(ZILandroid/graphics/Rect;)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KA;->A0C(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_16
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KA;->A0D(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_16
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .registers 6

    return-void
.end method

.method public final onMeasure(II)V
    .registers 5

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KA;->A04(II)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onSizeChanged(IIII)V
    .registers 7

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/KA;->A05(IIII)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KA;->A0E(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_16
    throw v1
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KA;->A0F(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_16
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KA;->A09(Z)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KA;->A03(I)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final performClick()Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KA;->A0B()Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KA;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KA;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v0

    return v0

    :cond_16
    throw v1
.end method
