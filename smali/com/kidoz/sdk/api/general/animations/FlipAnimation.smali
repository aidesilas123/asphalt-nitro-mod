###### Class com.kidoz.sdk.api.general.animations.FlipAnimation (com.kidoz.sdk.api.general.animations.FlipAnimation)
.class public Lcom/kidoz/sdk/api/general/animations/FlipAnimation;
.super Landroid/view/animation/Animation;
.source "FlipAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;
    }
.end annotation


# static fields
.field public static final ROTATION_X:I = 0x0

.field public static final ROTATION_Y:I = 0x1

.field public static final SCALE_DEFAULT:F = 0.75f


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private mDirection:I

.field private final mFromDegrees:F

.field private final mToDegrees:F

.field private scale:F

.field private final scaleType:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;


# direct methods
.method public constructor <init>(FFFFFLcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;)V
    .registers 7

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->mFromDegrees:F

    iput p2, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->mToDegrees:F

    iput p3, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->mCenterX:F

    iput p4, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->mCenterY:F

    const/4 p1, 0x0

    cmpg-float p1, p5, p1

    if-lez p1, :cond_16

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p5, p1

    if-ltz p1, :cond_18

    :cond_16
    const/high16 p5, 0x3f400000    # 0.75f

    :cond_18
    iput p5, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->scale:F

    if-nez p6, :cond_1e

    sget-object p6, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_CYCLE:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    :cond_1e
    iput-object p6, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->scaleType:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    const/4 p1, 0x1

    iput p1, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->mDirection:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 8

    iget v0, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->mFromDegrees:F

    iget v1, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->mToDegrees:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->mCenterX:F

    iget v2, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->mCenterY:F

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    iget v4, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->mDirection:I

    if-nez v4, :cond_1d

    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_20

    :cond_1d
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    :goto_20
    invoke-virtual {v3, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->scaleType:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    iget v3, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->scale:F

    invoke-virtual {v0, v3, p1}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->getScale(FF)F

    move-result v0

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->scaleType:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    iget v4, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->scale:F

    invoke-virtual {v3, v4, p1}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->getScale(FF)F

    move-result p1

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    return-void
.end method

.method public initialize(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->mCamera:Landroid/graphics/Camera;

    return-void
.end method

.method public setDirection(I)V
    .registers 2

    iput p1, p0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation;->mDirection:I

    return-void
.end method

###### Class com.kidoz.sdk.api.general.animations.FlipAnimation.AnonymousClass1 (com.kidoz.sdk.api.general.animations.FlipAnimation$1)
.class synthetic Lcom/kidoz/sdk/api/general/animations/FlipAnimation$1;
.super Ljava/lang/Object;
.source "FlipAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/animations/FlipAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$general$animations$FlipAnimation$ScaleUpDownEnum:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->values()[Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$1;->$SwitchMap$com$kidoz$sdk$api$general$animations$FlipAnimation$ScaleUpDownEnum:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_UP:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$1;->$SwitchMap$com$kidoz$sdk$api$general$animations$FlipAnimation$ScaleUpDownEnum:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_DOWN:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$1;->$SwitchMap$com$kidoz$sdk$api$general$animations$FlipAnimation$ScaleUpDownEnum:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;->SCALE_CYCLE:Lcom/kidoz/sdk/api/general/animations/FlipAnimation$ScaleUpDownEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

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
