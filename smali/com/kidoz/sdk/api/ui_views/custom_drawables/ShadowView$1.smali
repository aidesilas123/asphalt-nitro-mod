###### Class com.kidoz.sdk.api.ui_views.custom_drawables.ShadowView.AnonymousClass1 (com.kidoz.sdk.api.ui_views.custom_drawables.ShadowView$1)
.class synthetic Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView$1;
.super Ljava/lang/Object;
.source "ShadowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION:[I

.field static final synthetic $SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->values()[Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView$1;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$PANEL_TYPE:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->TOP:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;->values()[Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView$1;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION:[I

    :try_start_1b
    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;->CENTER:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_23} :catch_23

    :catch_23
    :try_start_23
    sget-object v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/ShadowView$1;->$SwitchMap$com$kidoz$sdk$api$ui_views$panel_view$HANDLE_POSITION:[I

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;->END:Lcom/kidoz/sdk/api/ui_views/panel_view/HANDLE_POSITION;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2e

    :catch_2e
    return-void
.end method
