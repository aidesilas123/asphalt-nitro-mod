###### Class com.kidoz.sdk.api.general.ViewVisibilityEventListener (com.kidoz.sdk.api.general.ViewVisibilityEventListener)
.class public Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;
.super Ljava/lang/Object;
.source "ViewVisibilityEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;
    }
.end annotation


# instance fields
.field private mIViewCoveredListener:Lcom/kidoz/sdk/api/general/IViewCoveredListener;

.field private mIViewVisibilityEventListener:Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOnWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

.field private mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field private mView:Landroid/view/View;

.field private mViewState:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mViewState:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->initialiseListeners()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/View;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->getAllChildren(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/View;Landroid/view/View;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->isViewOverlapping(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/View;Landroid/view/View;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->isViewBlocked(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewCoveredListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mIViewCoveredListener:Lcom/kidoz/sdk/api/general/IViewCoveredListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mViewState:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    return-object p0
.end method

.method static synthetic access$502(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mViewState:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mIViewVisibilityEventListener:Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/ViewTreeObserver;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method static synthetic access$702(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/ViewTreeObserver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->initWithViewTreeObserver(Landroid/view/ViewTreeObserver;)V

    return-void
.end method

.method static synthetic access$900(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/ViewTreeObserver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->removeViewTreeObserver(Landroid/view/ViewTreeObserver;)V

    return-void
.end method

.method private getAllChildren(Landroid/view/View;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2c

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->getAllChildren(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2c
    return-object v0
.end method

.method private initOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;-><init>(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private initOnWindowAttachListener(Landroid/view/ViewTreeObserver;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mOnWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    new-instance v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;-><init>(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mOnWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    :cond_13
    return-void
.end method

.method private initOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    new-instance v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;-><init>(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_13
    return-void
.end method

.method private initWithViewTreeObserver(Landroid/view/ViewTreeObserver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->initOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver;)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->initOnWindowAttachListener(Landroid/view/ViewTreeObserver;)V

    return-void
.end method

.method private initialiseListeners()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mView:Landroid/view/View;

    new-instance v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;-><init>(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_10
    return-void
.end method

.method private isViewBlocked(Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_65

    move-object v0, p2

    :goto_f
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5e

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5e

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_57

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_57

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ge v1, v2, :cond_57

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->isViewVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 p1, 0x1

    return p1

    :cond_57
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_f

    :cond_5e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_65
    const/4 p1, 0x0

    return p1
.end method

.method private isViewOverlapping(Landroid/view/View;Landroid/view/View;)Z
    .registers 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v6, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v7, p1

    invoke-direct {v1, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance p1, Landroid/graphics/Rect;

    aget v3, v0, v2

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v0, p2

    invoke-direct {p1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method private isViewVisible(Landroid/view/View;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_34

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    mul-float v0, v0, p1

    cmpl-float p1, v0, v3

    if-lez p1, :cond_34

    goto :goto_40

    :cond_34
    move v1, v2

    goto :goto_40

    :cond_36
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    return v1
.end method

.method private removeViewTreeObserver(Landroid/view/ViewTreeObserver;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mOnWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    if-eqz v0, :cond_d

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    :cond_d
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mOnWindowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    if-eqz v0, :cond_14

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public setViewCoveredListener(Lcom/kidoz/sdk/api/general/IViewCoveredListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mIViewCoveredListener:Lcom/kidoz/sdk/api/general/IViewCoveredListener;

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->initOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;)V

    return-void
.end method

.method public setViewVisibilityEventListener(Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->mIViewVisibilityEventListener:Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    return-void
.end method

###### Class com.kidoz.sdk.api.general.ViewVisibilityEventListener.AnonymousClass1 (com.kidoz.sdk.api.general.ViewVisibilityEventListener$1)
.class Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;
.super Ljava/lang/Object;
.source "ViewVisibilityEventListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->initOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$000(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$000(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$100(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-object v5, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v5}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$000(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-eq v4, v5, :cond_2c

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    float-to-double v4, v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2c

    iget-object v4, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v4}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$000(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$200(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$000(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/View;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$300(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_71
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$400(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewCoveredListener;

    move-result-object v0

    if-eqz v0, :cond_8f

    if-eqz v2, :cond_86

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$400(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewCoveredListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/general/IViewCoveredListener;->onViewCovered(Z)V

    goto :goto_8f

    :cond_86
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$400(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewCoveredListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/general/IViewCoveredListener;->onViewCovered(Z)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8f} :catch_8f

    :catch_8f
    :cond_8f
    :goto_8f
    return-void
.end method

###### Class com.kidoz.sdk.api.general.ViewVisibilityEventListener.AnonymousClass2 (com.kidoz.sdk.api.general.ViewVisibilityEventListener$2)
.class Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;
.super Ljava/lang/Object;
.source "ViewVisibilityEventListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->initOnWindowAttachListener(Landroid/view/ViewTreeObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-ne v0, v1, :cond_2d

    :cond_14
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$502(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;->onViewBecameVisible(Z)V

    :cond_2d
    return-void
.end method

.method public onWindowDetached()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-ne v0, v1, :cond_2d

    :cond_14
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$502(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;->onViewBecameVisible(Z)V

    :cond_2d
    return-void
.end method

###### Class com.kidoz.sdk.api.general.ViewVisibilityEventListener.AnonymousClass3 (com.kidoz.sdk.api.general.ViewVisibilityEventListener$3)
.class Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;
.super Ljava/lang/Object;
.source "ViewVisibilityEventListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->initOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .registers 3

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-eq p1, v0, :cond_16

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-ne p1, v0, :cond_5d

    :cond_16
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$502(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;->onViewBecameVisible(Z)V

    goto :goto_5d

    :cond_30
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-eq p1, v0, :cond_44

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-ne p1, v0, :cond_5d

    :cond_44
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$502(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;->onViewBecameVisible(Z)V

    :cond_5d
    :goto_5d
    return-void
.end method

###### Class com.kidoz.sdk.api.general.ViewVisibilityEventListener.AnonymousClass4 (com.kidoz.sdk.api.general.ViewVisibilityEventListener$4)
.class Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;
.super Ljava/lang/Object;
.source "ViewVisibilityEventListener.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->initialiseListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$000(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$702(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$700(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$800(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/ViewTreeObserver;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-eq p1, v0, :cond_2a

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-ne p1, v0, :cond_43

    :cond_2a
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$502(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;->onViewBecameVisible(Z)V

    :cond_43
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-eq p1, v0, :cond_14

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-ne p1, v0, :cond_2d

    :cond_14
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$502(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;->onViewBecameVisible(Z)V

    :cond_2d
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$700(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$900(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/ViewTreeObserver;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.general.ViewVisibilityEventListener.ViewState (com.kidoz.sdk.api.general.ViewVisibilityEventListener$ViewState)
.class public final enum Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;
.super Ljava/lang/Enum;
.source "ViewVisibilityEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

.field public static final enum NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

.field public static final enum UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

.field public static final enum VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    new-instance v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    const-string v1, "NOT_VISIBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    new-instance v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    const-string v1, "VISIBLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->$values()[Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->$VALUES:[Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->$VALUES:[Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    return-object v0
.end method
