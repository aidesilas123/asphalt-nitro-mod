###### Class com.hyprmx.android.sdk.consent.ConsentStatus (com.hyprmx.android.sdk.consent.ConsentStatus)
.class public final enum Lcom/hyprmx/android/sdk/consent/ConsentStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyprmx/android/sdk/consent/ConsentStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/consent/ConsentStatus;",
        "",
        "consent",
        "",
        "(Ljava/lang/String;II)V",
        "getConsent",
        "()I",
        "CONSENT_STATUS_UNKNOWN",
        "CONSENT_GIVEN",
        "CONSENT_DECLINED",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyprmx/android/sdk/consent/ConsentStatus;

.field public static final enum CONSENT_DECLINED:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

.field public static final enum CONSENT_GIVEN:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

.field public static final enum CONSENT_STATUS_UNKNOWN:Lcom/hyprmx/android/sdk/consent/ConsentStatus;


# instance fields
.field private final consent:I


# direct methods
.method private static final synthetic $values()[Lcom/hyprmx/android/sdk/consent/ConsentStatus;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    sget-object v1, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->CONSENT_STATUS_UNKNOWN:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->CONSENT_GIVEN:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->CONSENT_DECLINED:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    const-string v1, "CONSENT_STATUS_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hyprmx/android/sdk/consent/ConsentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->CONSENT_STATUS_UNKNOWN:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    new-instance v0, Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    const-string v1, "CONSENT_GIVEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/hyprmx/android/sdk/consent/ConsentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->CONSENT_GIVEN:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    new-instance v0, Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    const-string v1, "CONSENT_DECLINED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/hyprmx/android/sdk/consent/ConsentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->CONSENT_DECLINED:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    invoke-static {}, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->$values()[Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    move-result-object v0

    sput-object v0, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->$VALUES:[Lcom/hyprmx/android/sdk/consent/ConsentStatus;

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

    iput p3, p0, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->consent:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyprmx/android/sdk/consent/ConsentStatus;
    .registers 2

    const-class v0, Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    return-object p0
.end method

.method public static values()[Lcom/hyprmx/android/sdk/consent/ConsentStatus;
    .registers 1

    sget-object v0, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->$VALUES:[Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    return-object v0
.end method


# virtual methods
.method public final getConsent()I
    .registers 2

    iget v0, p0, Lcom/hyprmx/android/sdk/consent/ConsentStatus;->consent:I

    return v0
.end method
