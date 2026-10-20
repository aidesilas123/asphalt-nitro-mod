###### Class com.bytedance.sdk.component.adexpress.dynamic.interact.a.e (com.bytedance.sdk.component.adexpress.dynamic.interact.a.e)
.class public Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;
.super Ljava/lang/Object;
.source "TapTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static c:I = 0xa


# instance fields
.field private a:F

.field private b:F

.field private d:Z

.field private e:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->e:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_73

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_15

    const/4 p2, 0x3

    if-eq p1, p2, :cond_12

    goto/16 :goto_7f

    :cond_12
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->d:Z

    goto :goto_7f

    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->a:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->c:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_39

    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->b:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->c:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_7f

    :cond_39
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->d:Z

    goto :goto_7f

    :cond_3c
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->d:Z

    if-eqz p1, :cond_43

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->d:Z

    return v1

    :cond_43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->a:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v2, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->c:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-gez p1, :cond_70

    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->b:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->c:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_68

    goto :goto_70

    :cond_68
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->e:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;

    if-eqz p1, :cond_7f

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;->a()V

    goto :goto_7f

    :cond_70
    :goto_70
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->d:Z

    goto :goto_7f

    :cond_73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/e;->b:F

    :cond_7f
    :goto_7f
    return v0
.end method
