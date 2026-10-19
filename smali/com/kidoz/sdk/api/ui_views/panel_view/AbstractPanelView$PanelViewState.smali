###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.PanelViewState (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$PanelViewState)
.class public final enum Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;
.super Ljava/lang/Enum;
.source "AbstractPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanelViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

.field public static final enum CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

.field public static final enum OPEN:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->OPEN:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->OPEN:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    const-string v1, "CLOSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->$values()[Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    return-object v0
.end method
