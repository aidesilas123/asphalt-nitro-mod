###### Class com.bytedance.sdk.component.adexpress.dynamic.interact.f (com.bytedance.sdk.component.adexpress.dynamic.interact.f)
.class public Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;
.source "ClickSlideUpShakeInteract.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p<",
        "Lcom/bytedance/sdk/component/adexpress/widget/ClickSlideUpShakeView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;III)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

    invoke-direct {p0, p4, p5, p6, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f;->a(IIILcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    return-void
.end method

.method private a(IIILcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V
    .registers 7

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/widget/ClickSlideUpShakeView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/widget/ClickSlideUpShakeView;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->a:Lcom/bytedance/sdk/component/adexpress/widget/SlideUpView;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->b:Landroid/content/Context;

    const/high16 p3, 0x43960000    # 300.0f

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/adexpress/c/e;->a(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    const/4 p3, -0x1

    invoke-direct {p1, p3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x51

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->b:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->N()I

    move-result p3

    if-lez p3, :cond_2a

    invoke-virtual {p4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->N()I

    move-result p3

    int-to-float p3, p3

    goto :goto_2b

    :cond_2a
    const/4 p3, 0x0

    :goto_2b
    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/adexpress/c/e;->a(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->a:Lcom/bytedance/sdk/component/adexpress/widget/SlideUpView;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->a:Lcom/bytedance/sdk/component/adexpress/widget/SlideUpView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->a:Lcom/bytedance/sdk/component/adexpress/widget/SlideUpView;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->R()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/widget/SlideUpView;->setSlideText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->a:Lcom/bytedance/sdk/component/adexpress/widget/SlideUpView;

    instance-of p2, p1, Lcom/bytedance/sdk/component/adexpress/widget/ClickSlideUpShakeView;

    if-eqz p2, :cond_76

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/widget/ClickSlideUpShakeView;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->T()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/widget/ClickSlideUpShakeView;->setShakeText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->a:Lcom/bytedance/sdk/component/adexpress/widget/SlideUpView;

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/widget/ClickSlideUpShakeView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/widget/ClickSlideUpShakeView;->getShakeView()Lcom/bytedance/sdk/component/adexpress/widget/ShakeClickView;

    move-result-object p1

    if-eqz p1, :cond_76

    new-instance p2, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f;Lcom/bytedance/sdk/component/adexpress/widget/ShakeClickView;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView;->setOnShakeViewListener(Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$a;)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/d/a;

    move-result-object p2

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_76
    return-void
.end method


# virtual methods
.method protected d()V
    .registers 1

    return-void
.end method

###### Class com.bytedance.sdk.component.adexpress.dynamic.interact.f.AnonymousClass1 (com.bytedance.sdk.component.adexpress.dynamic.interact.f$1)
.class Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f$1;
.super Ljava/lang/Object;
.source "ClickSlideUpShakeInteract.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/widget/ShakeAnimationView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f;->a(IIILcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/adexpress/widget/ShakeClickView;

.field final synthetic b:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f;Lcom/bytedance/sdk/component/adexpress/widget/ShakeClickView;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f$1;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f$1;->a:Lcom/bytedance/sdk/component/adexpress/widget/ShakeClickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
