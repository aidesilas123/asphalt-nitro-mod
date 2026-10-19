###### Class com.applovin.impl.sdk.array.ArrayService.DirectDownloadState (com.applovin.impl.sdk.array.ArrayService$DirectDownloadState)
.class Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/array/ArrayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectDownloadState"
.end annotation


# instance fields
.field private final adToken:Ljava/lang/String;

.field private final errorCallbackInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final listener:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;

.field private final parameters:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;)V
    .registers 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->errorCallbackInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->adToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->parameters:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->listener:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;

    return-void
.end method

.method static synthetic access$300(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->adToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->listener:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->parameters:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$600(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->errorCallbackInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getErrorCallbackInvoked()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getErrorCallbackInvoked()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    if-nez v1, :cond_20

    if-eqz v3, :cond_27

    goto :goto_26

    :cond_20
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    :goto_26
    return v2

    :cond_27
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getAdToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getAdToken()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_34

    if-eqz v3, :cond_3b

    goto :goto_3a

    :cond_34
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    :goto_3a
    return v2

    :cond_3b
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getParameters()Landroid/os/Bundle;

    move-result-object v3

    if-nez v1, :cond_48

    if-eqz v3, :cond_4f

    goto :goto_4e

    :cond_48
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    :goto_4e
    return v2

    :cond_4f
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getListener()Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getListener()Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;

    move-result-object p1

    if-nez v1, :cond_5c

    if-eqz p1, :cond_63

    goto :goto_62

    :cond_5c
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    :goto_62
    return v2

    :cond_63
    return v0
.end method

.method public getAdToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->adToken:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCallbackInvoked()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->errorCallbackInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public getListener()Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->listener:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;

    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getErrorCallbackInvoked()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_b

    const/16 v0, 0x2b

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_f
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getAdToken()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1d

    const/16 v3, 0x2b

    goto :goto_21

    :cond_1d
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_21
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getParameters()Landroid/os/Bundle;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2d

    const/16 v3, 0x2b

    goto :goto_31

    :cond_2d
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_31
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getListener()Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_3b

    goto :goto_3f

    :cond_3b
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3f
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArrayService.DirectDownloadState(errorCallbackInvoked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getErrorCallbackInvoked()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getAdToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->getListener()Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
