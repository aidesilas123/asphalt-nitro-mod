###### Class com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.AnonymousClass2 (com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView$2)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2;
.super Ljava/lang/Object;
.source "FamilyPanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;


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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickEnd(Lcom/kidoz/sdk/api/structure/ContentItem;I)V
    .registers 12

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    iget-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAllowClickHandling:Z

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAllowClickHandling:Z

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_PANEL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    iget-object v5, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mStyleId:Ljava/lang/String;

    const/4 v7, 0x1

    new-instance v8, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2$1;

    invoke-direct {v8, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2;)V

    move-object v3, p1

    move v6, p2

    invoke-static/range {v2 .. v8}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V

    :cond_22
    return-void
.end method
