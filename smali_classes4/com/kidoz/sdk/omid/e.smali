###### Class com.kidoz.sdk.omid.e (com.kidoz.sdk.omid.e)
.class public Lcom/kidoz/sdk/omid/e;
.super Ljava/lang/Object;
.source "OMSessionAdapterNoopImpl.java"

# interfaces
.implements Lcom/kidoz/sdk/omid/c;


# static fields
.field public static final a:Ljava/lang/String; = "e"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/omid/e;->a:Ljava/lang/String;

    const-string v1, "OMSDK implementation: OMSessionAdapter.finish(), ignored. Session init failed."

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/omid/e;->a:Ljava/lang/String;

    const-string v1, "OMSDK implementation: OMSessionAdapter.start(), ignored. Session init failed."

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
