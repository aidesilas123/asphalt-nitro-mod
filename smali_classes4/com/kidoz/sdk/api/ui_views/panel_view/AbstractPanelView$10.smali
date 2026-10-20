###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.AnonymousClass10 (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$10)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;
.super Ljava/lang/Object;
.source "AbstractPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->openPanelForDefinedAmountOfTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

.field final synthetic val$lastLaunchTime:J


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;J)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iput-wide p2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;->val$lastLaunchTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mFirstLaunchOpenRepeatTimeFarme:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_22

    iget-wide v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;->val$lastLaunchTime:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_22

    long-to-float v1, v1

    const v2, 0x4a5bba00    # 3600000.0f

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-float v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5a

    :cond_22
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->access$400(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "fistTimeLastLounch"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mFirstLaunchOpenPeriod:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5a

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->getStaticHandler()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget v2, v2, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mFirstLaunchOpenPeriod:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5a
    return-void
.end method
