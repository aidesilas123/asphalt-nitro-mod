###### Class com.fyber.inneractive.sdk.bidder.adm.AdmParametersOuterClass$AdmParameters (com.fyber.inneractive.sdk.bidder.adm.AdmParametersOuterClass$AdmParameters)
.class public final Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
.super Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/protobuf/p0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$c;,
        Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;,
        Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$e;,
        Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;,
        Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;,
        Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;,
        Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$f;,
        Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$a;,
        Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$d;,
        Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$g;,
        Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite<",
        "Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;",
        "Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final ABEXPERIMENTS_FIELD_NUMBER:I = 0x21

.field public static final ADCOMPLETIONURL_FIELD_NUMBER:I = 0x18

.field public static final ADDOMAIN_FIELD_NUMBER:I = 0x1d

.field public static final ADDURATION_FIELD_NUMBER:I = 0x19

.field public static final ADEXPIRATIONINTERVAL_FIELD_NUMBER:I = 0xd

.field public static final ADHEIGHT_FIELD_NUMBER:I = 0x5

.field public static final ADNETWORKID_FIELD_NUMBER:I = 0xc

.field public static final ADNETWORKNAME_FIELD_NUMBER:I = 0xb

.field public static final ADTYPE_FIELD_NUMBER:I = 0xe

.field public static final ADUNITDISPLAYTYPE_FIELD_NUMBER:I = 0x8

.field public static final ADUNITID_FIELD_NUMBER:I = 0x6

.field public static final ADUNITTYPE_FIELD_NUMBER:I = 0x7

.field public static final ADVERTISEDAPPID_FIELD_NUMBER:I = 0x12

.field public static final ADWIDTH_FIELD_NUMBER:I = 0x4

.field public static final APPBUNDLEID_FIELD_NUMBER:I = 0x17

.field public static final BRANDBIDDERCTATEXT_FIELD_NUMBER:I = 0x28

.field public static final BRANDBIDDERDONTSHOWENDCARD_FIELD_NUMBER:I = 0x27

.field public static final CAMPAIGNID_FIELD_NUMBER:I = 0x1f

.field public static final CONTENTID_FIELD_NUMBER:I = 0x9

.field public static final CREATIVEID_FIELD_NUMBER:I = 0x1e

.field public static final CREATIVETYPE_FIELD_NUMBER:I = 0x1a

.field private static final DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

.field public static final ERRORMESSAGE_FIELD_NUMBER:I = 0x3

.field public static final IGNITEINSTALLURL_FIELD_NUMBER:I = 0x24

.field public static final IGNITELAUNCHERACTIVITY_FIELD_NUMBER:I = 0x25

.field public static final IGNITEMODE_FIELD_NUMBER:I = 0x23

.field public static final MARKUPURL_FIELD_NUMBER:I = 0x1

.field public static final MRAIDVIDEOOMSIGNAL_FIELD_NUMBER:I = 0x29

.field public static final MRCDATA_FIELD_NUMBER:I = 0x20

.field private static volatile PARSER:Lcom/fyber/inneractive/sdk/protobuf/w0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/protobuf/w0<",
            "Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRICINGVALUE_FIELD_NUMBER:I = 0x1c

.field public static final PUBLISHERID_FIELD_NUMBER:I = 0xa

.field public static final SDKCLICKURL_FIELD_NUMBER:I = 0x10

.field public static final SDKIMPRESSIONURL_FIELD_NUMBER:I = 0xf

.field public static final SESSIONID_FIELD_NUMBER:I = 0x2

.field public static final SKADNETWORKDATA_FIELD_NUMBER:I = 0x1b

.field public static final SKIPMODE_FIELD_NUMBER:I = 0x16

.field public static final SKOVERLAYDATA_FIELD_NUMBER:I = 0x26

.field public static final SPOTID_FIELD_NUMBER:I = 0x22

.field public static final STORECTATEXT_FIELD_NUMBER:I = 0x15

.field public static final STOREEVENTURL_FIELD_NUMBER:I = 0x14

.field public static final STOREURLTYPE_FIELD_NUMBER:I = 0x13

.field public static final STOREURL_FIELD_NUMBER:I = 0x11


# instance fields
.field private abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/protobuf/y$j<",
            "Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;",
            ">;"
        }
    .end annotation
.end field

.field private adCompletionUrl_:Ljava/lang/String;

.field private adDomain_:Ljava/lang/String;

.field private adDuration_:I

.field private adExpirationInterval_:I

.field private adHeight_:I

.field private adNetworkId_:J

.field private adNetworkName_:Ljava/lang/String;

.field private adType_:I

.field private adUnitDisplayType_:I

.field private adUnitId_:Ljava/lang/String;

.field private adUnitType_:I

