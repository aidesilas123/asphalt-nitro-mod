###### Class com.kidoz.sdk.api.platforms.KidozPopupWindow.AnonymousClass4 (com.kidoz.sdk.api.platforms.KidozPopupWindow$4)
.class Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;
.super Ljava/lang/Object;
.source "KidozPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->setDraggable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    goto :goto_57

    :cond_a
    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->startX:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$302(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;I)I

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->startY:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$502(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;I)I

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {p1}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$700(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$300(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v1}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$500(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_57

    :cond_3b
    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {p1}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$300(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->startX:F

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {p1}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$500(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->startY:F

    :goto_57
    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$4;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {p1}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$000(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
