###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass20 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$20)
.class synthetic Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$20;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->values()[Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$20;->$SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->STOP_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$20;->$SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction:[I

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->RESTART_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
