###### Class com.kidoz.sdk.api.general.animations.FlipAnimation.ScaleUpDownEnum (com.kidoz.sdk.api.general.animations.FlipAnimation$ScaleUpDownEnum)
.class public final enum Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;
.super Ljava/lang/Enum;
.source "FlipAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/animations/FlipAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleUpDownEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

.field public static final enum SCALE_CYCLE:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

.field public static final enum SCALE_DOWN:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

.field public static final enum SCALE_NONE:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

.field public static final enum SCALE_UP:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    sget-object v1, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_UP:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_DOWN:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_CYCLE:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_NONE:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    const-string v1, "SCALE_UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_UP:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    new-instance v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    const-string v1, "SCALE_DOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_DOWN:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    new-instance v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    const-string v1, "SCALE_CYCLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_CYCLE:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    new-instance v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    const-string v1, "SCALE_NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_NONE:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    invoke-static {}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->$values()[Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->$VALUES:[Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->$VALUES:[Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    return-object v0
.end method


# virtual methods
.method public getScale(FF)F
    .registers 10

    sget-object v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$1;->$SwitchMap$com$kidoz$sdk$api$general$animations$FlipAnimation$ScaleUpDownEnum:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_36

    const/4 v3, 0x2

    if-eq v0, v3, :cond_33

    const/4 v3, 0x3

    if-eq v0, v3, :cond_14

    return v2

    :cond_14
    float-to-double v3, p2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz v1, :cond_2b

    sub-float/2addr v2, p1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p2, v1

    mul-float v2, v2, p2

    mul-float v2, v2, v0

    :goto_29
    add-float/2addr p1, v2

    return p1

    :cond_2b
    sub-float p1, v2, p1

    mul-float p2, p2, v0

    :goto_2f
    mul-float p1, p1, p2

    sub-float/2addr v2, p1

    return v2

    :cond_33
    sub-float p1, v2, p1

    goto :goto_2f

    :cond_36
    sub-float/2addr v2, p1

    mul-float v2, v2, p2

    goto :goto_29
.end method
