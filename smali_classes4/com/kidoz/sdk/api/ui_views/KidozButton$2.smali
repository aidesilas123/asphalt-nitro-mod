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
