###### Class com.hyprmx.android.sdk.utility.s (com.hyprmx.android.sdk.utility.s)
.class public final enum Lcom/hyprmx/android/sdk/utility/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyprmx/android/sdk/utility/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/hyprmx/android/sdk/utility/s;

.field public static final enum c:Lcom/hyprmx/android/sdk/utility/s;

.field public static final enum d:Lcom/hyprmx/android/sdk/utility/s;

.field public static final enum e:Lcom/hyprmx/android/sdk/utility/s;

.field public static final enum f:Lcom/hyprmx/android/sdk/utility/s;

.field public static final enum g:Lcom/hyprmx/android/sdk/utility/s;

.field public static final enum h:Lcom/hyprmx/android/sdk/utility/s;

.field public static final enum i:Lcom/hyprmx/android/sdk/utility/s;

.field public static final enum j:Lcom/hyprmx/android/sdk/utility/s;

.field public static final enum k:Lcom/hyprmx/android/sdk/utility/s;

.field public static final synthetic l:[Lcom/hyprmx/android/sdk/utility/s;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 20

    new-instance v0, Lcom/hyprmx/android/sdk/utility/s;

    const-string v1, "HYPRErrorTypeFailureToLoad"

    const-string v2, "Could not load from the API"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/hyprmx/android/sdk/utility/s;->b:Lcom/hyprmx/android/sdk/utility/s;

    new-instance v1, Lcom/hyprmx/android/sdk/utility/s;

    const-string v2, "HYPRErrorTypeFailureToLoadImage"

    const-string v4, "Could not load image from the specified URL"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/hyprmx/android/sdk/utility/s;

    const-string v4, "HYPRErrorTypeVastCachingAssetError"

    const-string v6, "Error while caching VAST asset"

    const/4 v7, 0x2

    invoke-direct {v2, v4, v6, v7}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lcom/hyprmx/android/sdk/utility/s;->c:Lcom/hyprmx/android/sdk/utility/s;

    new-instance v4, Lcom/hyprmx/android/sdk/utility/s;

    const-string v6, "HYPRErrorTypeVastPlayerError"

    const-string v8, "Error occurred while playing a VAST video"

    const/4 v9, 0x3

    invoke-direct {v4, v6, v8, v9}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lcom/hyprmx/android/sdk/utility/s;->d:Lcom/hyprmx/android/sdk/utility/s;

    new-instance v6, Lcom/hyprmx/android/sdk/utility/s;

    const-string v8, "HYPRErrorTypeUnspecified"

    const-string v10, "Unspecified Error Type"

    const/4 v11, 0x4

    invoke-direct {v6, v8, v10, v11}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v8, Lcom/hyprmx/android/sdk/utility/s;

    const-string v10, "HYPRErrorTypeSDKInternalError"

    const-string v12, "SDK Internal Error"

    const/4 v13, 0x5

    invoke-direct {v8, v10, v12, v13}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v8, Lcom/hyprmx/android/sdk/utility/s;->e:Lcom/hyprmx/android/sdk/utility/s;

    new-instance v10, Lcom/hyprmx/android/sdk/utility/s;

    const-string v12, "HYPRErrorTypePostOfferQuestionsNotSupported"

    const-string v14, "Post Ad Questions are not supported by the Android SDK"

    const/4 v15, 0x6

    invoke-direct {v10, v12, v14, v15}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v12, Lcom/hyprmx/android/sdk/utility/s;

    const-string v14, "HYPRErrorTypeJSONParsingFailure"

    const-string v15, "There was an error parsing the JSON object"

    const/4 v13, 0x7

    invoke-direct {v12, v14, v15, v13}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v12, Lcom/hyprmx/android/sdk/utility/s;->f:Lcom/hyprmx/android/sdk/utility/s;

    new-instance v14, Lcom/hyprmx/android/sdk/utility/s;

    const-string v15, "HYPRErrorTypeWebTrafficEmptyResponse"

    const-string v13, "WebTraffic offer contents JSON String returned empty"

    const/16 v11, 0x8

    invoke-direct {v14, v15, v13, v11}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v13, Lcom/hyprmx/android/sdk/utility/s;

    const-string v15, "HYPRErrorTypeShouldNeverHappen"

    const-string v11, "This should NEVER happen."

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v13, Lcom/hyprmx/android/sdk/utility/s;->g:Lcom/hyprmx/android/sdk/utility/s;

    new-instance v11, Lcom/hyprmx/android/sdk/utility/s;

    const-string v15, "HYPRErrorTypeJsonValidation"

    const-string v9, "JSON validation error."

    const/16 v7, 0xa

    invoke-direct {v11, v15, v9, v7}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v9, Lcom/hyprmx/android/sdk/utility/s;

    const-string v15, "HYPRErrorCollectionTypeJavaScriptEvaluation"

    const-string v7, "Error while evaluating shared javascript."

    const/16 v5, 0xb

    invoke-direct {v9, v15, v7, v5}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v7, Lcom/hyprmx/android/sdk/utility/s;

    const-string v15, "HYPRErrorAdDisplay"

    const-string v5, "Error while viewing an offer."

    const/16 v3, 0xc

    invoke-direct {v7, v15, v5, v3}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v7, Lcom/hyprmx/android/sdk/utility/s;->h:Lcom/hyprmx/android/sdk/utility/s;

    new-instance v5, Lcom/hyprmx/android/sdk/utility/s;

    const-string v15, "HYPRErrorExitingAd"

    const-string v3, "Ad was exited unintentionally."

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v15, v3, v7}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v5, Lcom/hyprmx/android/sdk/utility/s;->i:Lcom/hyprmx/android/sdk/utility/s;

    new-instance v3, Lcom/hyprmx/android/sdk/utility/s;

    const-string v15, "HYPRErrorTypeCacheJournal"

    const-string v7, "There was an error with the cache journal"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v15, v7, v5}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/hyprmx/android/sdk/utility/s;->j:Lcom/hyprmx/android/sdk/utility/s;

    new-instance v7, Lcom/hyprmx/android/sdk/utility/s;

    const-string v15, "HYPRErrorInvalidEndpoint"

    const-string v5, "Invalid endpoint send from server."

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v15, v5, v3}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v7, Lcom/hyprmx/android/sdk/utility/s;->k:Lcom/hyprmx/android/sdk/utility/s;

    new-instance v5, Lcom/hyprmx/android/sdk/utility/s;

    const-string v15, "HYPRErrorInvalidURL"

    const-string v3, "An error occurred while converting an String to a URL"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v15, v3, v7}, Lcom/hyprmx/android/sdk/utility/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v3, 0x11

    new-array v3, v3, [Lcom/hyprmx/android/sdk/utility/s;

    const/4 v15, 0x0

    aput-object v0, v3, v15

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v14, v3, v0

    const/16 v0, 0x9

    aput-object v13, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    aput-object v5, v3, v7

    sput-object v3, Lcom/hyprmx/android/sdk/utility/s;->l:[Lcom/hyprmx/android/sdk/utility/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/hyprmx/android/sdk/utility/s;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyprmx/android/sdk/utility/s;
    .registers 2

    const-class v0, Lcom/hyprmx/android/sdk/utility/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyprmx/android/sdk/utility/s;

    return-object p0
.end method

.method public static values()[Lcom/hyprmx/android/sdk/utility/s;
    .registers 1

    sget-object v0, Lcom/hyprmx/android/sdk/utility/s;->l:[Lcom/hyprmx/android/sdk/utility/s;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyprmx/android/sdk/utility/s;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/s;->a:Ljava/lang/String;

    return-object v0
.end method
