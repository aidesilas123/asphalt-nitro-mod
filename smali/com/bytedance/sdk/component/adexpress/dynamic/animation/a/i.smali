###### Class com.bytedance.sdk.component.adexpress.dynamic.animation.a.i (com.bytedance.sdk.component.adexpress.dynamic.animation.a.i)
.class public Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;
.source "RubInAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;)Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;)F
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;->e:F

    return p0
.end method


# virtual methods
.method a()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->c:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->c:Landroid/view/View;

    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->c:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_c6

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->j()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->c:Landroid/view/View;

    invoke-direct {v2, p0, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;Landroid/view/View;)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v2

    iput v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;->e:F

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iput v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;->f:F

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->a()Ljava/lang/String;

    move-result-object v3

    const-string v6, "left"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->a()Ljava/lang/String;

    move-result-object v3

    const-string v6, "right"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    goto :goto_7f

    :cond_7b
    const-string v3, "height"

    move v6, v2

    goto :goto_87

    :cond_7f
    :goto_7f
    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;->f:F

    float-to-int v3, v3

    const-string v6, "width"

    move-object v10, v6

    move v6, v3

    move-object v3, v10

    :goto_87
    iget-object v7, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;

    new-array v1, v1, [I

    const/4 v8, 0x0

    aput v8, v1, v8

    const/4 v9, 0x1

    aput v6, v1, v9

    invoke-static {v7, v3, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->j()D

    move-result-wide v6

    mul-double v6, v6, v4

    double-to-int v3, v6

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->a(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->a(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$1;

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3

    nop

    :array_c6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

###### Class com.bytedance.sdk.component.adexpress.dynamic.animation.a.i.AnonymousClass1 (com.bytedance.sdk.component.adexpress.dynamic.animation.a.i$1)
.class Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$1;
.super Ljava/lang/Object;
.source "RubInAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;I)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$1;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$1;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;)Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$1;->a:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;->a(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .registers 3

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .registers 3

    return-void
.end method

###### Class com.bytedance.sdk.component.adexpress.dynamic.animation.a.i.a (com.bytedance.sdk.component.adexpress.dynamic.animation.a.i$a)
.class Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;
.super Ljava/lang/Object;
.source "RubInAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->c:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    :goto_19
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;

    iget-object v1, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->c:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3d

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;

    iget-object v1, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->c:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    int-to-float v2, p1

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;

    invoke-static {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;->b(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3d
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;

    iget-object v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/d;->c:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;->b(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i;)F

    move-result v0

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5d

    :cond_4b
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/a/i$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :goto_5d
    return-void
.end method
