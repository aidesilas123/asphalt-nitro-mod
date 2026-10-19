###### Class com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.AnonymousClass3 (com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView$3)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$3;
.super Ljava/lang/Object;
.source "FamilyPanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->initInnerPanelView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshDrawRequest()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    return-void
.end method
