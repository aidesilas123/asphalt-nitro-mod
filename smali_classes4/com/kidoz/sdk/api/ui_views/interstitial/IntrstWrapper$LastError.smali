###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.LastError (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$LastError)
.class final enum Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;
.super Ljava/lang/Enum;
.source "IntrstWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LastError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

.field public static final enum LOAD_FAILED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

.field public static final enum NO_OFFERS:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->LOAD_FAILED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->NO_OFFERS:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    const-string v1, "LOAD_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->LOAD_FAILED:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    const-string v1, "NO_OFFERS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->NO_OFFERS:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-static {}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->$values()[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->$VALUES:[Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$LastError;

    return-object v0
.end method
