###### Class com.json.adqualitysdk.sdk.ISAdQualityMediationNetwork (com.ironsource.adqualitysdk.sdk.ISAdQualityMediationNetwork)
.class public final enum Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADMOB:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

.field public static final enum DT_FAIR_BID:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

.field public static final enum HELIUM:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

.field public static final enum LEVEL_PLAY:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

.field public static final enum MAX:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

.field public static final enum OTHER:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

.field public static final enum SELF_MEDIATED:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

.field public static final enum UNITY:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

.field public static final enum UNKNOWN:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

.field private static final synthetic a:[Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->UNKNOWN:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    const-string v3, "ADMOB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->ADMOB:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    const-string v5, "DT_FAIR_BID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->DT_FAIR_BID:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    const-string v7, "HELIUM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->HELIUM:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    new-instance v7, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    const-string v9, "LEVEL_PLAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->LEVEL_PLAY:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    new-instance v9, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    const-string v11, "MAX"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->MAX:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    new-instance v11, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    const-string v13, "UNITY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->UNITY:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    new-instance v13, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    const-string v15, "SELF_MEDIATED"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->SELF_MEDIATED:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    new-instance v15, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    const-string v14, "OTHER"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->OTHER:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    const/4 v0, 0x4

    aput-object v7, v14, v0

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    aput-object v13, v14, v12

    aput-object v15, v14, v10

    sput-object v14, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->a:[Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

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

    iput p3, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->b:I

    return-void
.end method

.method public static fromInt(I)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;
    .registers 1

    packed-switch p0, :pswitch_data_20

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->OTHER:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->SELF_MEDIATED:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->UNITY:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->MAX:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->LEVEL_PLAY:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->HELIUM:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->DT_FAIR_BID:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->ADMOB:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    return-object p0

    :pswitch_1d
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->UNKNOWN:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    return-object p0

    :pswitch_data_20
    .packed-switch -0x1
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

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;
    .registers 2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;
    .registers 1

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->a:[Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    invoke-virtual {v0}, [Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityMediationNetwork;->b:I

    return v0
.end method
