###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.AnonymousClass1 (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$1)
.class Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;
.super Ljava/lang/Object;
.source "IntrstWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->sendErrorResponse(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

.field final synthetic val$error:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->val$error:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->val$error:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    const-string v1, "blocking waterfall LOAD_FAILED try = "

    if-eqz v0, :cond_65

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$6;->$SwitchMap$com$kidoz$sdk$api$ui_views$interstitial$IntrstWrapper$LastError:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    goto :goto_8b

    :cond_15
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->LOAD_FAILED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v2, Lcom/kidoz/sdk/api/general/KidozError;

    sget-object v3, Lcom/kidoz/sdk/api/general/KidozError$Type;->noOffer:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-direct {v2, v3}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blocking waterfall NO_OFFERS try = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$100(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;)V

    goto :goto_8b

    :cond_3e
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v2, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->LOAD_FAILED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v3, Lcom/kidoz/sdk/api/general/KidozError;

    sget-object v4, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailed:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-direct {v3, v4}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V

    invoke-static {v0, v2, v3}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$100(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;)V

    goto :goto_8b

    :cond_65
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v2, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->LOAD_FAILED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v3, Lcom/kidoz/sdk/api/general/KidozError;

    sget-object v4, Lcom/kidoz/sdk/api/general/KidozError$Type;->loadFailed:Lcom/kidoz/sdk/api/general/KidozError$Type;

    invoke-direct {v3, v4}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(Lcom/kidoz/sdk/api/general/KidozError$Type;)V

    invoke-static {v0, v2, v3}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$1;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$100(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;)V

    :goto_8b
    return-void
.end method
