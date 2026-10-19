###### Class com.facebook.ads.redexgen.X.K5 (com.facebook.ads.redexgen.X.K5)
.class public final Lcom/facebook/ads/redexgen/X/K5;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A02:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/Jy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8uiZfgsmrD5w7H2sVgAC3n2gJlRDmu8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AcResxUzczeVQ6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "S"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DeJxumnd3y1WcfHk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FMZxMK7lmQCPA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "J"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wc3PTdtI7w7wp63NJxsDpEHsC40vb1e2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jaoFPfR2hwKJJkyxUt0jn5KhPySOFpSP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/K5;->A00:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/K5;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final A00()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method private final A01()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method private final A02()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method private final A03(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method private final A04(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method private final A05(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method private final A06(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private A07(Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KF;->A00()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v1

    const/16 v0, 0xce9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A9E(ILjava/lang/Throwable;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jy;

    if-eqz v0, :cond_16

    invoke-interface {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/Jy;->AEc(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method private final A08(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method private final A09(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method private final A0A(ZILandroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public static A0B(ZLcom/facebook/ads/redexgen/X/Jy;)V
    .registers 3

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private final A0C()Z
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0D(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K5;->A00()V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K5;->A01()V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/K5;->A06(Landroid/graphics/Canvas;)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onFinishInflate()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K5;->A02()V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/K5;->A0A(ZILandroid/graphics/Rect;)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/K5;->A0D(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_16
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/K5;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_16
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .registers 8

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/K5;->A09(ZIIII)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onMeasure(II)V
    .registers 8

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/K5;->A04(II)V

    goto :goto_55
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v3

    sget-object v4, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/facebook/ads/redexgen/X/K5;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/K5;->A00:[Ljava/lang/String;

    const-string v1, "Z"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "w"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/K5;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_56

    sget-object v2, Lcom/facebook/ads/redexgen/X/K5;->A00:[Ljava/lang/String;

    const-string v1, "i"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "g"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_55
    return-void

    :cond_56
    sget-object v2, Lcom/facebook/ads/redexgen/X/K5;->A00:[Ljava/lang/String;

    const-string v1, "vkL4fX6PzwoldXVPCJAguywdSt35bgjD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "pKAP23q7ywaPjJvUhcEhiH7V9bs9jrQJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_55

    :cond_66
    throw v3
.end method

.method public final onSizeChanged(IIII)V
    .registers 7

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/K5;->A05(IIII)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/K5;->A0F(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_16
    throw v1
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/K5;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_16
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/K5;->A08(Z)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/K5;->A03(I)V

    goto :goto_13
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    :goto_13
    return-void

    :cond_14
    throw v1
.end method

.method public final performClick()Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K5;->A0C()Z

    move-result v0

    return v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/K5;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/K5;->A07(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0

    :cond_16
    throw v1
.end method
