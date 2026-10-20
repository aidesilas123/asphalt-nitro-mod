###### Class com.kidoz.sdk.api.ui_views.custom_drawables.DefaultPanelDrawable.PanelDrawableType (com.kidoz.sdk.api.ui_views.custom_drawables.DefaultPanelDrawable$PanelDrawableType)
.class public final enum Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;
.super Ljava/lang/Enum;
.source "DefaultPanelDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanelDrawableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

.field public static final enum CLOSE_VIEW:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

.field public static final enum OPEN_VIEW:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->OPEN_VIEW:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->CLOSE_VIEW:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    const-string v1, "OPEN_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->OPEN_VIEW:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    const-string v1, "CLOSE_VIEW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->CLOSE_VIEW:Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->$values()[Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable$PanelDrawableType;

    return-object v0
.end method
