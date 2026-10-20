###### Class com.kidoz.sdk.omid.OMSessionAdapterSafeStateDecorator.SessionState (com.kidoz.sdk.omid.OMSessionAdapterSafeStateDecorator$SessionState)
.class final enum Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;
.super Ljava/lang/Enum;
.source "OMSessionAdapterSafeStateDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

.field public static final enum b:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

.field public static final enum c:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

.field private static final synthetic d:[Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    const-string v1, "notStarted"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->a:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    new-instance v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    const-string v1, "started"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->b:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    new-instance v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    const-string v1, "finished"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->c:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    invoke-static {}, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->e()[Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->d:[Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    sget-object v1, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->a:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->b:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->c:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->d:[Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    return-object v0
.end method
