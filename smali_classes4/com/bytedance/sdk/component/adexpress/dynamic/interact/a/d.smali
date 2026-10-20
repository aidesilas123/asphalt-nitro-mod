###### Class com.bytedance.sdk.component.adexpress.dynamic.interact.a.d (com.bytedance.sdk.component.adexpress.dynamic.interact.a.d)
.class public Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;
.super Ljava/lang/Object;
.source "SlideUpTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:F

.field private b:F

.field private c:Z

.field private d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;->e:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_50

    if-eq p1, v0, :cond_23

    const/4 v1, 0x2

    if-eq p1, v1, :cond_d

    goto :goto_56

    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;->b:F

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;->a:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_56

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;->c:Z

    goto :goto_56

    :cond_23
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;->c:Z

    if-nez p1, :cond_29

    const/4 p1, 0x0

    return p1

    :cond_29
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/d;->a()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;->b:F

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;->a:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/adexpress/c/e;->b(Landroid/content/Context;F)I

    move-result p1

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;->b:F

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;->a:F

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    cmpg-float p2, p2, v1

    if-gez p2, :cond_56

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;->e:I

    if-le p1, p2, :cond_56

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;

    if-eqz p1, :cond_56

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;->a()V

    goto :goto_56

    :cond_50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/d;->a:F

    :cond_56
    :goto_56
    return v0
.end method
