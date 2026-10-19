###### Class com.fyber.inneractive.sdk.external.InneractiveVideoError (com.fyber.inneractive.sdk.external.InneractiveVideoError)
.class public Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;
.super Lcom/fyber/inneractive/sdk/external/InneractiveError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;
    }
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

.field public b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;)V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/external/InneractiveError;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;->a:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;->a:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->getErrorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;->b:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;->a:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->getErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getPlayerError()Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;->a:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    return-object v0
.end method

###### Class com.fyber.inneractive.sdk.external.InneractiveVideoError.Error (com.fyber.inneractive.sdk.external.InneractiveVideoError$Error)
.class public final enum Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/external/InneractiveVideoError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

.field public static final enum ERROR_BUFFER_TIMEOUT:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

.field public static final enum ERROR_FAILED_PLAYING_ALL_MEDIA_FILES:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

.field public static final enum ERROR_FAILED_PLAYING_MEDIA_FILE:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

.field public static final enum ERROR_NO_MEDIA_FILES:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

.field public static final enum ERROR_PRE_BUFFER_TIMEOUT:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;


# instance fields
.field private errorString:Ljava/lang/String;

.field private isFatal:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    const-string v1, "ERROR_NO_MEDIA_FILES"

    const/4 v2, 0x0

    const-string v3, "ErrorNoMediaFiles"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->ERROR_NO_MEDIA_FILES:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    new-instance v1, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    const-string v3, "ERROR_FAILED_PLAYING_MEDIA_FILE"

    const-string v5, "ErrorPlayingMediaFile"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->ERROR_FAILED_PLAYING_MEDIA_FILE:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    new-instance v3, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    const-string v5, "ERROR_FAILED_PLAYING_ALL_MEDIA_FILES"

    const/4 v6, 0x2

    const-string v7, "ErrorPlayingAllMediaFile"

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->ERROR_FAILED_PLAYING_ALL_MEDIA_FILES:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    new-instance v5, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    const-string v7, "ERROR_PRE_BUFFER_TIMEOUT"

    const/4 v8, 0x3

    const-string v9, "ErrorPreBufferTimeout"

    invoke-direct {v5, v7, v8, v9, v2}, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->ERROR_PRE_BUFFER_TIMEOUT:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    new-instance v7, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    const-string v9, "ERROR_BUFFER_TIMEOUT"

    const/4 v10, 0x4

    const-string v11, "ErrorBufferTimeout"

    invoke-direct {v7, v9, v10, v11, v2}, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v7, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->ERROR_BUFFER_TIMEOUT:Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->$VALUES:[Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->errorString:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->isFatal:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->$VALUES:[Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;

    return-object v0
.end method


# virtual methods
.method public getErrorString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->errorString:Ljava/lang/String;

    return-object v0
.end method

.method public isFatal()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveVideoError$Error;->isFatal:Z

    return v0
.end method