.field private adWidth_:I

.field private advertisedAppId_:Ljava/lang/String;

.field private appBundleId_:Ljava/lang/String;

.field private bitField0_:I

.field private bitField1_:I

.field private brandBidderCtaText_:Ljava/lang/String;

.field private brandBidderDontShowEndcard_:Z

.field private campaignId_:Ljava/lang/String;

.field private contentId_:J

.field private creativeId_:Ljava/lang/String;

.field private creativeType_:Ljava/lang/String;

.field private errorMessage_:Ljava/lang/String;

.field private igniteInstallUrl_:Ljava/lang/String;

.field private igniteLauncherActivity_:Ljava/lang/String;

.field private igniteMode_:I

.field private markupUrl_:Ljava/lang/String;

.field private mraidVideoOMSignal_:Z

.field private mrcData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;

.field private pricingValue_:D

.field private publisherId_:J

.field private sdkClickUrl_:Ljava/lang/String;

.field private sdkImpressionUrl_:Ljava/lang/String;

.field private sessionId_:Ljava/lang/String;

.field private skAdNetworkData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;

.field private skOverlayData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;

.field private skipMode_:Z

.field private spotId_:J

.field private storeCTAText_:Ljava/lang/String;

.field private storeEventUrl_:Ljava/lang/String;

.field private storeUrlType_:I

