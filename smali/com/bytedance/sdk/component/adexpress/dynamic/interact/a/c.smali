###### Class com.bytedance.sdk.component.adexpress.dynamic.interact.a.c (com.bytedance.sdk.component.adexpress.dynamic.interact.a.c)
.class public Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;
.super Ljava/lang/Object;
.source "SlideRightTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:F

.field private b:F

.field private c:Z

.field private d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;)V
    .registers 3

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;I)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->e:I

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;

    if-lez p2, :cond_c

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->e:I

    :cond_c
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4e

    if-eq p1, v0, :cond_23

    const/4 v1, 0x2

    if-eq p1, v1, :cond_d

    goto :goto_54

    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->b:F

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->a:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_54

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->c:Z

    goto :goto_54

    :cond_23
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->c:Z

    if-nez p1, :cond_29

    const/4 p1, 0x0

    return p1

    :cond_29
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/d;->a()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->b:F

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->a:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/adexpress/c/e;->b(Landroid/content/Context;F)I

    move-result p1

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->b:F

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->a:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_54

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->e:I

    if-le p1, p2, :cond_54

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;

    if-eqz p1, :cond_54

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/h;->a()V

    goto :goto_54

    :cond_4e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a/c;->a:F

    :cond_54
    :goto_54
    return v0
.end method
