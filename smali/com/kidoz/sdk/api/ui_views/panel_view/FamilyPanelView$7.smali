###### Class com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.AnonymousClass7 (com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView$7)
.class synthetic Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;
.super Ljava/lang/Object;
.source "FamilyPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction:[I

.field static final synthetic $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION:[I

.field static final synthetic $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;->values()[Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;->CENTER:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION:[I

    sget-object v3, Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;->END:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

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

    sput-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

    :try_start_26
    sget-object v3, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->TOP:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

    sget-object v3, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->BOTTOM:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->values()[Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;->$SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction:[I

    :try_start_41
    sget-object v3, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->STOP_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;->$SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction:[I

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->RESTART_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_53} :catch_53

    :catch_53
    :try_start_53
    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;->$SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction:[I

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->ON_RESET_AUTO_LAUNCH:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_5e} :catch_5e

    :catch_5e
    return-void
.end method
