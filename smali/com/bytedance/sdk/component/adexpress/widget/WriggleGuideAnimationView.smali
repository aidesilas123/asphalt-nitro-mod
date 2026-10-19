###### Class com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView (com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView)
.class public Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;
.super Landroid/widget/LinearLayout;
.source "WriggleGuideAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$a;,
        Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/bytedance/sdk/component/utils/t;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$a;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideView;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->h:I

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    instance-of p1, p2, Lcom/bytedance/sdk/component/adexpress/layout/TTHandWriggleGuide;

    if-eqz p1, :cond_2b

    check-cast p2, Lcom/bytedance/sdk/component/adexpress/layout/TTHandWriggleGuide;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/layout/TTHandWriggleGuide;->getWriggleLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/layout/TTHandWriggleGuide;->getTopImage()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/layout/TTHandWriggleGuide;->getProgressImg()Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->g:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/layout/TTHandWriggleGuide;->getTopText()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/layout/TTHandWriggleGuide;->getBarText()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->d:Landroid/widget/TextView;

    :cond_2b
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-string p2, "#57000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getTopTextView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWriggleLayout()Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getWriggleProgressIv()Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideView;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->g:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->c:Lcom/bytedance/sdk/component/utils/t;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/bytedance/sdk/component/utils/t;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/utils/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->c:Lcom/bytedance/sdk/component/utils/t;

    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->c:Lcom/bytedance/sdk/component/utils/t;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$2;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->a(Lcom/bytedance/sdk/component/utils/t$a;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->c:Lcom/bytedance/sdk/component/utils/t;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/t;->b(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->c:Lcom/bytedance/sdk/component/utils/t;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/t;->a()V

    :cond_33
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->c:Lcom/bytedance/sdk/component/utils/t;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/t;->b()V

    :cond_a
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->c:Lcom/bytedance/sdk/component/utils/t;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/t;->a()V

    goto :goto_d

    :cond_a
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/t;->b()V

    :cond_d
    :goto_d
    return-void
.end method

.method public setOnShakeViewListener(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->e:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$a;

    return-void
.end method

.method public setShakeText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.AnonymousClass1 (com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView$1)
.class Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;
.super Ljava/lang/Object;
.source "WriggleGuideAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;->a:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;->a:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->a(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_36

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, -0x3df40000    # -35.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$b;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;Landroid/view/animation/RotateAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;->a:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->a(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_36
    return-void
.end method

###### Class com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.AnonymousClass1.AnimationAnimationListenerC01081 (com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView$1$1)
.class Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;
.super Ljava/lang/Object;
.source "WriggleGuideAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/RotateAnimation;

.field final synthetic b:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;Landroid/view/animation/RotateAnimation;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;->b:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;->a:Landroid/view/animation/RotateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;->b:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;

    iget-object p1, p1, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;->a:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1$1;-><init>(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

###### Class com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.AnonymousClass1.AnimationAnimationListenerC01081.RunnableC01091 (com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView$1$1$1)
.class Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1$1;
.super Ljava/lang/Object;
.source "WriggleGuideAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1$1;->a:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1$1;->a:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;->b:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;->a:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->a(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1$1;->a:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;

    iget-object v1, v1, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1$1;->a:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

###### Class com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.AnonymousClass2 (com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView$2)
.class Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$2;
.super Ljava/lang/Object;
.source "WriggleGuideAnimationView.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$2;->a:Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.a (com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView$a)
.class public interface abstract Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$a;
.super Ljava/lang/Object;
.source "WriggleGuideAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

###### Class com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.b (com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView$b)
.class Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$b;
.super Ljava/lang/Object;
.source "WriggleGuideAnimationView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/widget/WriggleGuideAnimationView$b;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3

    const v0, 0x3ecccccd    # 0.4f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_c

    const/high16 v0, 0x40200000    # 2.5f

    mul-float p1, p1, v0

    return p1

    :cond_c
    const v0, 0x3f4ccccd    # 0.8f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1d

    const v0, -0x3ff33333    # -2.2f

    mul-float p1, p1, v0

    const v0, 0x3fee147b    # 1.86f

    add-float/2addr p1, v0

    return p1

    :cond_1d
    const v0, -0x40cccccd    # -0.7f

    mul-float p1, p1, v0

    const v0, 0x3f333333    # 0.7f

    add-float/2addr p1, v0

    return p1
.end method
