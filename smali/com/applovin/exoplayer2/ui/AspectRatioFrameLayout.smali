###### Class com.applovin.exoplayer2.ui.AspectRatioFrameLayout (com.applovin.exoplayer2.ui.AspectRatioFrameLayout)
.class public final Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;,
        Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;
    }
.end annotation


# instance fields
.field private final VJ:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;

.field private VK:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private VL:F

.field private VM:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VM:I

    if-eqz p2, :cond_23

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/applovin/sdk/R$styleable;->AppLovinAspectRatioFrameLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_12
    sget p2, Lcom/applovin/sdk/R$styleable;->AppLovinAspectRatioFrameLayout_al_resize_mode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VM:I
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_23

    :catchall_1e
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_23
    :goto_23
    new-instance p1, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;-><init>(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$1;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VJ:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;)Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VK:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;

    return-object p0
.end method


# virtual methods
.method public getResizeMode()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VM:I

    return v0
.end method

.method protected onMeasure(II)V
    .registers 11

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VL:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, p1

    int-to-float v2, v0

    div-float v3, v1, v2

    iget v4, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VL:F

    div-float/2addr v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_31

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VJ:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;

    iget p2, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VL:F

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v3, v0}, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->b(FFZ)V

    return-void

    :cond_31
    iget v5, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VM:I

    const/4 v6, 0x1

    if-eqz v5, :cond_54

    if-eq v5, v6, :cond_4f

    const/4 v7, 0x2

    if-eq v5, v7, :cond_49

    const/4 v7, 0x4

    if-eq v5, v7, :cond_3f

    goto :goto_5e

    :cond_3f
    cmpl-float p2, v4, p2

    if-lez p2, :cond_46

    iget p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VL:F

    goto :goto_4b

    :cond_46
    iget p2, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VL:F

    goto :goto_51

    :cond_49
    iget p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VL:F

    :goto_4b
    mul-float v2, v2, p1

    float-to-int p1, v2

    goto :goto_5e

    :cond_4f
    iget p2, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VL:F

    :goto_51
    div-float/2addr v1, p2

    float-to-int v0, v1

    goto :goto_5e

    :cond_54
    cmpl-float p2, v4, p2

    if-lez p2, :cond_5b

    iget p2, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VL:F

    goto :goto_51

    :cond_5b
    iget p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VL:F

    goto :goto_4b

    :goto_5e
    iget-object p2, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VJ:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;

    iget v1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VL:F

    invoke-virtual {p2, v1, v3, v6}, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->b(FFZ)V

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAspectRatio(F)V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VL:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VL:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_b
    return-void
.end method

.method public setAspectRatioListener(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;)V
    .registers 2
    .param p1    # Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VK:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;

    return-void
.end method

.method public setResizeMode(I)V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VM:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->VM:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_9
    return-void
.end method

###### Class com.applovin.exoplayer2.ui.AspectRatioFrameLayout.AnonymousClass1 (com.applovin.exoplayer2.ui.AspectRatioFrameLayout$1)
.class synthetic Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.ui.AspectRatioFrameLayout.a (com.applovin.exoplayer2.ui.AspectRatioFrameLayout$a)
.class public interface abstract Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(FFZ)V
.end method

###### Class com.applovin.exoplayer2.ui.AspectRatioFrameLayout.b (com.applovin.exoplayer2.ui.AspectRatioFrameLayout$b)
.class final Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private VN:F

.field private VO:F

.field private VP:Z

.field private VQ:Z

.field final synthetic VR:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->VR:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;-><init>(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;)V

    return-void
.end method


# virtual methods
.method public b(FFZ)V
    .registers 4

    iput p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->VN:F

    iput p2, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->VO:F

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->VP:Z

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->VQ:Z

    if-nez p1, :cond_12

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->VQ:Z

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->VR:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public run()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->VQ:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->VR:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->a(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;)Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->VR:Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;->a(Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout;)Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;

    move-result-object v0

    iget v1, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->VN:F

    iget v2, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->VO:F

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$b;->VP:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/ui/AspectRatioFrameLayout$a;->a(FFZ)V

    return-void
.end method
