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

###### Class com.kidoz.sdk.api.general.KidozError.Type (com.kidoz.sdk.api.general.KidozError$Type)
.class public final enum Lcom/kidoz/sdk/api/general/KidozError$Type;
.super Ljava/lang/Enum;
.source "KidozError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/KidozError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/general/KidozError$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/general/KidozError$Type;

.field public static final enum general:Lcom/kidoz/sdk/api/general/KidozError$Type;

.field public static final enum instanceAlreadyLoading:Lcom/kidoz/sdk/api/general/KidozError$Type;

.field public static final enum loadFailed:Lcom/kidoz/sdk/api/general/KidozError$Type;

.field public static final enum loadFailedBadResponse:Lcom/kidoz/sdk/api/general/KidozError$Type;

.field public static final enum loadFailedWebViewInit:Lcom/kidoz/sdk/api/general/KidozError$Type;

.field public static final enum network:Lcom/kidoz/sdk/api/general/KidozError$Type;

.field public static final enum noOffer:Lcom/kidoz/sdk/api/general/KidozError$Type;

.field public static final enum showFailed:Lcom/kidoz/sdk/api/general/KidozError$Type;


# instance fields
.field code:I

.field message:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/general/KidozError$Type;
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/kidoz/sdk/api/general/KidozError$Type;

    sget-object v1, Lcom/kidoz/sdk/api/general/KidozError$Type;->general:Lcom/kidoz/sdk/api/general/KidozError$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/KidozError$Type;->network:Lcom/kidoz/sdk/api/general/KidozError$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailed:Lcom/kidoz/sdk/api/general/KidozError$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailedBadResponse:Lcom/kidoz/sdk/api/general/KidozError$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailedWebViewInit:Lcom/kidoz/sdk/api/general/KidozError$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/KidozError$Type;->noOffer:Lcom/kidoz/sdk/api/general/KidozError$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/KidozError$Type;->showFailed:Lcom/kidoz/sdk/api/general/KidozError$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/KidozError$Type;->instanceAlreadyLoading:Lcom/kidoz/sdk/api/general/KidozError$Type;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/kidoz/sdk/api/general/KidozError$Type;

    const-string v1, "general"

    const/4 v2, 0x0

    const-string v3, "General error"

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/general/KidozError$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/KidozError$Type;->general:Lcom/kidoz/sdk/api/general/KidozError$Type;

    new-instance v0, Lcom/kidoz/sdk/api/general/KidozError$Type;

    const-string v1, "network"

    const/4 v2, 0x1

    const-string v3, "Network error"

    const/16 v4, 0x65

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/general/KidozError$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/KidozError$Type;->network:Lcom/kidoz/sdk/api/general/KidozError$Type;

    new-instance v0, Lcom/kidoz/sdk/api/general/KidozError$Type;

    const-string v1, "loadFailed"

    const/4 v2, 0x2

    const-string v3, "Load failed"

    const/16 v4, 0x28a0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/general/KidozError$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailed:Lcom/kidoz/sdk/api/general/KidozError$Type;

    new-instance v0, Lcom/kidoz/sdk/api/general/KidozError$Type;

    const-string v1, "loadFailedBadResponse"

    const/4 v2, 0x3

    const/16 v4, 0x28a3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/general/KidozError$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailedBadResponse:Lcom/kidoz/sdk/api/general/KidozError$Type;

    new-instance v0, Lcom/kidoz/sdk/api/general/KidozError$Type;

    const-string v1, "loadFailedWebViewInit"

    const/4 v2, 0x4

    const-string v3, "Failed to init WebView"

    const/16 v4, 0x28a5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/general/KidozError$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailedWebViewInit:Lcom/kidoz/sdk/api/general/KidozError$Type;

    new-instance v0, Lcom/kidoz/sdk/api/general/KidozError$Type;

    const-string v1, "noOffer"

    const/4 v2, 0x5

    const-string v3, "No fill"

    const/16 v4, 0x28a4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/general/KidozError$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/KidozError$Type;->noOffer:Lcom/kidoz/sdk/api/general/KidozError$Type;

    new-instance v0, Lcom/kidoz/sdk/api/general/KidozError$Type;

    const-string v1, "showFailed"

    const/4 v2, 0x6

    const-string v3, "Show failed"

    const/16 v4, 0x2904

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/general/KidozError$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/KidozError$Type;->showFailed:Lcom/kidoz/sdk/api/general/KidozError$Type;

    new-instance v0, Lcom/kidoz/sdk/api/general/KidozError$Type;

    const-string v1, "instanceAlreadyLoading"

    const/4 v2, 0x7

    const-string v3, "Instance already loading"

    const/16 v4, 0x28ae

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/general/KidozError$Type;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/KidozError$Type;->instanceAlreadyLoading:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-static {}, Lcom/kidoz/sdk/api/general/KidozError$Type;->$values()[Lcom/kidoz/sdk/api/general/KidozError$Type;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/general/KidozError$Type;->$VALUES:[Lcom/kidoz/sdk/api/general/KidozError$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kidoz/sdk/api/general/KidozError$Type;->message:Ljava/lang/String;

    iput p4, p0, Lcom/kidoz/sdk/api/general/KidozError$Type;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/KidozError$Type;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/KidozError$Type;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/general/KidozError$Type;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/KidozError$Type;->$VALUES:[Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/general/KidozError$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/general/KidozError$Type;

    return-object v0
.end method
