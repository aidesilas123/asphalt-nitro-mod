###### Class gateway.v1.InitializationResponseOuterClass (gateway.v1.InitializationResponseOuterClass)
.class public final Lgateway/v1/InitializationResponseOuterClass;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;,
        Lgateway/v1/InitializationResponseOuterClass$b;,
        Lgateway/v1/InitializationResponseOuterClass$Placement;,
        Lgateway/v1/InitializationResponseOuterClass$AdFormat;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 1

    return-void
.end method

###### Class gateway.v1.InitializationResponseOuterClass.AdFormat (gateway.v1.InitializationResponseOuterClass$AdFormat)
.class public final enum Lgateway/v1/InitializationResponseOuterClass$AdFormat;
.super Ljava/lang/Enum;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/InitializationResponseOuterClass$AdFormat$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/InitializationResponseOuterClass$AdFormat;",
        ">;",
        "Lcom/google/protobuf/Internal$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

.field public static final enum b:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

.field public static final enum c:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

.field public static final enum d:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

.field public static final enum e:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

.field private static final f:Lcom/google/protobuf/Internal$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/InitializationResponseOuterClass$AdFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lgateway/v1/InitializationResponseOuterClass$AdFormat;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    const-string v1, "AD_FORMAT_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->a:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    new-instance v1, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    const-string v3, "AD_FORMAT_INTERSTITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->b:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    new-instance v3, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    const-string v5, "AD_FORMAT_REWARDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->c:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    new-instance v5, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    const-string v7, "AD_FORMAT_BANNER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->d:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    new-instance v7, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    const-string v9, "UNRECOGNIZED"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->e:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    const/4 v9, 0x5

    new-array v9, v9, [Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->g:[Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    new-instance v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat$a;

    invoke-direct {v0}, Lgateway/v1/InitializationResponseOuterClass$AdFormat$a;-><init>()V

    sput-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->f:Lcom/google/protobuf/Internal$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->h:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/InitializationResponseOuterClass$AdFormat;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    sget-object p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->d:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    return-object p0

    :cond_10
    sget-object p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->c:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    return-object p0

    :cond_13
    sget-object p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->b:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    return-object p0

    :cond_16
    sget-object p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->a:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/InitializationResponseOuterClass$AdFormat;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->f:Lcom/google/protobuf/Internal$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$e;
    .registers 1

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat$b;->a:Lcom/google/protobuf/Internal$e;

    return-object v0
.end method

.method public static valueOf(I)Lgateway/v1/InitializationResponseOuterClass$AdFormat;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->forNumber(I)Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/InitializationResponseOuterClass$AdFormat;
    .registers 2

    const-class v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    return-object p0
.end method

.method public static values()[Lgateway/v1/InitializationResponseOuterClass$AdFormat;
    .registers 1

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->g:[Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    invoke-virtual {v0}, [Lgateway/v1/InitializationResponseOuterClass$AdFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->e:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->h:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class gateway.v1.InitializationResponseOuterClass.AdFormat.a (gateway.v1.InitializationResponseOuterClass$AdFormat$a)
.class Lgateway/v1/InitializationResponseOuterClass$AdFormat$a;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/InitializationResponseOuterClass$AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$d<",
        "Lgateway/v1/InitializationResponseOuterClass$AdFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lgateway/v1/InitializationResponseOuterClass$AdFormat;
    .registers 2

    invoke-static {p1}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->forNumber(I)Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$c;
    .registers 2

    invoke-virtual {p0, p1}, Lgateway/v1/InitializationResponseOuterClass$AdFormat$a;->a(I)Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    move-result-object p1

    return-object p1
.end method

###### Class gateway.v1.InitializationResponseOuterClass.AdFormat.b (gateway.v1.InitializationResponseOuterClass$AdFormat$b)
.class final Lgateway/v1/InitializationResponseOuterClass$AdFormat$b;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/InitializationResponseOuterClass$AdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/protobuf/Internal$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat$b;

    invoke-direct {v0}, Lgateway/v1/InitializationResponseOuterClass$AdFormat$b;-><init>()V

    sput-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat$b;->a:Lcom/google/protobuf/Internal$e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    invoke-static {p1}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->forNumber(I)Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

###### Class gateway.v1.InitializationResponseOuterClass.InitializationResponse (gateway.v1.InitializationResponseOuterClass$InitializationResponse)
.class public final Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lgateway/v1/InitializationResponseOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitializationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;,
        Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;",
        "Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;",
        ">;",
        "Lgateway/v1/InitializationResponseOuterClass$b;"
    }
.end annotation


# static fields
.field public static final COUNT_OF_LAST_SHOWN_CAMPAIGNS_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

.field public static final ERROR_FIELD_NUMBER:I = 0x3

.field public static final NATIVE_CONFIGURATION_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCAR_PLACEMENTS_FIELD_NUMBER:I = 0x6

.field public static final TRIGGER_INITIALIZATION_COMPLETED_REQUEST_FIELD_NUMBER:I = 0x4

.field public static final UNIVERSAL_REQUEST_URL_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private countOfLastShownCampaigns_:I

.field private error_:Lgateway/v1/ErrorOuterClass$Error;

.field private nativeConfiguration_:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

.field private scarPlacements_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lgateway/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation
.end field

.field private triggerInitializationCompletedRequest_:Z

.field private universalRequestUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-direct {v0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;-><init>()V

    sput-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    const-class v1, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->scarPlacements_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    iput-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->universalRequestUrl_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->clearUniversalRequestUrl()V

    return-void
.end method

.method static synthetic access$1100(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->setUniversalRequestUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;Lgateway/v1/ErrorOuterClass$Error;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->setError(Lgateway/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method static synthetic access$1300(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;Lgateway/v1/ErrorOuterClass$Error;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->mergeError(Lgateway/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method static synthetic access$1400(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->clearError()V

    return-void
.end method

.method static synthetic access$1500(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->setTriggerInitializationCompletedRequest(Z)V

    return-void
.end method

.method static synthetic access$1600(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->clearTriggerInitializationCompletedRequest()V

    return-void
.end method

.method static synthetic access$1700(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->setCountOfLastShownCampaigns(I)V

    return-void
.end method

.method static synthetic access$1800(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->clearCountOfLastShownCampaigns()V

    return-void
.end method

.method static synthetic access$1900(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->getMutableScarPlacementsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 1

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object v0
.end method

.method static synthetic access$600(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->setNativeConfiguration(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V

    return-void
.end method

.method static synthetic access$700(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->mergeNativeConfiguration(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V

    return-void
.end method

.method static synthetic access$800(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->clearNativeConfiguration()V

    return-void
.end method

.method static synthetic access$900(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->setUniversalRequestUrl(Ljava/lang/String;)V

    return-void
.end method

.method private clearCountOfLastShownCampaigns()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->countOfLastShownCampaigns_:I

    return-void
.end method

.method private clearError()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    iget v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    return-void
.end method

.method private clearNativeConfiguration()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-void
.end method

.method private clearTriggerInitializationCompletedRequest()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->triggerInitializationCompletedRequest_:Z

    return-void
.end method

.method private clearUniversalRequestUrl()V
    .registers 2

    iget v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    invoke-static {}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->getDefaultInstance()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->getUniversalRequestUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->universalRequestUrl_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 1

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object v0
.end method

.method private getMutableScarPlacementsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgateway/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->internalGetMutableScarPlacements()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMutableScarPlacements()Lcom/google/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lgateway/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->scarPlacements_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->scarPlacements_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->scarPlacements_:Lcom/google/protobuf/MapFieldLite;

    :cond_10
    iget-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->scarPlacements_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetScarPlacements()Lcom/google/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lgateway/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->scarPlacements_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeError(Lgateway/v1/ErrorOuterClass$Error;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgateway/v1/ErrorOuterClass$Error;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    invoke-static {v0}, Lgateway/v1/ErrorOuterClass$Error;->newBuilder(Lgateway/v1/ErrorOuterClass$Error;)Lgateway/v1/ErrorOuterClass$Error$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/ErrorOuterClass$Error$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/ErrorOuterClass$Error;

    iput-object p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    :goto_24
    iget p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    return-void
.end method

.method private mergeNativeConfiguration(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    iput-object p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    :goto_24
    return-void
.end method

.method public static newBuilder()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;
    .registers 1

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;
    .registers 2

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setCountOfLastShownCampaigns(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->countOfLastShownCampaigns_:I

    return-void
.end method

.method private setError(Lgateway/v1/ErrorOuterClass$Error;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    iget p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    return-void
.end method

.method private setNativeConfiguration(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-void
.end method

.method private setTriggerInitializationCompletedRequest(Z)V
    .registers 2

    iput-boolean p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->triggerInitializationCompletedRequest_:Z

    return-void
.end method

.method private setUniversalRequestUrl(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    iput-object p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->universalRequestUrl_:Ljava/lang/String;

    return-void
.end method

.method private setUniversalRequestUrlBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->universalRequestUrl_:Ljava/lang/String;

    iget p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    return-void
.end method


# virtual methods
.method public containsScarPlacements(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->internalGetScarPlacements()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/InitializationResponseOuterClass$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_76

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_19
    sget-object p1, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object p1

    :pswitch_36
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "nativeConfiguration_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "universalRequestUrl_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "error_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "triggerInitializationCompletedRequest_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "countOfLastShownCampaigns_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "scarPlacements_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    sget-object p3, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$b;->a:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0001\u0001\u0006\u0006\u0001\u0000\u0000\u0001\t\u0002\u1208\u0000\u0003\u1009\u0001\u0004\u0007\u0005\u0004\u00062"

    sget-object p3, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6a
    new-instance p1, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;

    invoke-direct {p1, p3}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;-><init>(Lgateway/v1/InitializationResponseOuterClass$a;)V

    return-object p1

    :pswitch_70
    new-instance p1, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-direct {p1}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;-><init>()V

    return-object p1

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6a
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getCountOfLastShownCampaigns()I
    .registers 2

    iget v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->countOfLastShownCampaigns_:I

    return v0
.end method

.method public getError()Lgateway/v1/ErrorOuterClass$Error;
    .registers 2

    iget-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgateway/v1/ErrorOuterClass$Error;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getNativeConfiguration()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 2

    iget-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getScarPlacements()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgateway/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->getScarPlacementsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScarPlacementsCount()I
    .registers 2

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->internalGetScarPlacements()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getScarPlacementsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgateway/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->internalGetScarPlacements()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScarPlacementsOrDefault(Ljava/lang/String;Lgateway/v1/InitializationResponseOuterClass$Placement;)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->internalGetScarPlacements()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lgateway/v1/InitializationResponseOuterClass$Placement;

    :cond_14
    return-object p2
.end method

.method public getScarPlacementsOrThrow(Ljava/lang/String;)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->internalGetScarPlacements()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getTriggerInitializationCompletedRequest()Z
    .registers 2

    iget-boolean v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->triggerInitializationCompletedRequest_:Z

    return v0
.end method

.method public getUniversalRequestUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->universalRequestUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getUniversalRequestUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->universalRequestUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .registers 2

    iget v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasNativeConfiguration()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->nativeConfiguration_:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasUniversalRequestUrl()Z
    .registers 3

    iget v0, p0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

###### Class gateway.v1.InitializationResponseOuterClass.InitializationResponse.a (gateway.v1.InitializationResponseOuterClass$InitializationResponse$a)
.class public final Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lgateway/v1/InitializationResponseOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;",
        "Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;",
        ">;",
        "Lgateway/v1/InitializationResponseOuterClass$b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->access$500()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/InitializationResponseOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lgateway/v1/ErrorOuterClass$Error;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->getError()Lgateway/v1/ErrorOuterClass$Error;

    move-result-object v0

    return-object v0
.end method

.method public getNativeConfiguration()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->getNativeConfiguration()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasNativeConfiguration()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-virtual {v0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->hasNativeConfiguration()Z

    move-result v0

    return v0
.end method

###### Class gateway.v1.InitializationResponseOuterClass.InitializationResponse.b (gateway.v1.InitializationResponseOuterClass$InitializationResponse$b)
.class final Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$b;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/protobuf/MapEntryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapEntryLite<",
            "Ljava/lang/String;",
            "Lgateway/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->STRING:Lcom/google/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static {}, Lgateway/v1/InitializationResponseOuterClass$Placement;->getDefaultInstance()Lgateway/v1/InitializationResponseOuterClass$Placement;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/google/protobuf/MapEntryLite;->newDefaultInstance(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite;

    move-result-object v0

    sput-object v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$b;->a:Lcom/google/protobuf/MapEntryLite;

    return-void
.end method

###### Class gateway.v1.InitializationResponseOuterClass.Placement (gateway.v1.InitializationResponseOuterClass$Placement)
.class public final Lgateway/v1/InitializationResponseOuterClass$Placement;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Placement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/InitializationResponseOuterClass$Placement$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/InitializationResponseOuterClass$Placement;",
        "Lgateway/v1/InitializationResponseOuterClass$Placement$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final AD_FORMAT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

.field private static volatile PARSER:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adFormat_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-direct {v0}, Lgateway/v1/InitializationResponseOuterClass$Placement;-><init>()V

    sput-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    const-class v1, Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 1

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object v0
.end method

.method static synthetic access$100(Lgateway/v1/InitializationResponseOuterClass$Placement;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/InitializationResponseOuterClass$Placement;->setAdFormatValue(I)V

    return-void
.end method

.method static synthetic access$200(Lgateway/v1/InitializationResponseOuterClass$Placement;Lgateway/v1/InitializationResponseOuterClass$AdFormat;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/InitializationResponseOuterClass$Placement;->setAdFormat(Lgateway/v1/InitializationResponseOuterClass$AdFormat;)V

    return-void
.end method

.method static synthetic access$300(Lgateway/v1/InitializationResponseOuterClass$Placement;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$Placement;->clearAdFormat()V

    return-void
.end method

.method private clearAdFormat()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/InitializationResponseOuterClass$Placement;->adFormat_:I

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 1

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object v0
.end method

.method public static newBuilder()Lgateway/v1/InitializationResponseOuterClass$Placement$a;
    .registers 1

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/InitializationResponseOuterClass$Placement$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/InitializationResponseOuterClass$Placement;)Lgateway/v1/InitializationResponseOuterClass$Placement$a;
    .registers 2

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$Placement$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationResponseOuterClass$Placement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/InitializationResponseOuterClass$Placement;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setAdFormat(Lgateway/v1/InitializationResponseOuterClass$AdFormat;)V
    .registers 2

    invoke-virtual {p1}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->getNumber()I

    move-result p1

    iput p1, p0, Lgateway/v1/InitializationResponseOuterClass$Placement;->adFormat_:I

    return-void
.end method

.method private setAdFormatValue(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/InitializationResponseOuterClass$Placement;->adFormat_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object p2, Lgateway/v1/InitializationResponseOuterClass$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_52

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_19
    sget-object p1, Lgateway/v1/InitializationResponseOuterClass$Placement;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/InitializationResponseOuterClass$Placement;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/InitializationResponseOuterClass$Placement;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/InitializationResponseOuterClass$Placement;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    return-object p1

    :pswitch_36
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "adFormat_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000c"

    sget-object p3, Lgateway/v1/InitializationResponseOuterClass$Placement;->DEFAULT_INSTANCE:Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_46
    new-instance p1, Lgateway/v1/InitializationResponseOuterClass$Placement$a;

    invoke-direct {p1, p3}, Lgateway/v1/InitializationResponseOuterClass$Placement$a;-><init>(Lgateway/v1/InitializationResponseOuterClass$a;)V

    return-object p1

    :pswitch_4c
    new-instance p1, Lgateway/v1/InitializationResponseOuterClass$Placement;

    invoke-direct {p1}, Lgateway/v1/InitializationResponseOuterClass$Placement;-><init>()V

    return-object p1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_46
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getAdFormat()Lgateway/v1/InitializationResponseOuterClass$AdFormat;
    .registers 2

    iget v0, p0, Lgateway/v1/InitializationResponseOuterClass$Placement;->adFormat_:I

    invoke-static {v0}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->forNumber(I)Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->e:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    :cond_a
    return-object v0
.end method

.method public getAdFormatValue()I
    .registers 2

    iget v0, p0, Lgateway/v1/InitializationResponseOuterClass$Placement;->adFormat_:I

    return v0
.end method

###### Class gateway.v1.InitializationResponseOuterClass.Placement.a (gateway.v1.InitializationResponseOuterClass$Placement$a)
.class public final Lgateway/v1/InitializationResponseOuterClass$Placement$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/InitializationResponseOuterClass$Placement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/InitializationResponseOuterClass$Placement;",
        "Lgateway/v1/InitializationResponseOuterClass$Placement$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/InitializationResponseOuterClass$Placement;->access$000()Lgateway/v1/InitializationResponseOuterClass$Placement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/InitializationResponseOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/InitializationResponseOuterClass$Placement$a;-><init>()V

    return-void
.end method

###### Class gateway.v1.InitializationResponseOuterClass.a (gateway.v1.InitializationResponseOuterClass$a)
.class synthetic Lgateway/v1/InitializationResponseOuterClass$a;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgateway/v1/InitializationResponseOuterClass$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method

###### Class gateway.v1.InitializationResponseOuterClass.b (gateway.v1.InitializationResponseOuterClass$b)
.class public interface abstract Lgateway/v1/InitializationResponseOuterClass$b;
.super Ljava/lang/Object;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract getError()Lgateway/v1/ErrorOuterClass$Error;
.end method

.method public abstract getNativeConfiguration()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
.end method

.method public abstract hasError()Z
.end method

.method public abstract hasNativeConfiguration()Z
.end method
