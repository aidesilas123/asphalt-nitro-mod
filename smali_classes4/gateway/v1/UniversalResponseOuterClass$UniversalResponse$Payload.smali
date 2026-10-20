###### Class gateway.v1.UniversalResponseOuterClass.UniversalResponse.Payload (gateway.v1.UniversalResponseOuterClass$UniversalResponse$Payload)
.class public final Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UniversalResponseOuterClass.java"

# interfaces
.implements Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;,
        Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;",
        ">;",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$b;"
    }
.end annotation


# static fields
.field public static final AD_DATA_REFRESH_RESPONSE_FIELD_NUMBER:I = 0x4

.field public static final AD_PLAYER_CONFIG_RESPONSE_FIELD_NUMBER:I = 0x3

.field public static final AD_RESPONSE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

.field public static final INITIALIZATION_RESPONSE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVACY_UPDATE_RESPONSE_FIELD_NUMBER:I = 0x5


# instance fields
.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-direct {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;-><init>()V

    sput-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    const-class v1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method static synthetic access$000()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object v0
.end method

.method static synthetic access$100(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearValue()V

    return-void
.end method

.method static synthetic access$1000(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearAdPlayerConfigResponse()V

    return-void
.end method

.method static synthetic access$1100(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setAdDataRefreshResponse(Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V

    return-void
.end method

.method static synthetic access$1200(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeAdDataRefreshResponse(Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V

    return-void
.end method

.method static synthetic access$1300(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearAdDataRefreshResponse()V

    return-void
.end method

.method static synthetic access$1400(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setPrivacyUpdateResponse(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V

    return-void
.end method

.method static synthetic access$1500(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergePrivacyUpdateResponse(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V

    return-void
.end method

.method static synthetic access$1600(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearPrivacyUpdateResponse()V

    return-void
.end method

.method static synthetic access$200(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setInitializationResponse(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-void
.end method

.method static synthetic access$300(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeInitializationResponse(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-void
.end method

.method static synthetic access$400(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearInitializationResponse()V

    return-void
.end method

.method static synthetic access$500(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/AdResponseOuterClass$AdResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setAdResponse(Lgateway/v1/AdResponseOuterClass$AdResponse;)V

    return-void
.end method

.method static synthetic access$600(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/AdResponseOuterClass$AdResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeAdResponse(Lgateway/v1/AdResponseOuterClass$AdResponse;)V

    return-void
.end method

.method static synthetic access$700(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearAdResponse()V

    return-void
.end method

.method static synthetic access$800(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setAdPlayerConfigResponse(Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V

    return-void
.end method

.method static synthetic access$900(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeAdPlayerConfigResponse(Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V

    return-void
.end method

.method private clearAdDataRefreshResponse()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearAdPlayerConfigResponse()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearAdResponse()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearInitializationResponse()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearPrivacyUpdateResponse()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearValue()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object v0
.end method

.method private mergeAdDataRefreshResponse(Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getDefaultInstance()Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    invoke-static {v0}, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->newBuilder(Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdPlayerConfigResponse(Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getDefaultInstance()Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    invoke-static {v0}, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->newBuilder(Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdResponse(Lgateway/v1/AdResponseOuterClass$AdResponse;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getDefaultInstance()Lgateway/v1/AdResponseOuterClass$AdResponse;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgateway/v1/AdResponseOuterClass$AdResponse;->newBuilder(Lgateway/v1/AdResponseOuterClass$AdResponse;)Lgateway/v1/AdResponseOuterClass$AdResponse$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/AdResponseOuterClass$AdResponse$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergeInitializationResponse(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->getDefaultInstance()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->newBuilder(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergePrivacyUpdateResponse(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;->getDefaultInstance()Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    invoke-static {v0}, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;->newBuilder(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method public static newBuilder()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;
    .registers 2

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setAdDataRefreshResponse(Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setAdPlayerConfigResponse(Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setAdResponse(Lgateway/v1/AdResponseOuterClass$AdResponse;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setInitializationResponse(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setPrivacyUpdateResponse(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/UniversalResponseOuterClass$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_70

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
    sget-object p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p1

    :pswitch_36
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "value_"

    aput-object v0, p1, p3

    const-string p3, "valueCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-class p3, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lgateway/v1/AdResponseOuterClass$AdResponse;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0001\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000"

    sget-object p3, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_64
    new-instance p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;

    invoke-direct {p1, p3}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;-><init>(Lgateway/v1/UniversalResponseOuterClass$a;)V

    return-object p1

    :pswitch_6a
    new-instance p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-direct {p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;-><init>()V

    return-object p1

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_64
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getAdDataRefreshResponse()Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getDefaultInstance()Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAdPlayerConfigResponse()Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getDefaultInstance()Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAdResponse()Lgateway/v1/AdResponseOuterClass$AdResponse;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdResponseOuterClass$AdResponse;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getDefaultInstance()Lgateway/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationResponse()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->getDefaultInstance()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyUpdateResponse()Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;->getDefaultInstance()Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .registers 2

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    invoke-static {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->forNumber(I)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAdDataRefreshResponse()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasAdPlayerConfigResponse()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasAdResponse()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasInitializationResponse()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public hasPrivacyUpdateResponse()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