.field private storeUrl_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    const-class v1, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->markupUrl_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sessionId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->errorMessage_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adNetworkName_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sdkImpressionUrl_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sdkClickUrl_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeUrl_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->advertisedAppId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeEventUrl_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeCTAText_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->appBundleId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adCompletionUrl_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->creativeType_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adDomain_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->creativeId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->campaignId_:Ljava/lang/String;

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/fyber/inneractive/sdk/protobuf/y$j;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteInstallUrl_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteLauncherActivity_:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->brandBidderCtaText_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$10000(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setSdkImpressionUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$10100(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearSdkImpressionUrl()V

    return-void
.end method

.method public static synthetic access$10200(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setSdkImpressionUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$10300(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setSdkClickUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$10400(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearSdkClickUrl()V

    return-void
.end method

.method public static synthetic access$10500(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setSdkClickUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$10600(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setStoreUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$10700(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearStoreUrl()V

    return-void
.end method

.method public static synthetic access$10800(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setStoreUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$10900(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdvertisedAppId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$11000(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAdvertisedAppId()V

    return-void
.end method

.method public static synthetic access$11100(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdvertisedAppIdBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$11200(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setStoreUrlTypeValue(I)V

    return-void
.end method

.method public static synthetic access$11300(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$d;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setStoreUrlType(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$d;)V

    return-void
.end method

.method public static synthetic access$11400(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearStoreUrlType()V

    return-void
.end method

.method public static synthetic access$11500(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setStoreEventUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$11600(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearStoreEventUrl()V

    return-void
.end method

.method public static synthetic access$11700(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setStoreEventUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$11800(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setStoreCTAText(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$11900(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearStoreCTAText()V

    return-void
.end method

.method public static synthetic access$12000(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setStoreCTATextBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$12100(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setSkipMode(Z)V

    return-void
.end method

.method public static synthetic access$12200(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearSkipMode()V

    return-void
.end method

.method public static synthetic access$12300(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAppBundleId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$12400(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAppBundleId()V

    return-void
.end method

.method public static synthetic access$12500(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAppBundleIdBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$12600(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdCompletionUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$12700(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAdCompletionUrl()V

    return-void
.end method

.method public static synthetic access$12800(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdCompletionUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$12900(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdDuration(I)V

    return-void
.end method

.method public static synthetic access$13000(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAdDuration()V

    return-void
.end method

.method public static synthetic access$13100(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setCreativeType(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$13200(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearCreativeType()V

    return-void
.end method

.method public static synthetic access$13300(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setCreativeTypeBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$13400(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setSkAdNetworkData(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;)V

    return-void
.end method

.method public static synthetic access$13500(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->mergeSkAdNetworkData(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;)V

    return-void
.end method

.method public static synthetic access$13600(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearSkAdNetworkData()V

    return-void
.end method

.method public static synthetic access$13700(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;D)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setPricingValue(D)V

    return-void
.end method

.method public static synthetic access$13800(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearPricingValue()V

    return-void
.end method

.method public static synthetic access$13900(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdDomain(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$14000(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAdDomain()V

    return-void
.end method

.method public static synthetic access$14100(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdDomainBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$14200(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setCreativeId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$14300(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearCreativeId()V

    return-void
.end method

.method public static synthetic access$14400(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setCreativeIdBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$14500(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setCampaignId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$14600(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearCampaignId()V

    return-void
.end method

.method public static synthetic access$14700(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setCampaignIdBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$14800(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setMrcData(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;)V

    return-void
.end method

.method public static synthetic access$14900(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->mergeMrcData(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;)V

    return-void
.end method

.method public static synthetic access$15000(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearMrcData()V

    return-void
.end method

.method public static synthetic access$15100(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;ILcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAbExperiments(ILcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;)V

    return-void
.end method

.method public static synthetic access$15200(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->addAbExperiments(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;)V

    return-void
.end method

.method public static synthetic access$15300(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;ILcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->addAbExperiments(ILcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;)V

    return-void
.end method

.method public static synthetic access$15400(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->addAllAbExperiments(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$15500(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAbExperiments()V

    return-void
.end method

.method public static synthetic access$15600(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->removeAbExperiments(I)V

    return-void
.end method

.method public static synthetic access$15700(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setSpotId(J)V

    return-void
.end method

.method public static synthetic access$15800(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearSpotId()V

    return-void
.end method

.method public static synthetic access$15900(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setIgniteModeValue(I)V

    return-void
.end method

.method public static synthetic access$16000(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setIgniteMode(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$f;)V

    return-void
.end method

.method public static synthetic access$16100(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearIgniteMode()V

    return-void
.end method

.method public static synthetic access$16200(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setIgniteInstallUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$16300(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearIgniteInstallUrl()V

    return-void
.end method

.method public static synthetic access$16400(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setIgniteInstallUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$16500(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setIgniteLauncherActivity(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$16600(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearIgniteLauncherActivity()V

    return-void
.end method

.method public static synthetic access$16700(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setIgniteLauncherActivityBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$16800(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setSkOverlayData(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;)V

    return-void
.end method

.method public static synthetic access$16900(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->mergeSkOverlayData(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;)V

    return-void
.end method

.method public static synthetic access$17000(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearSkOverlayData()V

    return-void
.end method

.method public static synthetic access$17100(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setBrandBidderDontShowEndcard(Z)V

    return-void
.end method

.method public static synthetic access$17200(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearBrandBidderDontShowEndcard()V

    return-void
.end method

.method public static synthetic access$17300(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setBrandBidderCtaText(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$17400(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearBrandBidderCtaText()V

    return-void
.end method

.method public static synthetic access$17500(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setBrandBidderCtaTextBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$17600(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setMraidVideoOMSignal(Z)V

    return-void
.end method

.method public static synthetic access$17700(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearMraidVideoOMSignal()V

    return-void
.end method

.method public static synthetic access$6300()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object v0
.end method

.method public static synthetic access$6400(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setMarkupUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$6500(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearMarkupUrl()V

    return-void
.end method

.method public static synthetic access$6600(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setMarkupUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$6700(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setSessionId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$6800(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearSessionId()V

    return-void
.end method

.method public static synthetic access$6900(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setSessionIdBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$7000(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$7100(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearErrorMessage()V

    return-void
.end method

.method public static synthetic access$7200(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setErrorMessageBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$7300(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdWidth(I)V

    return-void
.end method

.method public static synthetic access$7400(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAdWidth()V

    return-void
.end method

.method public static synthetic access$7500(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdHeight(I)V

    return-void
.end method

.method public static synthetic access$7600(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAdHeight()V

    return-void
.end method

.method public static synthetic access$7700(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$7800(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAdUnitId()V

    return-void
.end method

.method public static synthetic access$7900(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdUnitIdBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$8000(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdUnitTypeValue(I)V

    return-void
.end method

.method public static synthetic access$8100(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdUnitType(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$b;)V

    return-void
.end method

.method public static synthetic access$8200(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAdUnitType()V

    return-void
.end method

.method public static synthetic access$8300(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdUnitDisplayTypeValue(I)V

    return-void
.end method

.method public static synthetic access$8400(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$g;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdUnitDisplayType(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$g;)V

    return-void
.end method

.method public static synthetic access$8500(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAdUnitDisplayType()V

    return-void
.end method

.method public static synthetic access$8600(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setContentId(J)V

    return-void
.end method

.method public static synthetic access$8700(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearContentId()V

    return-void
.end method

.method public static synthetic access$8800(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setPublisherId(J)V

    return-void
.end method

.method public static synthetic access$8900(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearPublisherId()V

    return-void
.end method

.method public static synthetic access$9000(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdNetworkName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$9100(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAdNetworkName()V

    return-void
.end method

.method public static synthetic access$9200(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdNetworkNameBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    return-void
.end method

.method public static synthetic access$9300(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdNetworkId(J)V

    return-void
.end method

.method public static synthetic access$9400(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAdNetworkId()V

    return-void
.end method

.method public static synthetic access$9500(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdExpirationInterval(I)V

    return-void
.end method

.method public static synthetic access$9600(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAdExpirationInterval()V

    return-void
.end method

.method public static synthetic access$9700(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdTypeValue(I)V

    return-void
.end method

.method public static synthetic access$9800(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->setAdType(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$a;)V

    return-void
.end method

.method public static synthetic access$9900(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)V
    .registers 1

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->clearAdType()V

    return-void
.end method

.method private addAbExperiments(ILcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->ensureAbExperimentsIsMutable()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAbExperiments(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->ensureAbExperimentsIsMutable()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllAbExperiments(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->ensureAbExperimentsIsMutable()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private clearAbExperiments()V
    .registers 2

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/fyber/inneractive/sdk/protobuf/y$j;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    return-void
.end method

.method private clearAdCompletionUrl()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getAdCompletionUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adCompletionUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearAdDomain()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getAdDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adDomain_:Ljava/lang/String;

    return-void
.end method

.method private clearAdDuration()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adDuration_:I

    return-void
.end method

.method private clearAdExpirationInterval()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adExpirationInterval_:I

    return-void
.end method

.method private clearAdHeight()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adHeight_:I

    return-void
.end method

.method private clearAdNetworkId()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adNetworkId_:J

    return-void
.end method

.method private clearAdNetworkName()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getAdNetworkName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adNetworkName_:Ljava/lang/String;

    return-void
.end method

.method private clearAdType()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adType_:I

    return-void
.end method

.method private clearAdUnitDisplayType()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitDisplayType_:I

    return-void
.end method

.method private clearAdUnitId()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitId_:Ljava/lang/String;

    return-void
.end method

.method private clearAdUnitType()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitType_:I

    return-void
.end method

.method private clearAdWidth()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adWidth_:I

    return-void
.end method

.method private clearAdvertisedAppId()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getAdvertisedAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->advertisedAppId_:Ljava/lang/String;

    return-void
.end method

.method private clearAppBundleId()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getAppBundleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->appBundleId_:Ljava/lang/String;

    return-void
.end method

.method private clearBrandBidderCtaText()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getBrandBidderCtaText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->brandBidderCtaText_:Ljava/lang/String;

    return-void
.end method

.method private clearBrandBidderDontShowEndcard()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->brandBidderDontShowEndcard_:Z

    return-void
.end method

.method private clearCampaignId()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->campaignId_:Ljava/lang/String;

    return-void
.end method

.method private clearContentId()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->contentId_:J

    return-void
.end method

.method private clearCreativeId()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getCreativeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->creativeId_:Ljava/lang/String;

    return-void
.end method

.method private clearCreativeType()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getCreativeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->creativeType_:Ljava/lang/String;

    return-void
.end method

.method private clearErrorMessage()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method private clearIgniteInstallUrl()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getIgniteInstallUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteInstallUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearIgniteLauncherActivity()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getIgniteLauncherActivity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteLauncherActivity_:Ljava/lang/String;

    return-void
.end method

.method private clearIgniteMode()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteMode_:I

    return-void
.end method

.method private clearMarkupUrl()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getMarkupUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->markupUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearMraidVideoOMSignal()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->mraidVideoOMSignal_:Z

    return-void
.end method

.method private clearMrcData()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->mrcData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private clearPricingValue()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->pricingValue_:D

    return-void
.end method

.method private clearPublisherId()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->publisherId_:J

    return-void
.end method

.method private clearSdkClickUrl()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getSdkClickUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sdkClickUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearSdkImpressionUrl()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getSdkImpressionUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sdkImpressionUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearSessionId()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sessionId_:Ljava/lang/String;

    return-void
.end method

.method private clearSkAdNetworkData()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skAdNetworkData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private clearSkOverlayData()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skOverlayData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    return-void
.end method

.method private clearSkipMode()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skipMode_:Z

    return-void
.end method

.method private clearSpotId()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->spotId_:J

    return-void
.end method

.method private clearStoreCTAText()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getStoreCTAText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeCTAText_:Ljava/lang/String;

    return-void
.end method

.method private clearStoreEventUrl()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getStoreEventUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeEventUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearStoreUrl()V
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearStoreUrlType()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeUrlType_:I

    return-void
.end method

.method private ensureAbExperimentsIsMutable()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/protobuf/y$j;->d()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/fyber/inneractive/sdk/protobuf/y$j;)Lcom/fyber/inneractive/sdk/protobuf/y$j;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object v0
.end method

.method private mergeMrcData(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->mrcData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;

    move-result-object v1

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->mrcData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;->newBuilder(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->c()V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->b:Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->a(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;)V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->b()Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->mrcData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;

    goto :goto_26

    :cond_24
    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->mrcData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;

    :goto_26
    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private mergeSkAdNetworkData(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skAdNetworkData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;

    move-result-object v1

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skAdNetworkData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;->newBuilder(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->c()V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->b:Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->a(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;)V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->b()Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skAdNetworkData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;

    goto :goto_26

    :cond_24
    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skAdNetworkData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;

    :goto_26
    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private mergeSkOverlayData(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skOverlayData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;

    move-result-object v1

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skOverlayData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;->newBuilder(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->c()V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->b:Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->a(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;)V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;->b()Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skOverlayData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;

    goto :goto_26

    :cond_24
    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skOverlayData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;

    :goto_26
    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    return-void
.end method

.method public static newBuilder()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$c;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->createBuilder()Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$c;

    return-object v0
.end method

.method public static newBuilder(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$c;
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-virtual {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->createBuilder(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$c;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-static {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-static {v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/fyber/inneractive/sdk/protobuf/i;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-static {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Lcom/fyber/inneractive/sdk/protobuf/i;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/fyber/inneractive/sdk/protobuf/i;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-static {v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Lcom/fyber/inneractive/sdk/protobuf/i;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/fyber/inneractive/sdk/protobuf/j;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-static {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Lcom/fyber/inneractive/sdk/protobuf/j;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/fyber/inneractive/sdk/protobuf/j;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-static {v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Lcom/fyber/inneractive/sdk/protobuf/j;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-static {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-static {v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-static {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-static {v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-static {v0, p0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;[B)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object p0
.end method

.method public static parseFrom([BLcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/protobuf/z;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-static {v0, p0, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;[BLcom/fyber/inneractive/sdk/protobuf/q;)Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object p0
.end method

.method public static parser()Lcom/fyber/inneractive/sdk/protobuf/w0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/inneractive/sdk/protobuf/w0<",
            "Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->getParserForType()Lcom/fyber/inneractive/sdk/protobuf/w0;

    move-result-object v0

    return-object v0
.end method

.method private removeAbExperiments(I)V
    .registers 3

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->ensureAbExperimentsIsMutable()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAbExperiments(ILcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->ensureAbExperimentsIsMutable()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAdCompletionUrl(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adCompletionUrl_:Ljava/lang/String;

    return-void
.end method

.method private setAdCompletionUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 3

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adCompletionUrl_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setAdDomain(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adDomain_:Ljava/lang/String;

    return-void
.end method

.method private setAdDomainBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 3

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adDomain_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, 0x2000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setAdDuration(I)V
    .registers 4

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adDuration_:I

    return-void
.end method

.method private setAdExpirationInterval(I)V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adExpirationInterval_:I

    return-void
.end method

.method private setAdHeight(I)V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adHeight_:I

    return-void
.end method

.method private setAdNetworkId(J)V
    .registers 4

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adNetworkId_:J

    return-void
.end method

.method private setAdNetworkName(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adNetworkName_:Ljava/lang/String;

    return-void
.end method

.method private setAdNetworkNameBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adNetworkName_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setAdType(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$a;)V
    .registers 2

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$a;->a()I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adType_:I

    return-void
.end method

.method private setAdTypeValue(I)V
    .registers 2

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adType_:I

    return-void
.end method

.method private setAdUnitDisplayType(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$g;)V
    .registers 2

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$g;->a()I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitDisplayType_:I

    return-void
.end method

.method private setAdUnitDisplayTypeValue(I)V
    .registers 2

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitDisplayType_:I

    return-void
.end method

.method private setAdUnitId(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitId_:Ljava/lang/String;

    return-void
.end method

.method private setAdUnitIdBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitId_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setAdUnitType(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$b;)V
    .registers 2

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$b;->a()I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitType_:I

    return-void
.end method

.method private setAdUnitTypeValue(I)V
    .registers 2

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitType_:I

    return-void
.end method

.method private setAdWidth(I)V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adWidth_:I

    return-void
.end method

.method private setAdvertisedAppId(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->advertisedAppId_:Ljava/lang/String;

    return-void
.end method

.method private setAdvertisedAppIdBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->advertisedAppId_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setAppBundleId(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->appBundleId_:Ljava/lang/String;

    return-void
.end method

.method private setAppBundleIdBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 3

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->appBundleId_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setBrandBidderCtaText(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->brandBidderCtaText_:Ljava/lang/String;

    return-void
.end method

.method private setBrandBidderCtaTextBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->brandBidderCtaText_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    return-void
.end method

.method private setBrandBidderDontShowEndcard(Z)V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->brandBidderDontShowEndcard_:Z

    return-void
.end method

.method private setCampaignId(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->campaignId_:Ljava/lang/String;

    return-void
.end method

.method private setCampaignIdBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 3

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->campaignId_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, 0x8000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setContentId(J)V
    .registers 4

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->contentId_:J

    return-void
.end method

.method private setCreativeId(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->creativeId_:Ljava/lang/String;

    return-void
.end method

.method private setCreativeIdBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 3

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->creativeId_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, 0x4000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setCreativeType(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->creativeType_:Ljava/lang/String;

    return-void
.end method

.method private setCreativeTypeBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 3

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->creativeType_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, 0x400000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setErrorMessage(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method private setErrorMessageBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->errorMessage_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setIgniteInstallUrl(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteInstallUrl_:Ljava/lang/String;

    return-void
.end method

.method private setIgniteInstallUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 3

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteInstallUrl_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setIgniteLauncherActivity(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteLauncherActivity_:Ljava/lang/String;

    return-void
.end method

.method private setIgniteLauncherActivityBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteLauncherActivity_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    return-void
.end method

.method private setIgniteMode(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$f;)V
    .registers 3

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$f;->a()I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteMode_:I

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setIgniteModeValue(I)V
    .registers 4

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteMode_:I

    return-void
.end method

.method private setMarkupUrl(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->markupUrl_:Ljava/lang/String;

    return-void
.end method

.method private setMarkupUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->markupUrl_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setMraidVideoOMSignal(Z)V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->mraidVideoOMSignal_:Z

    return-void
.end method

.method private setMrcData(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->mrcData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setPricingValue(D)V
    .registers 5

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->pricingValue_:D

    return-void
.end method

.method private setPublisherId(J)V
    .registers 4

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->publisherId_:J

    return-void
.end method

.method private setSdkClickUrl(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sdkClickUrl_:Ljava/lang/String;

    return-void
.end method

.method private setSdkClickUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sdkClickUrl_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setSdkImpressionUrl(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sdkImpressionUrl_:Ljava/lang/String;

    return-void
.end method

.method private setSdkImpressionUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sdkImpressionUrl_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setSessionId(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sessionId_:Ljava/lang/String;

    return-void
.end method

.method private setSessionIdBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sessionId_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setSkAdNetworkData(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skAdNetworkData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setSkOverlayData(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skOverlayData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    return-void
.end method

.method private setSkipMode(Z)V
    .registers 4

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skipMode_:Z

    return-void
.end method

.method private setSpotId(J)V
    .registers 5

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->spotId_:J

    return-void
.end method

.method private setStoreCTAText(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeCTAText_:Ljava/lang/String;

    return-void
.end method

.method private setStoreCTATextBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 3

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeCTAText_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setStoreEventUrl(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeEventUrl_:Ljava/lang/String;

    return-void
.end method

.method private setStoreEventUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 3

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeEventUrl_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setStoreUrl(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeUrl_:Ljava/lang/String;

    return-void
.end method

.method private setStoreUrlBytes(Lcom/fyber/inneractive/sdk/protobuf/i;)V
    .registers 2

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/a;->checkByteStringIsUtf8(Lcom/fyber/inneractive/sdk/protobuf/i;)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeUrl_:Ljava/lang/String;

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setStoreUrlType(Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$d;)V
    .registers 3

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$d;->a()I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeUrlType_:I

    iget p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    return-void
.end method

.method private setStoreUrlTypeValue(I)V
    .registers 4

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeUrlType_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/fyber/inneractive/sdk/bidder/adm/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_14e

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    const/4 p1, 0x0

    return-object p1

    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_19
    sget-object p1, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->PARSER:Lcom/fyber/inneractive/sdk/protobuf/w0;

    if-nez p1, :cond_32

    const-class p2, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->PARSER:Lcom/fyber/inneractive/sdk/protobuf/w0;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-direct {p1, p3}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$c;-><init>(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->PARSER:Lcom/fyber/inneractive/sdk/protobuf/w0;

    :cond_2d
    monitor-exit p2

    goto :goto_32

    :catchall_2f
    move-exception p1

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    return-object p1

    :pswitch_33
    sget-object p1, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    return-object p1

    :pswitch_36
    const/16 p1, 0x2c

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "bitField1_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "markupUrl_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "sessionId_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "errorMessage_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "adWidth_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "adHeight_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "adUnitId_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "adUnitType_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "adUnitDisplayType_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "contentId_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "publisherId_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "adNetworkName_"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "adNetworkId_"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "adExpirationInterval_"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "adType_"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "sdkImpressionUrl_"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "sdkClickUrl_"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "storeUrl_"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "advertisedAppId_"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "storeUrlType_"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "storeEventUrl_"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "storeCTAText_"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "skipMode_"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "appBundleId_"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-string p3, "adCompletionUrl_"

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-string p3, "adDuration_"

    aput-object p3, p1, p2

    const/16 p2, 0x1b

    const-string p3, "creativeType_"

    aput-object p3, p1, p2

    const/16 p2, 0x1c

    const-string p3, "skAdNetworkData_"

    aput-object p3, p1, p2

    const/16 p2, 0x1d

    const-string p3, "pricingValue_"

    aput-object p3, p1, p2

    const/16 p2, 0x1e

    const-string p3, "adDomain_"

    aput-object p3, p1, p2

    const/16 p2, 0x1f

    const-string p3, "creativeId_"

    aput-object p3, p1, p2

    const/16 p2, 0x20

    const-string p3, "campaignId_"

    aput-object p3, p1, p2

    const/16 p2, 0x21

    const-string p3, "mrcData_"

    aput-object p3, p1, p2

    const/16 p2, 0x22

    const-string p3, "abExperiments_"

    aput-object p3, p1, p2

    const/16 p2, 0x23

    const-class p3, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;

    aput-object p3, p1, p2

    const/16 p2, 0x24

    const-string p3, "spotId_"

    aput-object p3, p1, p2

    const/16 p2, 0x25

    const-string p3, "igniteMode_"

    aput-object p3, p1, p2

    const/16 p2, 0x26

    const-string p3, "igniteInstallUrl_"

    aput-object p3, p1, p2

    const/16 p2, 0x27

    const-string p3, "igniteLauncherActivity_"

    aput-object p3, p1, p2

    const/16 p2, 0x28

    const-string p3, "skOverlayData_"

    aput-object p3, p1, p2

    const/16 p2, 0x29

    const-string p3, "brandBidderDontShowEndcard_"

    aput-object p3, p1, p2

    const/16 p2, 0x2a

    const-string p3, "brandBidderCtaText_"

    aput-object p3, p1, p2

    const/16 p2, 0x2b

    const-string p3, "mraidVideoOMSignal_"

    aput-object p3, p1, p2

    sget-object p2, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->DEFAULT_INSTANCE:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    const-string p3, "\u0000)\u0000\u0002\u0001))\u0000\u0001\u0000\u0001\u1208\u0000\u0002\u1208\u0001\u0003\u1208\u0002\u0004\u100b\u0003\u0005\u100b\u0004\u0006\u1208\u0005\u0007\u000c\u0008\u000c\t\u1003\u0006\n\u1003\u0007\u000b\u1208\u0008\u000c\u1003\t\r\u1004\n\u000e\u000c\u000f\u1208\u000b\u0010\u1208\u000c\u0011\u1208\r\u0012\u1208\u000e\u0013\u100c\u000f\u0014\u1208\u0010\u0015\u1208\u0011\u0016\u1007\u0012\u0017\u1208\u0013\u0018\u1208\u0014\u0019\u100b\u0015\u001a\u1208\u0016\u001b\u1009\u0017\u001c\u1000\u0018\u001d\u1208\u0019\u001e\u1208\u001a\u001f\u1208\u001b \u1009\u001c!\u001b\"\u1003\u001d#\u100c\u001e$\u1208\u001f%\u1208 &\u1009!\'\u1007\"(\u1208#)\u1007$"

    invoke-static {p2, p3, p1}, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/fyber/inneractive/sdk/protobuf/o0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_142
    new-instance p1, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$c;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$c;-><init>()V

    return-object p1

    :pswitch_148
    new-instance p1, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;-><init>()V

    return-object p1

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_148
        :pswitch_142
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_12
    .end packed-switch
.end method

.method public getAbExperiments(I)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;

    return-object p1
.end method

.method public getAbExperimentsCount()I
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAbExperimentsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$Experiment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    return-object v0
.end method

.method public getAbExperimentsOrBuilder(I)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$e;
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$e;

    return-object p1
.end method

.method public getAbExperimentsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->abExperiments_:Lcom/fyber/inneractive/sdk/protobuf/y$j;

    return-object v0
.end method

.method public getAdCompletionUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adCompletionUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCompletionUrlBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adCompletionUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getAdDomain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adDomain_:Ljava/lang/String;

    return-object v0
.end method

.method public getAdDomainBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adDomain_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getAdDuration()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adDuration_:I

    return v0
.end method

.method public getAdExpirationInterval()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adExpirationInterval_:I

    return v0
.end method

.method public getAdHeight()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adHeight_:I

    return v0
.end method

.method public getAdNetworkId()J
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adNetworkId_:J

    return-wide v0
.end method

.method public getAdNetworkName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adNetworkName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAdNetworkNameBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adNetworkName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getAdType()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$a;
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adType_:I

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$a;->a(I)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$a;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$a;->UNRECOGNIZED:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$a;

    :cond_a
    return-object v0
.end method

.method public getAdTypeValue()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adType_:I

    return v0
.end method

.method public getAdUnitDisplayType()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$g;
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitDisplayType_:I

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$g;->a(I)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$g;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$g;->UNRECOGNIZED:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$g;

    :cond_a
    return-object v0
.end method

.method public getAdUnitDisplayTypeValue()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitDisplayType_:I

    return v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitIdBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitType()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$b;
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitType_:I

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$b;->a(I)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$b;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$b;->UNRECOGNIZED:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$b;

    :cond_a
    return-object v0
.end method

.method public getAdUnitTypeValue()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adUnitType_:I

    return v0
.end method

.method public getAdWidth()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->adWidth_:I

    return v0
.end method

.method public getAdvertisedAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->advertisedAppId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvertisedAppIdBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->advertisedAppId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getAppBundleId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->appBundleId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppBundleIdBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->appBundleId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getBrandBidderCtaText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->brandBidderCtaText_:Ljava/lang/String;

    return-object v0
.end method

.method public getBrandBidderCtaTextBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->brandBidderCtaText_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getBrandBidderDontShowEndcard()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->brandBidderDontShowEndcard_:Z

    return v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->campaignId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignIdBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->campaignId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getContentId()J
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->contentId_:J

    return-wide v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->creativeId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeIdBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->creativeId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getCreativeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->creativeType_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeTypeBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->creativeType_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->errorMessage_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getIgniteInstallUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteInstallUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIgniteInstallUrlBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteInstallUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getIgniteLauncherActivity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteLauncherActivity_:Ljava/lang/String;

    return-object v0
.end method

.method public getIgniteLauncherActivityBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteLauncherActivity_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getIgniteMode()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$f;
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteMode_:I

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$f;->a(I)Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$f;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$f;->UNRECOGNIZED:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$f;

    :cond_a
    return-object v0
.end method

.method public getIgniteModeValue()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->igniteMode_:I

    return v0
.end method

.method public getMarkupUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->markupUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkupUrlBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->markupUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getMraidVideoOMSignal()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->mraidVideoOMSignal_:Z

    return v0
.end method

.method public getMrcData()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->mrcData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$MRCData;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPricingValue()D
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->pricingValue_:D

    return-wide v0
.end method

.method public getPublisherId()J
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->publisherId_:J

    return-wide v0
.end method

.method public getSdkClickUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sdkClickUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkClickUrlBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sdkClickUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getSdkImpressionUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sdkImpressionUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkImpressionUrlBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sdkImpressionUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionIdBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->sessionId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getSkAdNetworkData()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skAdNetworkData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKAdNetworkData;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSkOverlayData()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skOverlayData_:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;->getDefaultInstance()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$SKOverlayData;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSkipMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->skipMode_:Z

    return v0
.end method

.method public getSpotId()J
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->spotId_:J

    return-wide v0
.end method

.method public getStoreCTAText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeCTAText_:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreCTATextBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeCTAText_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getStoreEventUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeEventUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreEventUrlBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeEventUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getStoreUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreUrlBytes()Lcom/fyber/inneractive/sdk/protobuf/i;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/protobuf/i;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public getStoreUrlType()Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$d;
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeUrlType_:I

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_e

    :cond_9
    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$d;->AUTOMATIC:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$d;

    goto :goto_e

    :cond_c
    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$d;->MANUAL:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$d;

    :goto_e
    if-nez v0, :cond_12

    sget-object v0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$d;->UNRECOGNIZED:Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters$d;

    :cond_12
    return-object v0
.end method

.method public getStoreUrlTypeValue()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->storeUrlType_:I

    return v0
.end method

.method public hasAdCompletionUrl()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasAdDomain()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasAdDuration()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasAdExpirationInterval()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasAdHeight()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasAdNetworkId()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasAdNetworkName()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasAdUnitId()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasAdWidth()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasAdvertisedAppId()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasAppBundleId()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasBrandBidderCtaText()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasBrandBidderDontShowEndcard()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasCampaignId()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasContentId()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasCreativeId()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasCreativeType()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasErrorMessage()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasIgniteInstallUrl()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasIgniteLauncherActivity()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasIgniteMode()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasMarkupUrl()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasMraidVideoOMSignal()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasMrcData()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasPricingValue()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasPublisherId()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSdkClickUrl()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSdkImpressionUrl()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSessionId()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSkAdNetworkData()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasSkOverlayData()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField1_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSkipMode()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasSpotId()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasStoreCTAText()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasStoreEventUrl()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasStoreUrl()Z
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasStoreUrlType()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/bidder/adm/AdmParametersOuterClass$AdmParameters;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
