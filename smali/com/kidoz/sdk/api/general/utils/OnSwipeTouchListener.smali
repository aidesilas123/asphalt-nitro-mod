###### Class com.kidoz.sdk.api.general.utils.OnSwipeTouchListener (com.kidoz.sdk.api.general.utils.OnSwipeTouchListener)
.class public Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;
.super Ljava/lang/Object;
.source "OnSwipeTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener$GestureListener;
    }
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener$GestureListener;-><init>(Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onSwipeLeft()V
    .registers 1

    return-void
.end method

.method public onSwipeRight()V
    .registers 1

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method

###### Class com.kidoz.sdk.api.general.utils.OnSwipeTouchListener.AnonymousClass1 (com.kidoz.sdk.api.general.utils.OnSwipeTouchListener$1)
.class synthetic Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener$1;
.super Ljava/lang/Object;
.source "OnSwipeTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.kidoz.sdk.api.general.utils.OnSwipeTouchListener.GestureListener (com.kidoz.sdk.api.general.utils.OnSwipeTouchListener$GestureListener)
.class final Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OnSwipeTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_DISTANCE_THRESHOLD:I = 0x5a

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x50


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;


# direct methods
.method private constructor <init>(Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener$GestureListener;->this$0:Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener$GestureListener;-><init>(Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const-string p4, "FLING"

    invoke-static {p4}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p4, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_49

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42b40000    # 90.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_49

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42a00000    # 80.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_49

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_42

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener$GestureListener;->this$0:Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;->onSwipeRight()V

    goto :goto_47

    :cond_42
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener$GestureListener;->this$0:Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/utils/OnSwipeTouchListener;->onSwipeLeft()V

    :goto_47
    const/4 p1, 0x1

    return p1

    :cond_49
    const/4 p1, 0x0

    return p1
.end method
