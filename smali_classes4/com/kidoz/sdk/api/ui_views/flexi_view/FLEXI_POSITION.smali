###### Class com.kidoz.sdk.api.ui_views.flexi_view.FLEXI_POSITION (com.kidoz.sdk.api.ui_views.flexi_view.FLEXI_POSITION)
.class public final enum Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;
.super Ljava/lang/Enum;
.source "FLEXI_POSITION.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

.field public static final enum BOTTOM_CENTER:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

.field public static final enum BOTTOM_END:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

.field public static final enum BOTTOM_START:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

.field public static final enum MIDDLE_CENTER:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

.field public static final enum MIDDLE_END:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

.field public static final enum MIDDLE_START:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

.field public static final enum TOP_CENTER:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

.field public static final enum TOP_END:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

.field public static final enum TOP_START:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->TOP_START:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->TOP_CENTER:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->TOP_END:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->MIDDLE_START:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->MIDDLE_CENTER:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->MIDDLE_END:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->BOTTOM_START:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->BOTTOM_CENTER:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->BOTTOM_END:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const-string v1, "TOP_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->TOP_START:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const-string v1, "TOP_CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->TOP_CENTER:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const-string v1, "TOP_END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->TOP_END:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const-string v1, "MIDDLE_START"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->MIDDLE_START:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const-string v1, "MIDDLE_CENTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->MIDDLE_CENTER:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const-string v1, "MIDDLE_END"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->MIDDLE_END:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const-string v1, "BOTTOM_START"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->BOTTOM_START:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->BOTTOM_CENTER:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    const-string v1, "BOTTOM_END"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->BOTTOM_END:Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->$values()[Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/ui_views/flexi_view/FLEXI_POSITION;

    return-object v0
.end method
