###### Class com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.OneItemAction (com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView$OneItemAction)
.class public final enum Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;
.super Ljava/lang/Enum;
.source "OneItemFamilyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OneItemAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

.field public static final enum ON_RESET_AUTO_LAUNCH:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

.field public static final enum RESTART_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

.field public static final enum STOP_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->STOP_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->RESTART_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->ON_RESET_AUTO_LAUNCH:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    const-string v1, "STOP_ANY_ANIMATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->STOP_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    const-string v1, "RESTART_ANY_ANIMATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->RESTART_ANY_ANIMATION:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    const-string v1, "ON_RESET_AUTO_LAUNCH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->ON_RESET_AUTO_LAUNCH:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->$values()[Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;

    return-object v0
.end method
