###### Class com.kidoz.sdk.api.ui_views.KidozButton (com.kidoz.sdk.api.ui_views.KidozButton)
.class public Lcom/kidoz/sdk/api/ui_views/KidozButton;
.super Landroid/widget/RelativeLayout;
.source "KidozButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final BUTTON_SIZE_RATIO:F

.field private mAssetView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

.field private mIsAlreadySentButtonReady:Z

.field private mIsButtonReady:Z

.field private mKidozButtonListener:Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;

.field private mWidgetType:Lcom/kidoz/sdk/api/general/enums/WidgetType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x3e4ccccd    # 0.2f

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->BUTTON_SIZE_RATIO:F

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3e4ccccd    # 0.2f

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->BUTTON_SIZE_RATIO:F

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3e4ccccd    # 0.2f

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->BUTTON_SIZE_RATIO:F

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/KidozButton;)Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->mKidozButtonListener:Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kidoz/sdk/api/ui_views/KidozButton;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->mIsButtonReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/ui_views/KidozButton;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->mIsAlreadySentButtonReady:Z

    return p0
.end method

.method static synthetic access$202(Lcom/kidoz/sdk/api/ui_views/KidozButton;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->mIsAlreadySentButtonReady:Z

    return p1
.end method

.method private initAssetView(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->mAssetView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->mAssetView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initRootView(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$1;

    invoke-direct {p1, p0}, Lcom/kidoz/sdk/api/ui_views/KidozButton$1;-><init>(Lcom/kidoz/sdk/api/ui_views/KidozButton;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->initRootView(Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-direct {p0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->initAssetView(Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->loadAssetView()V

    return-void
.end method

.method private loadAssetView()V
    .registers 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->mWidgetType:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    if-eqz v0, :cond_10

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/KidozButton$3;->$SwitchMap$com$kidoz$sdk$api$general$enums$WidgetType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :cond_10
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->o(Ljava/lang/Object;)V

    :cond_21
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public onHandleEvent(Lcom/kidoz/sdk/api/general/EventMessage;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/k;
    .end annotation

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/EventMessage;->getMessageType()Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->VIDEO_UNIT_BUTTON_READY:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    if-ne p1, v0, :cond_1d

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->loadAssetView()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1d

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method public setKidozButtonListener(Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->mKidozButtonListener:Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;

    if-eqz p1, :cond_12

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->mIsAlreadySentButtonReady:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->mIsButtonReady:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iput-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->mIsAlreadySentButtonReady:Z

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;->onButtonReady()V

    :cond_12
    return-void
.end method

.method public setWidgetType(Lcom/kidoz/sdk/api/general/enums/WidgetType;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton;->mWidgetType:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->loadAssetView()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.KidozButton.AnonymousClass1 (com.kidoz.sdk.api.ui_views.KidozButton$1)
.class Lcom/kidoz/sdk/api/ui_views/KidozButton$1;
.super Ljava/lang/Object;
.source "KidozButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozButton;->initRootView(Landroid/widget/RelativeLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/KidozButton;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/KidozButton$1;Landroid/view/View;)V

    const/16 p1, 0x46

    invoke-static {v0, p1, v1}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.KidozButton.AnonymousClass1.C03741 (com.kidoz.sdk.api.ui_views.KidozButton$1$1)
.class Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;
.super Ljava/lang/Object;
.source "KidozButton.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozButton$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$1;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/KidozButton$1;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$1;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;->val$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->access$000(Lcom/kidoz/sdk/api/ui_views/KidozButton;)Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;->onClick()V

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.KidozButton.AnonymousClass2 (com.kidoz.sdk.api.ui_views.KidozButton$2)
.class Lcom/kidoz/sdk/api/ui_views/KidozButton$2;
.super Ljava/lang/Object;
.source "KidozButton.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozButton;->loadAssetView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/KidozButton;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 9

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    new-instance v6, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;

    invoke-direct {v6, p0}, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;-><init>(Lcom/kidoz/sdk/api/ui_views/KidozButton$2;)V

    const-wide/16 v1, 0x15e

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playGrowAnimation(Landroid/view/View;JJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.KidozButton.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.ui_views.KidozButton$2$1)
.class Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;
.super Ljava/lang/Object;
.source "KidozButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->onAssetLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/KidozButton$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

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

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestFocus()Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->bringToFront()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->access$102(Lcom/kidoz/sdk/api/ui_views/KidozButton;Z)Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->access$000(Lcom/kidoz/sdk/api/ui_views/KidozButton;)Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;

    move-result-object p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->access$200(Lcom/kidoz/sdk/api/ui_views/KidozButton;)Z

    move-result p1

    if-nez p1, :cond_3c

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->access$202(Lcom/kidoz/sdk/api/ui_views/KidozButton;Z)Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->access$000(Lcom/kidoz/sdk/api/ui_views/KidozButton;)Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;->onButtonReady()V

    :cond_3c
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestFocus()Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->bringToFront()V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.KidozButton.AnonymousClass3 (com.kidoz.sdk.api.ui_views.KidozButton$3)
.class synthetic Lcom/kidoz/sdk/api/ui_views/KidozButton$3;
.super Ljava/lang/Object;
.source "KidozButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/KidozButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$general$enums$WidgetType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->values()[Lcom/kidoz/sdk/api/general/enums/WidgetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/KidozButton$3;->$SwitchMap$com$kidoz$sdk$api$general$enums$WidgetType:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_VIDEO_UNIT:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.KidozButton.KidozButtonListener (com.kidoz.sdk.api.ui_views.KidozButton$KidozButtonListener)
.class public interface abstract Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;
.super Ljava/lang/Object;
.source "KidozButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/KidozButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KidozButtonListener"
.end annotation


# virtual methods
.method public abstract onButtonReady()V
.end method

.method public abstract onClick()V
.end method
