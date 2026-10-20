###### Class com.kidoz.sdk.api.general.KidozError (com.kidoz.sdk.api.general.KidozError)
.class public Lcom/kidoz/sdk/api/general/KidozError;
.super Ljava/lang/Throwable;
.source "KidozError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/KidozError$Type;
    }
.end annotation


# static fields
.field public static final GENERAL_ERROR:I = 0x64

.field public static final INSTANCE_ALREADY_LOADING:I = 0x28ae

.field public static final LOAD_ERROR:I = 0x28a0

.field public static final LOAD_FAILED_BAD_RESPONSE:I = 0x28a3

.field public static final LOAD_FAILED_WEB_VIEW_INIT:I = 0x28a5

.field public static final NETWORK_ERROR:I = 0x65

.field public static final NO_FILL:I = 0x28a4

.field public static final SHOW_ERROR:I = 0x2904


# instance fields
.field private mErrorCode:I

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput p1, p0, Lcom/kidoz/sdk/api/general/KidozError;->mErrorCode:I

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/KidozError;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iget-object v0, p1, Lcom/kidoz/sdk/api/general/KidozError$Type;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/KidozError;->mMessage:Ljava/lang/String;

    iget p1, p1, Lcom/kidoz/sdk/api/general/KidozError$Type;->code:I

    iput p1, p0, Lcom/kidoz/sdk/api/general/KidozError;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/general/KidozError;->mErrorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/KidozError;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/kidoz/sdk/api/general/KidozError;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",message::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/KidozError;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
