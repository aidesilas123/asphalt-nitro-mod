###### Class com.json.adqualitysdk.sdk.ISAdQualityAdType (com.ironsource.adqualitysdk.sdk.ISAdQualityAdType)
.class public final enum Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_WALL:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public static final enum BANNER:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public static final enum EXTERNAL:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public static final enum INTERACTIVE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public static final enum INTERSTITIAL:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public static final enum NATIVE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public static final enum NATIVE_HTML:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public static final enum OFFER_WALL:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public static final enum REWARDED:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public static final enum REWARDED_VIDEO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public static final enum RICH_MEDIA:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public static final enum UNKNOWN:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field public static final enum VIDEO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

.field private static final synthetic a:[Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->UNKNOWN:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const-string v3, "RICH_MEDIA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->RICH_MEDIA:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const-string v5, "INTERSTITIAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->INTERSTITIAL:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const-string v7, "APP_WALL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->APP_WALL:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    new-instance v7, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const-string v9, "VIDEO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->VIDEO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    new-instance v9, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const-string v11, "REWARDED_VIDEO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->REWARDED_VIDEO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    new-instance v11, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const-string v13, "NATIVE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->NATIVE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    new-instance v13, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const-string v15, "BANNER"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->BANNER:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    new-instance v15, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const-string v14, "OFFER_WALL"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->OFFER_WALL:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    new-instance v14, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const-string v12, "NATIVE_HTML"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->NATIVE_HTML:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    new-instance v12, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const-string v10, "EXTERNAL"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->EXTERNAL:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    new-instance v10, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const-string v8, "REWARDED"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->REWARDED:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    new-instance v8, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const-string v6, "INTERACTIVE"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->INTERACTIVE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    aput-object v10, v6, v4

    aput-object v8, v6, v2

    sput-object v6, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->a:[Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

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

    iput p3, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->b:I

    return-void
.end method

.method public static fromInt(I)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;
    .registers 1

    packed-switch p0, :pswitch_data_2c

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->INTERACTIVE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->REWARDED:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->EXTERNAL:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->NATIVE_HTML:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->OFFER_WALL:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->BANNER:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->NATIVE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->REWARDED_VIDEO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0

    :pswitch_1d
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->VIDEO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0

    :pswitch_20
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->APP_WALL:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0

    :pswitch_23
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->INTERSTITIAL:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0

    :pswitch_26
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->RICH_MEDIA:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0

    :pswitch_29
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->UNKNOWN:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0

    :pswitch_data_2c
    .packed-switch -0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;
    .registers 2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;
    .registers 1

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->a:[Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    invoke-virtual {v0}, [Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityAdType;->b:I

    return v0
.end method
