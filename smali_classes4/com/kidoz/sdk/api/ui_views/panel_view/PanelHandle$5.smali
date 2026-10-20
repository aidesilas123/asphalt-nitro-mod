###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass5 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$5)
.class synthetic Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$5;
.super Ljava/lang/Object;
.source "PanelHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

.field static final synthetic $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PanelHandle$PANEL_HANDLE_VIEW_STATE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->values()[Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$5;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PanelHandle$PANEL_HANDLE_VIEW_STATE:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$5;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PanelHandle$PANEL_HANDLE_VIEW_STATE:[I

    sget-object v3, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->OPENED:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->values()[Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$5;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

    :try_start_26
    sget-object v3, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->BOTTOM:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$5;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->TOP:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    return-void
.end method
