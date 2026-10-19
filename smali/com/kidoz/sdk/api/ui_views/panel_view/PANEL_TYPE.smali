###### Class com.kidoz.sdk.api.ui_views.panel_view.PANEL_TYPE (com.kidoz.sdk.api.ui_views.panel_view.PANEL_TYPE)
.class public final enum Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;
.super Ljava/lang/Enum;
.source "PANEL_TYPE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

.field public static final enum BOTTOM:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

.field public static final enum LEFT:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum RIGHT:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum TOP:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->TOP:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->LEFT:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->RIGHT:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->BOTTOM:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->TOP:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->LEFT:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->RIGHT:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    const-string v1, "BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->BOTTOM:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->$values()[Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    return-object v0
.end method
