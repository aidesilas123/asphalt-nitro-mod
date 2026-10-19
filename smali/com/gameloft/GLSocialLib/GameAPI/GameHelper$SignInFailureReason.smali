###### Class com.gameloft.GLSocialLib.GameAPI.GameHelper.SignInFailureReason (com.gameloft.GLSocialLib.GameAPI.GameHelper$SignInFailureReason)
.class public Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;
.super Ljava/lang/Object;
.source "GameHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignInFailureReason"
.end annotation


# static fields
.field public static final NO_ACTIVITY_RESULT_CODE:I = -0x64


# instance fields
.field mActivityResultCode:I

.field mServiceErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/16 v0, -0x64

    invoke-direct {p0, p1, v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mServiceErrorCode:I

    const/16 v0, -0x64

    iput v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mActivityResultCode:I

    iput p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mServiceErrorCode:I

    iput p2, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mActivityResultCode:I

    return-void
.end method


# virtual methods
.method public getActivityResultCode()I
    .registers 2

    iget v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mActivityResultCode:I

    return v0
.end method

.method public getServiceErrorCode()I
    .registers 2

    iget v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mServiceErrorCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignInFailureReason(serviceErrorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mServiceErrorCode:I

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mActivityResultCode:I

    const-string v2, ")"

    const/16 v3, -0x64

    if-ne v1, v3, :cond_1c

    goto :goto_36

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",activityResultCode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mActivityResultCode:I

    invoke-static {v3}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
