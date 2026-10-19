###### Class com.bytedance.sdk.component.adexpress.dynamic.interact.a.f (com.bytedance.sdk.component.adexpress.dynamic.interact.a.f)
.class public Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;
.super Ljava/lang/Object;
.source "UnlockTapTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static c:I = 0xa


# instance fields
.field private a:F

.field private b:F

.field private d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;

.field private e:I

.field private f:Landroid/graphics/RectF;

.field private g:J

.field private final h:I

.field private final i:I

.field private j:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;ILandroid/view/ViewGroup;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->c:I

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->e:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->f:Landroid/graphics/RectF;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->g:J

    const/16 v0, 0xc8

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->h:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->i:I

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->j:Ljava/lang/ref/SoftReference;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;

    if-lez p2, :cond_27

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->e:I

    :cond_27
    if-eqz p3, :cond_31

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f$1;

    invoke-direct {p1, p0, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;Landroid/view/ViewGroup;)V

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_31
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/graphics/RectF;
    .registers 9

    if-nez p1, :cond_8

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    :cond_8
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    aget v2, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-direct {v1, v3, v5, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->j:Ljava/lang/ref/SoftReference;

    return-object p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_80

    if-eq p1, v0, :cond_b

    goto/16 :goto_a0

    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->f:Landroid/graphics/RectF;

    if-eqz p1, :cond_1b

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->a:F

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->b:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_1b

    const/4 p1, 0x0

    return p1

    :cond_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->a:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->b:F

    sub-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/d;->a()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->a:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/adexpress/c/e;->b(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->c:I

    int-to-float v4, v3

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_61

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_4f

    goto :goto_61

    :cond_4f
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->a:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_a0

    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->e:I

    if-le v2, p1, :cond_a0

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;

    if-eqz p1, :cond_a0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;->a()V

    goto :goto_a0

    :cond_61
    :goto_61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long p1, v2, v4

    if-ltz p1, :cond_78

    const/high16 p1, 0x40400000    # 3.0f

    cmpg-float v1, v1, p1

    if-gez v1, :cond_a0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_a0

    :cond_78
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;

    if-eqz p1, :cond_a0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;->a()V

    goto :goto_a0

    :cond_80
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->j:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->a(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->f:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->b:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/f;->g:J

    :cond_a0
    :goto_a0
    return v0
.end method
