###### Class com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView$2$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2$1;
.super Ljava/lang/Object;
.source "FamilyPanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2;->onClickEnd(Lcom/kidoz/sdk/api/structure/ContentItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestoreClick()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAllowClickHandling:Z

    return-void
.end method
