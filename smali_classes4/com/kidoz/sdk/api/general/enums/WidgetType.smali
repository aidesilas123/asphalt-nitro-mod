###### Class com.kidoz.sdk.api.general.enums.WidgetType (com.kidoz.sdk.api.general.enums.WidgetType)
.class public final enum Lcom/kidoz/sdk/api/general/enums/WidgetType;
.super Ljava/lang/Enum;
.source "WidgetType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/general/enums/WidgetType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/general/enums/WidgetType;

.field public static final enum WIDGET_TYPE_BANNER:Lcom/kidoz/sdk/api/general/enums/WidgetType;

.field public static final enum WIDGET_TYPE_FEED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

.field public static final enum WIDGET_TYPE_FLEXI_VIEW:Lcom/kidoz/sdk/api/general/enums/WidgetType;

.field public static final enum WIDGET_TYPE_INTERSTITIAL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

.field public static final enum WIDGET_TYPE_INTERSTITIAL_REWARDED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

.field public static final enum WIDGET_TYPE_NONE:Lcom/kidoz/sdk/api/general/enums/WidgetType;

.field public static final enum WIDGET_TYPE_PANEL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

.field public static final enum WIDGET_TYPE_TOONS_TV:Lcom/kidoz/sdk/api/general/enums/WidgetType;

.field public static final enum WIDGET_TYPE_VIDEO_UNIT:Lcom/kidoz/sdk/api/general/enums/WidgetType;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/general/enums/WidgetType;
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kidoz/sdk/api/general/enums/WidgetType;

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_NONE:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_FEED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_PANEL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_BANNER:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_FLEXI_VIEW:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_VIDEO_UNIT:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL_REWARDED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_TOONS_TV:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const-string v1, "WIDGET_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_NONE:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    new-instance v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const-string v1, "WIDGET_TYPE_FEED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_FEED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    new-instance v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const-string v1, "WIDGET_TYPE_PANEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_PANEL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    new-instance v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const-string v1, "WIDGET_TYPE_BANNER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_BANNER:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    new-instance v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const-string v1, "WIDGET_TYPE_FLEXI_VIEW"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_FLEXI_VIEW:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    new-instance v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const-string v1, "WIDGET_TYPE_INTERSTITIAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    new-instance v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const-string v1, "WIDGET_TYPE_VIDEO_UNIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_VIDEO_UNIT:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    new-instance v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const-string v1, "WIDGET_TYPE_INTERSTITIAL_REWARDED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL_REWARDED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    new-instance v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;

    const-string v1, "WIDGET_TYPE_TOONS_TV"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/kidoz/sdk/api/general/enums/WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_TOONS_TV:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-static {}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->$values()[Lcom/kidoz/sdk/api/general/enums/WidgetType;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->$VALUES:[Lcom/kidoz/sdk/api/general/enums/WidgetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->value:I

    return-void
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/enums/WidgetType;
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_NONE:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    if-eqz p0, :cond_21

    :try_start_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    packed-switch p0, :pswitch_data_22

    :pswitch_b
    goto :goto_21

    :pswitch_c
    sget-object p0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_TOONS_TV:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    goto :goto_20

    :pswitch_f
    sget-object p0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL_REWARDED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    goto :goto_20

    :pswitch_12
    sget-object p0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_VIDEO_UNIT:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    goto :goto_20

    :pswitch_15
    sget-object p0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_FLEXI_VIEW:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    goto :goto_20

    :pswitch_18
    sget-object p0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_BANNER:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    goto :goto_20

    :pswitch_1b
    sget-object p0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_PANEL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    goto :goto_20

    :pswitch_1e
    sget-object p0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_FEED:Lcom/kidoz/sdk/api/general/enums/WidgetType;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_21

    :goto_20
    move-object v0, p0

    :catch_21
    :cond_21
    :goto_21
    return-object v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_b
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/enums/WidgetType;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/enums/WidgetType;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/general/enums/WidgetType;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->$VALUES:[Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/general/enums/WidgetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/general/enums/WidgetType;

    return-object v0
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->value:I

    return v0
.end method
