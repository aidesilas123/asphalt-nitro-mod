###### Class com.facebook.ads.redexgen.X.K9 (com.facebook.ads.redexgen.X.K9)
.class public final Lcom/facebook/ads/redexgen/X/K9;
.super Landroid/view/View;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kAVfBRgsuHAPyLthoP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "t17O26GbxI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AAEx162laq7qeqX9thcQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HAXhrl7a7PCZ9u3oTFWkwwhVB4A5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GFzV2eDHhD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HOPUDh1leN9OTkJ3x1a"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/K9;->A00:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private final A00()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method private final A01()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method private final A02()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method private final A03(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method private final A04(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method private final A05(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method private final A06(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private A07(Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KF;->A00()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v1

    const/16 v0, 0xce7

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A9E(ILjava/lang/Throwable;)V

    return-void
.end method

.method public static A08(Z)V
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private final A09(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method private final A0A(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method private final A0B(ZILandroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method private final A0C()Z
    .registers 2

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0D(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K9;->A00()V

    goto :goto_2c
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/K9;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2e

    sget-object v2, Lcom/facebook/ads/redexgen/X/K9;->A00:[Ljava/lang/String;

    const-string v1, "rnq1MXg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    :goto_2c
    return-void

    :cond_2d
    throw v3

    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K9;->A01()V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/K9;->A06(Landroid/graphics/Canvas;)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onFinishInflate()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K9;->A02()V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/K9;->A0B(ZILandroid/graphics/Rect;)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/K9;->A0D(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/K9;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_34

    sget-object v2, Lcom/facebook/ads/redexgen/X/K9;->A00:[Ljava/lang/String;

    const-string v1, "5DVI70tdQk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3a
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/K9;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_16
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .registers 8

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/K9;->A0A(ZIIII)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onMeasure(II)V
    .registers 5

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/K9;->A04(II)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onSizeChanged(IIII)V
    .registers 7

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/K9;->A05(IIII)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/K9;->A0F(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_16
    throw v1
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/K9;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_16
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 5

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/K9;->A09(Z)V

    goto :goto_27
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/K9;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_28

    sget-object v2, Lcom/facebook/ads/redexgen/X/K9;->A00:[Ljava/lang/String;

    const-string v1, "0jBFwaBL8FA97JJQoE8VdUJeS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    :goto_27
    return-void

    :cond_28
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2e
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .registers 5

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/K9;->A03(I)V

    goto :goto_26
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/K9;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_27

    sget-object v2, Lcom/facebook/ads/redexgen/X/K9;->A00:[Ljava/lang/String;

    const-string v1, "8Ha1wZjMuo1MUnpr2KcgLPpAJB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    :goto_26
    return-void

    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2d
    throw v1
.end method

.method public final performClick()Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K9;->A0C()Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/K9;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/facebook/ads/redexgen/X/K9;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_2b

    sget-object v2, Lcom/facebook/ads/redexgen/X/K9;->A00:[Ljava/lang/String;

    const-string v1, "LfZZ0wz91OrvOK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/K9;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0

    :cond_2a
    throw v4

    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
