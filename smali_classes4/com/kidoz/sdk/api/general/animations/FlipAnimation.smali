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
