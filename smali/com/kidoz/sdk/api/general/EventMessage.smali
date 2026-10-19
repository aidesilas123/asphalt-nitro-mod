###### Class com.kidoz.sdk.api.general.EventMessage (com.kidoz.sdk.api.general.EventMessage)
.class public Lcom/kidoz/sdk/api/general/EventMessage;
.super Ljava/lang/Object;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/EventMessage$MessageType;
    }
.end annotation


# instance fields
.field private kidozError:Lcom/kidoz/sdk/api/general/KidozError;

.field private mFlag:Z

.field private mMessageType:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field private mParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/EventMessage;->mMessageType:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    return-void
.end method


# virtual methods
.method public getAdditionalParam()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/EventMessage;->mParam:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/kidoz/sdk/api/general/KidozError;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/EventMessage;->kidozError:Lcom/kidoz/sdk/api/general/KidozError;

    return-object v0
.end method

.method public getMessageType()Lcom/kidoz/sdk/api/general/EventMessage$MessageType;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/EventMessage;->mMessageType:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    return-object v0
.end method

.method public isFlag()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/general/EventMessage;->mFlag:Z

    return v0
.end method

.method public setAdditionalParam(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/EventMessage;->mParam:Ljava/lang/String;

    return-void
.end method

.method public setError(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/EventMessage;->kidozError:Lcom/kidoz/sdk/api/general/KidozError;

    return-void
.end method

.method public setFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/general/EventMessage;->mFlag:Z

    return-void
.end method
