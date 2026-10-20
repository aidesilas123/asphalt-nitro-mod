###### Class com.kidoz.sdk.api.general.animations.AnimationFactory.FlipDirection (com.kidoz.sdk.api.general.animations.AnimationFactory$FlipDirection)
.class public final enum Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;
.super Ljava/lang/Enum;
.source "AnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/animations/AnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlipDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

.field public static final enum BOTTOM_TOP:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

.field public static final enum LEFT_RIGHT:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

.field public static final enum RIGHT_LEFT:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

.field public static final enum TOP_BOTTOM:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    sget-object v1, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->LEFT_RIGHT:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->RIGHT_LEFT:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->TOP_BOTTOM:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->BOTTOM_TOP:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    const-string v1, "LEFT_RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->LEFT_RIGHT:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    new-instance v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    const-string v1, "RIGHT_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->RIGHT_LEFT:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    new-instance v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    const-string v1, "TOP_BOTTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->TOP_BOTTOM:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    new-instance v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    const-string v1, "BOTTOM_TOP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->BOTTOM_TOP:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    invoke-static {}, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->$values()[Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->$VALUES:[Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->$VALUES:[Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    return-object v0
.end method


# virtual methods
.method public getEndDegreeForFirstView()F
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$4;->$SwitchMap$com$kidoz$sdk$api$general$animations$AnimationFactory$FlipDirection:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    const/4 v0, 0x0

    return v0

    :cond_16
    const/high16 v0, -0x3d4c0000    # -90.0f

    return v0

    :cond_19
    const/high16 v0, 0x42b40000    # 90.0f

    return v0
.end method

.method public getEndDegreeForSecondView()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getStartDegreeForFirstView()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getStartDegreeForSecondView()F
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$4;->$SwitchMap$com$kidoz$sdk$api$general$animations$AnimationFactory$FlipDirection:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    const/4 v0, 0x0

    return v0

    :cond_16
    const/high16 v0, 0x42b40000    # 90.0f

    return v0

    :cond_19
    const/high16 v0, -0x3d4c0000    # -90.0f

    return v0
.end method

.method public theOtherDirection()Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$4;->$SwitchMap$com$kidoz$sdk$api$general$animations$AnimationFactory$FlipDirection:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    const/4 v0, 0x0

    return-object v0

    :cond_16
    sget-object v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->TOP_BOTTOM:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    return-object v0

    :cond_19
    sget-object v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->LEFT_RIGHT:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    return-object v0

    :cond_1c
    sget-object v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->BOTTOM_TOP:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    return-object v0

    :cond_1f
    sget-object v0, Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;->RIGHT_LEFT:Lcom/kidoz/sdk/api/general/animations/AnimationFactory$FlipDirection;

    return-object v0
.end method
