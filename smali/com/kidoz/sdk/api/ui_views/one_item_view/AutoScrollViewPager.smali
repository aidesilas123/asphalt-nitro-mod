###### Class com.kidoz.sdk.api.ui_views.one_item_view.AutoScrollViewPager (com.kidoz.sdk.api.ui_views.one_item_view.AutoScrollViewPager)
.class public Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "AutoScrollViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager$MyHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERVAL:I = 0x5dc

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final SCROLL_WHAT:I = 0x0

.field public static final SLIDE_BORDER_MODE_CYCLE:I = 0x1

.field public static final SLIDE_BORDER_MODE_NONE:I = 0x0

.field public static final SLIDE_BORDER_MODE_TO_PARENT:I = 0x2


# instance fields
.field private autoScrollFactor:D

.field private direction:I

.field private downX:F

.field private handler:Landroid/os/Handler;

.field private interval:J

.field private isAutoScroll:Z

.field private isBorderAnimation:Z

.field private isCycle:Z

.field private isStopByTouch:Z

.field public mIsBlocked:Z

.field private scroller:Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;

.field private slideBorderMode:I

.field private stopScrollWhenTouch:Z

.field private swipeScrollFactor:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->interval:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->direction:I

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isCycle:Z

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->stopScrollWhenTouch:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->slideBorderMode:I

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isBorderAnimation:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->autoScrollFactor:D

    iput-wide v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->swipeScrollFactor:D

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isAutoScroll:Z

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isStopByTouch:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->downX:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->scroller:Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->mIsBlocked:Z

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x5dc

    iput-wide p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->interval:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->direction:I

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isCycle:Z

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->stopScrollWhenTouch:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->slideBorderMode:I

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isBorderAnimation:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->autoScrollFactor:D

    iput-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->swipeScrollFactor:D

    iput-boolean p2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isAutoScroll:Z

    iput-boolean p2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isStopByTouch:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->downX:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->scroller:Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;

    iput-boolean p2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->mIsBlocked:Z

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isAutoScroll:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)D
    .registers 3

    iget-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->autoScrollFactor:D

    return-wide v0
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->scroller:Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)D
    .registers 3

    iget-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->swipeScrollFactor:D

    return-wide v0
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)J
    .registers 3

    iget-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->interval:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->sendScrollMessage(J)V

    return-void
.end method

.method private init()V
    .registers 2

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager$MyHandler;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager$MyHandler;-><init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->setViewPagerScroller()V

    return-void
.end method

.method private sendScrollMessage(J)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setViewPagerScroller()V
    .registers 6

    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v2, Landroidx/viewpager/widget/ViewPager;

    const-string v3, "sInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Interpolator;

    invoke-direct {v1, v3, v2}, Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->scroller:Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_31
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->mIsBlocked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    iget-boolean v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->stopScrollWhenTouch:Z

    if-eqz v2, :cond_27

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isAutoScroll:Z

    if-eqz v0, :cond_1a

    iput-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isStopByTouch:Z

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->stopAutoScroll()V

    goto :goto_27

    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_27

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isStopByTouch:Z

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->startAutoScroll()V

    :cond_27
    :goto_27
    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->slideBorderMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2e

    if-ne v0, v1, :cond_7e

    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3a

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->downX:F

    :cond_3a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_47

    const/4 v4, 0x0

    goto :goto_4b

    :cond_47
    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v4

    :goto_4b
    if-nez v3, :cond_53

    iget v6, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->downX:F

    cmpg-float v6, v6, v0

    if-lez v6, :cond_5d

    :cond_53
    add-int/lit8 v6, v4, -0x1

    if-ne v3, v6, :cond_7e

    iget v6, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->downX:F

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_7e

    :cond_5d
    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->slideBorderMode:I

    if-ne v0, v2, :cond_69

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_79

    :cond_69
    if-le v4, v1, :cond_72

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isBorderAnimation:Z

    invoke-virtual {p0, v4, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_72
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_79
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getDirection()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->direction:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
.end method

.method public getInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->interval:J

    return-wide v0
.end method

.method public getSlideBorderMode()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->slideBorderMode:I

    return v0
.end method

.method public isAutoScrollOn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isAutoScroll:Z

    return v0
.end method

.method public isBorderAnimation()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isBorderAnimation:Z

    return v0
.end method

.method public isCycle()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isCycle:Z

    return v0
.end method

.method public isStopScrollWhenTouch()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->stopScrollWhenTouch:Z

    return v0
.end method

.method public scrollOnce()V
    .registers 5

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_12

    goto :goto_37

    :cond_12
    iget v3, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->direction:I

    if-nez v3, :cond_19

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    :cond_19
    add-int/2addr v1, v2

    :goto_1a
    if-gez v1, :cond_27

    iget-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isCycle:Z

    if-eqz v1, :cond_37

    sub-int/2addr v0, v2

    iget-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isBorderAnimation:Z

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_37

    :cond_27
    if-ne v1, v0, :cond_34

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isCycle:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isBorderAnimation:Z

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_37

    :cond_34
    invoke-virtual {p0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_37
    :goto_37
    return-void
.end method

.method public setAutoScrollDurationFactor(D)V
    .registers 3

    iput-wide p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->autoScrollFactor:D

    return-void
.end method

.method public setBorderAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isBorderAnimation:Z

    return-void
.end method

.method public setCycle(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isCycle:Z

    return-void
.end method

.method public setDirection(I)V
    .registers 2

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->direction:I

    return-void
.end method

.method public setInterval(J)V
    .registers 3

    iput-wide p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->interval:J

    return-void
.end method

.method public setSlideBorderMode(I)V
    .registers 2

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->slideBorderMode:I

    return-void
.end method

.method public setStopScrollWhenTouch(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->stopScrollWhenTouch:Z

    return-void
.end method

.method public setSwipeScrollDurationFactor(D)V
    .registers 3

    iput-wide p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->swipeScrollFactor:D

    return-void
.end method

.method public startAutoScroll()V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isAutoScroll:Z

    iget-wide v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->interval:J

    long-to-double v0, v0

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->scroller:Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->autoScrollFactor:D

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->swipeScrollFactor:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    double-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->sendScrollMessage(J)V

    return-void
.end method

.method public startAutoScroll(I)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isAutoScroll:Z

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->sendScrollMessage(J)V

    return-void
.end method

.method public stopAutoScroll()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->isAutoScroll:Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.one_item_view.AutoScrollViewPager.MyHandler (com.kidoz.sdk.api.ui_views.one_item_view.AutoScrollViewPager$MyHandler)
.class Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager$MyHandler;
.super Landroid/os/Handler;
.source "AutoScrollViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final autoScrollViewPager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager$MyHandler;->autoScrollViewPager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_8

    goto :goto_42

    :cond_8
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager$MyHandler;->autoScrollViewPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    if-eqz p1, :cond_42

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$000(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;

    move-result-object v0

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$100(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;->setScrollDurationFactor(D)V

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->scrollOnce()V

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;

    move-result-object v0

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$300(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;->setScrollDurationFactor(D)V

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$400(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$500(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;J)V

    :cond_42
    :goto_42
    return-void
.end method
