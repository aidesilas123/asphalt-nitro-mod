###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.AnonymousClass8 (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$8)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;
.super Ljava/lang/Object;
.source "AbstractPanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->prepareHandle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelPrepared()V
    .registers 10

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIsPanelPrepared:Z

    iget-object v2, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    new-instance v8, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;

    invoke-direct {v8, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;)V

    const-wide/16 v3, 0x15e

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playGrowAnimation(Landroid/view/View;JJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    return-void
.end method
