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

###### Class com.kidoz.sdk.api.general.EventMessage.MessageType (com.kidoz.sdk.api.general.EventMessage$MessageType)
.class public final enum Lcom/kidoz/sdk/api/general/EventMessage$MessageType;
.super Ljava/lang/Enum;
.source "EventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/EventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/general/EventMessage$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum CLOSED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum CLOSE_FULL_SCREEN_AD:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum CLOSE_VIDEO_UNIT:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum HTML_FULL_VIEW_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum INIT_FEED_BUTTON:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum INIT_SDK:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum INIT_SDK_FAIL_NO_SERVER_RESULT:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum INIT_SDK_FAIL_STYLE_PARSER:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum INIT_SDK_FAIL_VALIDATION_EXCEPTION:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum INTERSTITIAL_AD_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum LOAD_FAILED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum MAXIMIZED_PLAYER_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum MAXIMIZED_PLAYER_OPEN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum NO_OFFERS:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum ON_AD_FAILED_TO_SHOW:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum ON_AD_IMPRESSION:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum ON_AD_SHOWN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum PARENTAL_DIALOG_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum PLAYER_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum PLAYER_OPEN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum READY:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum REWARDED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum REWARDED_VIDEO_STARTED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum VIDEO_UNIT_BUTTON_READY:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

.field public static final enum WEB_PLAYER_DIALOG_CLOSED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/general/EventMessage$MessageType;
    .registers 3

    const/16 v0, 0x19

    new-array v0, v0, [Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->VIDEO_UNIT_BUTTON_READY:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK_FAIL_NO_SERVER_RESULT:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK_FAIL_STYLE_PARSER:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK_FAIL_VALIDATION_EXCEPTION:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_FEED_BUTTON:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->PLAYER_OPEN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->MAXIMIZED_PLAYER_OPEN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->MAXIMIZED_PLAYER_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->PLAYER_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->HTML_FULL_VIEW_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INTERSTITIAL_AD_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->PARENTAL_DIALOG_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->WEB_PLAYER_DIALOG_CLOSED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->CLOSE_VIDEO_UNIT:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->CLOSE_FULL_SCREEN_AD:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_SHOWN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->CLOSED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->READY:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->LOAD_FAILED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->NO_OFFERS:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->REWARDED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->REWARDED_VIDEO_STARTED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_IMPRESSION:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_FAILED_TO_SHOW:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "VIDEO_UNIT_BUTTON_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->VIDEO_UNIT_BUTTON_READY:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "INIT_SDK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "INIT_SDK_FAIL_NO_SERVER_RESULT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK_FAIL_NO_SERVER_RESULT:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "INIT_SDK_FAIL_STYLE_PARSER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK_FAIL_STYLE_PARSER:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "INIT_SDK_FAIL_VALIDATION_EXCEPTION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK_FAIL_VALIDATION_EXCEPTION:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "INIT_FEED_BUTTON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_FEED_BUTTON:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "PLAYER_OPEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->PLAYER_OPEN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "MAXIMIZED_PLAYER_OPEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->MAXIMIZED_PLAYER_OPEN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "MAXIMIZED_PLAYER_CLOSE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->MAXIMIZED_PLAYER_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "PLAYER_CLOSE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->PLAYER_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "HTML_FULL_VIEW_CLOSE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->HTML_FULL_VIEW_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "INTERSTITIAL_AD_CLOSE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INTERSTITIAL_AD_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "PARENTAL_DIALOG_CLOSE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->PARENTAL_DIALOG_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "WEB_PLAYER_DIALOG_CLOSED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->WEB_PLAYER_DIALOG_CLOSED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "CLOSE_VIDEO_UNIT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->CLOSE_VIDEO_UNIT:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "CLOSE_FULL_SCREEN_AD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->CLOSE_FULL_SCREEN_AD:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "ON_AD_SHOWN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_SHOWN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "CLOSED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->CLOSED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "READY"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->READY:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "LOAD_FAILED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->LOAD_FAILED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "NO_OFFERS"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->NO_OFFERS:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "REWARDED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->REWARDED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "REWARDED_VIDEO_STARTED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->REWARDED_VIDEO_STARTED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "ON_AD_IMPRESSION"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_IMPRESSION:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    const-string v1, "ON_AD_FAILED_TO_SHOW"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_FAILED_TO_SHOW:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-static {}, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->$values()[Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->$VALUES:[Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/EventMessage$MessageType;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/general/EventMessage$MessageType;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->$VALUES:[Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    return-object v0
.end method
