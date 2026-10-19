###### Class com.kidoz.sdk.omid.OMSessionAdapterSafeStateDecorator (com.kidoz.sdk.omid.OMSessionAdapterSafeStateDecorator)
.class public Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;
.super Ljava/lang/Object;
.source "OMSessionAdapterSafeStateDecorator.java"

# interfaces
.implements Lcom/kidoz/sdk/omid/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "OMSessionAdapterSafeStateDecorator"


# instance fields
.field private b:Lcom/kidoz/sdk/omid/c;

.field private c:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/kidoz/sdk/omid/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->a:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    iput-object v0, p0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->c:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    iput-object p1, p0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->b:Lcom/kidoz/sdk/omid/c;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->c:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    sget-object v1, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->b:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    if-ne v0, v1, :cond_1c

    sget-object v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->a:Ljava/lang/String;

    const-string v1, "OMSDK implementation: OMSessionAdapter.finish() invoked"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->b:Lcom/kidoz/sdk/omid/c;

    invoke-interface {v1}, Lcom/kidoz/sdk/omid/c;->finish()V

    const-string v1, "OMSDK implementation: OMSessionAdapter.finish() complete"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->c:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    iput-object v0, p0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->c:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    goto :goto_3d

    :cond_1c
    sget-object v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMSDK implementation: OMSessionAdapter.finish() is called, while session state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->c:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method public start()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->c:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    sget-object v1, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->a:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    if-ne v0, v1, :cond_1c

    sget-object v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->a:Ljava/lang/String;

    const-string v1, "OMSDK implementation: OMSessionAdapter.start() invoked"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->b:Lcom/kidoz/sdk/omid/c;

    invoke-interface {v1}, Lcom/kidoz/sdk/omid/c;->start()V

    const-string v1, "OMSDK implementation: OMSessionAdapter.start() complete"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;->b:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    iput-object v0, p0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->c:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    goto :goto_3d

    :cond_1c
    sget-object v0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMSDK implementation: OMSessionAdapter.start() is called, while session state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator;->c:Lcom/kidoz/sdk/omid/OMSessionAdapterSafeStateDecorator$SessionState;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

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
