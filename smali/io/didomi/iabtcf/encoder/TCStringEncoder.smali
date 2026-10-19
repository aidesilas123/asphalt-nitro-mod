###### Class io.didomi.iabtcf.encoder.TCStringEncoder (io.didomi.iabtcf.encoder.TCStringEncoder)
.class public interface abstract Lio/didomi/iabtcf/encoder/TCStringEncoder;
.super Ljava/lang/Object;
.source "TCStringEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/iabtcf/encoder/TCStringEncoder$Util;,
        Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;,
        Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;,
        Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;
    }
.end annotation


# virtual methods
.method public abstract encode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;
        }
    .end annotation
.end method

.method public abstract toTCString()Lio/didomi/iabtcf/decoder/TCString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;
        }
    .end annotation
.end method

###### Class io.didomi.iabtcf.encoder.TCStringEncoder.AnonymousClass1 (io.didomi.iabtcf.encoder.TCStringEncoder$1)
.class synthetic Lio/didomi/iabtcf/encoder/TCStringEncoder$1;
.super Ljava/lang/Object;
.source "TCStringEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/encoder/TCStringEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$didomi$iabtcf$decoder$v2$SegmentType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lio/didomi/iabtcf/decoder/v2/SegmentType;->values()[Lio/didomi/iabtcf/decoder/v2/SegmentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/didomi/iabtcf/encoder/TCStringEncoder$1;->$SwitchMap$io$didomi$iabtcf$decoder$v2$SegmentType:[I

    :try_start_9
    sget-object v1, Lio/didomi/iabtcf/decoder/v2/SegmentType;->DISCLOSED_VENDOR:Lio/didomi/iabtcf/decoder/v2/SegmentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/didomi/iabtcf/encoder/TCStringEncoder$1;->$SwitchMap$io$didomi$iabtcf$decoder$v2$SegmentType:[I

    sget-object v1, Lio/didomi/iabtcf/decoder/v2/SegmentType;->ALLOWED_VENDOR:Lio/didomi/iabtcf/decoder/v2/SegmentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class io.didomi.iabtcf.encoder.TCStringEncoder.Builder (io.didomi.iabtcf.encoder.TCStringEncoder$Builder)
.class public Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
.super Ljava/lang/Object;
.source "TCStringEncoder.java"

# interfaces
.implements Lio/didomi/iabtcf/encoder/TCStringEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/encoder/TCStringEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allowedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

.field private cmpId:I

.field private cmpVersion:I

.field private consentLanguage:Ljava/lang/String;

.field private consentScreen:I

.field private created:Ljava/util/Date;

.field private customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

.field private customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

.field private defaultConsent:Z

.field private disclosedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

.field private isServiceSpecific:Z

.field private pubPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

.field private pubPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

.field private publisherCC:Ljava/lang/String;

.field private final publisherRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private purposeOneTreatment:Z

.field private purposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

.field private purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

.field private specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

.field private tcfPolicyVersion:I

.field private updated:Ljava/util/Date;

.field private useNonStandardStacks:Z

.field private vendorConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

.field private vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

.field private vendorListVersion:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->version:I

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->created:Ljava/util/Date;

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->updated:Ljava/util/Date;

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpId:I

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpVersion:I

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentScreen:I

    const-string v1, "EN"

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentLanguage:Ljava/lang/String;

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorListVersion:I

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->tcfPolicyVersion:I

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->isServiceSpecific:Z

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->useNonStandardStacks:Z

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposeOneTreatment:Z

    const-string v1, "US"

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherCC:Ljava/lang/String;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->defaultConsent:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherRestrictions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lio/didomi/iabtcf/decoder/TCString;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->version:I

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->created:Ljava/util/Date;

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->updated:Ljava/util/Date;

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpId:I

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpVersion:I

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentScreen:I

    const-string v1, "EN"

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentLanguage:Ljava/lang/String;

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorListVersion:I

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->tcfPolicyVersion:I

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->isServiceSpecific:Z

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->useNonStandardStacks:Z

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposeOneTreatment:Z

    const-string v1, "US"

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherCC:Ljava/lang/String;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->defaultConsent:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherRestrictions:Ljava/util/List;

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getVersion()I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->version:I

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getCreated()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->created:Ljava/util/Date;

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getLastUpdated()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->updated:Ljava/util/Date;

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getCmpId()I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpId:I

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getCmpVersion()I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpVersion:I

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getConsentScreen()I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentScreen:I

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getConsentLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentLanguage:Ljava/lang/String;

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getVendorListVersion()I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorListVersion:I

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getVendorConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iget v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10b

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getTcfPolicyVersion()I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->tcfPolicyVersion:I

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->isServiceSpecific()Z

    move-result v0

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->isServiceSpecific:Z

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getUseNonStandardStacks()Z

    move-result v0

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->useNonStandardStacks:Z

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getSpecialFeatureOptIns()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getPurposeOneTreatment()Z

    move-result v0

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposeOneTreatment:Z

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getPublisherCC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherCC:Ljava/lang/String;

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getVendorLegitimateInterest()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getDisclosedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-interface {p1}, Lio/didomi/iabtcf/decoder/TCString;->getAllowedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    :cond_10b
    return-void
.end method

.method private constructor <init>(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->version:I

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->created:Ljava/util/Date;

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->updated:Ljava/util/Date;

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpId:I

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpVersion:I

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentScreen:I

    const-string v1, "EN"

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentLanguage:Ljava/lang/String;

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorListVersion:I

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->tcfPolicyVersion:I

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->isServiceSpecific:Z

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->useNonStandardStacks:Z

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposeOneTreatment:Z

    const-string v1, "US"

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherCC:Ljava/lang/String;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    iput-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->defaultConsent:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherRestrictions:Ljava/util/List;

    iget v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->version:I

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->version:I

    iget-object v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->created:Ljava/util/Date;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->created:Ljava/util/Date;

    iget-object v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->updated:Ljava/util/Date;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->updated:Ljava/util/Date;

    iget v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpId:I

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpId:I

    iget v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpVersion:I

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpVersion:I

    iget v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentScreen:I

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentScreen:I

    iget-object v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentLanguage:Ljava/lang/String;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentLanguage:Ljava/lang/String;

    iget v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorListVersion:I

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorListVersion:I

    iget-object v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iget-object v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iget v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->tcfPolicyVersion:I

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->tcfPolicyVersion:I

    iget-boolean v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->isServiceSpecific:Z

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->isServiceSpecific:Z

    iget-boolean v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->useNonStandardStacks:Z

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->useNonStandardStacks:Z

    iget-object v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iget-object v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iget-boolean v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposeOneTreatment:Z

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposeOneTreatment:Z

    iget-object v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherCC:Ljava/lang/String;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherCC:Ljava/lang/String;

    iget-object v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iget-object v0, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iget-object p1, p1, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;Lio/didomi/iabtcf/encoder/TCStringEncoder$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;-><init>(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I
    .registers 1

    iget p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->version:I

    return p0
.end method

.method static synthetic access$100(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->created:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$1000(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->defaultConsent:Z

    return p0
.end method

.method static synthetic access$1100(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I
    .registers 1

    iget p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->tcfPolicyVersion:I

    return p0
.end method

.method static synthetic access$1200(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->isServiceSpecific:Z

    return p0
.end method

.method static synthetic access$1300(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->useNonStandardStacks:Z

    return p0
.end method

.method static synthetic access$1400(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method static synthetic access$1500(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method static synthetic access$1600(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposeOneTreatment:Z

    return p0
.end method

.method static synthetic access$1700(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherCC:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method static synthetic access$1900(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method static synthetic access$200(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->updated:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$2000(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method static synthetic access$2100(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method static synthetic access$2200(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method static synthetic access$2300(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method static synthetic access$2400(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method static synthetic access$2500(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherRestrictions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I
    .registers 1

    iget p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpId:I

    return p0
.end method

.method static synthetic access$400(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I
    .registers 1

    iget p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpVersion:I

    return p0
.end method

.method static synthetic access$500(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I
    .registers 1

    iget p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentScreen:I

    return p0
.end method

.method static synthetic access$600(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I
    .registers 1

    iget p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorListVersion:I

    return p0
.end method

.method static synthetic access$800(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method static synthetic access$900(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;
    .registers 1

    iget-object p0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method private validateString(Ljava/lang/String;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength()I

    move-result p2

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CHAR:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength()I

    move-result v1

    div-int/2addr p2, v1

    if-ne v0, p2, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be length 2 but is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private validateVersion(I)I
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/4 v0, 0x2

    if-gt p1, v0, :cond_7

    return p1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAllowedVendors(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addAllowedVendors(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addCustomPurposesConsent(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addCustomPurposesConsent(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addCustomPurposesLITransparency(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addCustomPurposesLITransparency(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addDisclosedVendors(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addDisclosedVendors(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addPubPurposesConsent(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addPubPurposesConsent(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addPubPurposesLITransparency(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addPubPurposesLITransparency(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addPublisherRestrictionEntry(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherRestrictions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPublisherRestrictionEntry(Ljava/util/Collection;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;",
            ">;)",
            "Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherRestrictions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addPublisherRestrictionEntry([Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->addPublisherRestrictionEntry(Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-object p0
.end method

.method public addPurposesConsent(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addPurposesConsent(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addPurposesLITransparency(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addPurposesLITransparency(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addSpecialFeatureOptIns(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addSpecialFeatureOptIns(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addVendorConsent(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addVendorConsent(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addVendorLegitimateInterest(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public addVendorLegitimateInterest(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public clearAllowedVendors()Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->clear()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public clearCustomPurposesConsent()Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->clear()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public clearCustomPurposesLITransparency()Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->clear()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public clearDisclosedVendors()Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->clear()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public clearPubPurposesConsent()Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->clear()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public clearPubPurposesLITransparency()Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->pubPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->clear()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public clearPublisherRestrictionEntry()Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public clearPurposesConsent()Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->clear()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public clearPurposesLITransparency()Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->clear()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public clearSpecialFeatureOptIns()Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->clear()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public clearVendorConsent()Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorConsent:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->clear()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public clearVendorLegitimateInterest()Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->clear()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    return-object p0
.end method

.method public cmpId(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iput p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpId:I

    return-object p0
.end method

.method public cmpVersion(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iput p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->cmpVersion:I

    return-object p0
.end method

.method public consentLanguage(Ljava/lang/String;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CONSENT_LANGUAGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-direct {p0, p1, v0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->validateString(Ljava/lang/String;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public consentScreen(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iput p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->consentScreen:I

    return-object p0
.end method

.method public created(Ljava/util/Date;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->created:Ljava/util/Date;

    return-object p0
.end method

.method public defaultConsent(Z)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iput-boolean p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->defaultConsent:Z

    return-object p0
.end method

.method public encode()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->version:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    new-instance v0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;-><init>(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)V

    invoke-virtual {v0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;-><init>(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;Lio/didomi/iabtcf/encoder/TCStringEncoder$1;)V

    invoke-virtual {v0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isServiceSpecific(Z)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iput-boolean p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->isServiceSpecific:Z

    return-object p0
.end method

.method public lastUpdated(Ljava/util/Date;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->updated:Ljava/util/Date;

    return-object p0
.end method

.method public publisherCC(Ljava/lang/String;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PUBLISHER_CC:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-direct {p0, p1, v0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->validateString(Ljava/lang/String;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->publisherCC:Ljava/lang/String;

    return-object p0
.end method

.method public purposeOneTreatment(Z)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iput-boolean p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->purposeOneTreatment:Z

    return-object p0
.end method

.method public tcfPolicyVersion(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iput p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->tcfPolicyVersion:I

    return-object p0
.end method

.method public toTCString()Lio/didomi/iabtcf/decoder/TCString;
    .registers 3

    invoke-virtual {p0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->encode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/didomi/iabtcf/decoder/DecoderOption;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/TCString$Util;->decode(Ljava/lang/String;[Lio/didomi/iabtcf/decoder/DecoderOption;)Lio/didomi/iabtcf/decoder/TCString;

    move-result-object v0

    return-object v0
.end method

.method public useNonStandardStacks(Z)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iput-boolean p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->useNonStandardStacks:Z

    return-object p0
.end method

.method public vendorListVersion(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    iput p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->vendorListVersion:I

    return-object p0
.end method

.method public version(I)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->validateVersion(I)I

    move-result p1

    iput p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->version:I

    return-object p0
.end method

###### Class io.didomi.iabtcf.encoder.TCStringEncoder.TCStringEncoderV1 (io.didomi.iabtcf.encoder.TCStringEncoder$TCStringEncoderV1)
.class public Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;
.super Ljava/lang/Object;
.source "TCStringEncoder.java"

# interfaces
.implements Lio/didomi/iabtcf/encoder/TCStringEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/encoder/TCStringEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TCStringEncoderV1"
.end annotation


# instance fields
.field private final cmpId:I

.field private final cmpVersion:I

.field private final consentLanguage:Ljava/lang/String;

.field private final consentScreen:I

.field private final created:Ljava/util/Date;

.field private final defaultConsent:Z

.field private final purposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final updated:Ljava/util/Date;

.field private final vendorListVersion:I

.field private final vendorsConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final version:I


# direct methods
.method public constructor <init>(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$000(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_55

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$000(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->version:I

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$100(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->created:Ljava/util/Date;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$200(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->updated:Ljava/util/Date;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$300(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->cmpId:I

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$400(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->cmpVersion:I

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$500(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->consentScreen:I

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$600(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->consentLanguage:Ljava/lang/String;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$700(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->vendorListVersion:I

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$800(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$900(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->vendorsConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$1000(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->defaultConsent:Z

    return-void

    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version must be 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$000(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .registers 5

    new-instance v0, Lio/didomi/iabtcf/encoder/BitWriter;

    invoke-direct {v0}, Lio/didomi/iabtcf/encoder/BitWriter;-><init>()V

    iget v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->version:I

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->created:Ljava/util/Date;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CREATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Ljava/util/Date;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->updated:Ljava/util/Date;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_LAST_UPDATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Ljava/util/Date;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->cmpId:I

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CMP_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->cmpVersion:I

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CMP_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->consentScreen:I

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CONSENT_SCREEN:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->consentLanguage:Ljava/lang/String;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CONSENT_LANGUAGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Ljava/lang/String;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->vendorListVersion:I

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_LIST_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PURPOSES_ALLOW:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/decoder/utils/IntIterable;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    new-instance v1, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    invoke-direct {v1}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;-><init>()V

    iget-boolean v2, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->defaultConsent:Z

    invoke-virtual {v1, v2}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->defaultConsent(Z)Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->vendorsConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-virtual {v1, v2}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->buildV1()Lio/didomi/iabtcf/encoder/BitWriter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/encoder/BitWriter;)V

    invoke-virtual {v0}, Lio/didomi/iabtcf/encoder/BitWriter;->toBase64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTCString()Lio/didomi/iabtcf/decoder/TCString;
    .registers 3

    invoke-virtual {p0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;->encode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/didomi/iabtcf/decoder/DecoderOption;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/TCString$Util;->decode(Ljava/lang/String;[Lio/didomi/iabtcf/decoder/DecoderOption;)Lio/didomi/iabtcf/decoder/TCString;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.iabtcf.encoder.TCStringEncoder.TCStringEncoderV2 (io.didomi.iabtcf.encoder.TCStringEncoder$TCStringEncoderV2)
.class public Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;
.super Ljava/lang/Object;
.source "TCStringEncoder.java"

# interfaces
.implements Lio/didomi/iabtcf/encoder/TCStringEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/encoder/TCStringEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TCStringEncoderV2"
.end annotation


# instance fields
.field private final allowedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final cmpId:I

.field private final cmpVersion:I

.field private final consentLanguage:Ljava/lang/String;

.field private final consentScreen:I

.field private final created:Ljava/util/Date;

.field private final customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final disclosedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final isServiceSpecific:Z

.field private final numberOfCustomPurposes:I

.field private final pubPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final pubPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final publisherCC:Ljava/lang/String;

.field private final publisherRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final purposeOneTreatment:Z

.field private final purposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final tcfPolicyVersion:I

.field private final updated:Ljava/util/Date;

.field private final useNonStandardStacks:Z

.field private final vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final vendorListVersion:I

.field private final vendorsConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final version:I


# direct methods
.method private constructor <init>(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$000(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_164

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$000(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result v0

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CMP_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(ILio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->version:I

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$200(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Util;->truncateDateAtDayLevel(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->created:Ljava/util/Date;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$200(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Util;->truncateDateAtDayLevel(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->updated:Ljava/util/Date;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$300(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result v0

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CMP_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v2}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(ILio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->cmpId:I

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$400(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result v0

    invoke-static {v0, v1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(ILio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->cmpVersion:I

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$500(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result v0

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CONSENT_SCREEN:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(ILio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->consentScreen:I

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$600(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->consentLanguage:Ljava/lang/String;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$700(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result v0

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_LIST_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(ILio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->vendorListVersion:I

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$800(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBoundsBits(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$900(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->vendorsConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$1100(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result v0

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_TCF_POLICY_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v2}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(ILio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->tcfPolicyVersion:I

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$1200(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->isServiceSpecific:Z

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$1300(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->useNonStandardStacks:Z

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$1400(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_SPECIAL_FEATURE_OPT_INS:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v2}, Lio/didomi/iabtcf/encoder/Bounds;->checkBoundsBits(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$1500(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v2}, Lio/didomi/iabtcf/encoder/Bounds;->checkBoundsBits(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$1600(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->purposeOneTreatment:Z

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$1700(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->publisherCC:Ljava/lang/String;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$1800(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-static {v0, v1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$1900(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-static {v0, v1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$2000(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-static {v0, v1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$2100(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_PUB_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBoundsBits(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->pubPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$2200(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_PUB_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBoundsBits(Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->pubPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$2300(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->max()I

    move-result v0

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$2400(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->max()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_NUM_CUSTOM_PURPOSES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(ILio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->numberOfCustomPurposes:I

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$2300(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$2400(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$2500(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lio/didomi/iabtcf/encoder/Bounds;->checkBounds(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->publisherRestrictions:Ljava/util/List;

    return-void

    :cond_164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version must be 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;->access$000(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;Lio/didomi/iabtcf/encoder/TCStringEncoder$1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;-><init>(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)V

    return-void
.end method

.method private encodeAllowedVendors()Ljava/lang/String;
    .registers 2

    sget-object v0, Lio/didomi/iabtcf/decoder/v2/SegmentType;->ALLOWED_VENDOR:Lio/didomi/iabtcf/decoder/v2/SegmentType;

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->encodeSegment(Lio/didomi/iabtcf/decoder/v2/SegmentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeCoreString()Ljava/lang/String;
    .registers 7

    new-instance v0, Lio/didomi/iabtcf/encoder/BitWriter;

    invoke-direct {v0}, Lio/didomi/iabtcf/encoder/BitWriter;-><init>()V

    iget v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->version:I

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->created:Ljava/util/Date;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CREATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Ljava/util/Date;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->updated:Ljava/util/Date;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_LAST_UPDATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Ljava/util/Date;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->cmpId:I

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CMP_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->cmpVersion:I

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CMP_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->consentScreen:I

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CONSENT_SCREEN:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->consentLanguage:Ljava/lang/String;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CONSENT_LANGUAGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Ljava/lang/String;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->vendorListVersion:I

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_LIST_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->tcfPolicyVersion:I

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_TCF_POLICY_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-boolean v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->isServiceSpecific:Z

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_IS_SERVICE_SPECIFIC:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(ZLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-boolean v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->useNonStandardStacks:Z

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_USE_NON_STANDARD_STOCKS:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(ZLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->specialFeatureOptIns:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_SPECIAL_FEATURE_OPT_INS:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/decoder/utils/IntIterable;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/decoder/utils/IntIterable;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/decoder/utils/IntIterable;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-boolean v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->purposeOneTreatment:Z

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSE_ONE_TREATMENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(ZLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->publisherCC:Ljava/lang/String;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PUBLISHER_CC:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Ljava/lang/String;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    new-instance v1, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    invoke-direct {v1}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;-><init>()V

    iget-object v2, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->vendorsConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-virtual {v1, v2}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->build()Lio/didomi/iabtcf/encoder/BitWriter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/encoder/BitWriter;)V

    new-instance v1, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    invoke-direct {v1}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;-><init>()V

    iget-object v2, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->vendorLegitimateInterest:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-virtual {v1, v2}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->build()Lio/didomi/iabtcf/encoder/BitWriter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/encoder/BitWriter;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->publisherRestrictions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_NUM_PUB_RESTRICTION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->publisherRestrictions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;

    invoke-virtual {v2}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->getPurposeId()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PURPOSE_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v3, v4, v5}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    invoke-virtual {v2}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->getRestrictionType()Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->RESTRICTION_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v3, v4, v5}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    new-instance v3, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    invoke-direct {v3}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->emitRangeEncoding(Z)Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->emitMaxVendorId(Z)Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->emitIsRangeEncoding(Z)Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    move-result-object v3

    invoke-virtual {v2}, Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;->getVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->build()Lio/didomi/iabtcf/encoder/BitWriter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/encoder/BitWriter;)V

    goto :goto_b1

    :cond_f8
    invoke-virtual {v0}, Lio/didomi/iabtcf/encoder/BitWriter;->toBase64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeDisclosedVendors()Ljava/lang/String;
    .registers 2

    sget-object v0, Lio/didomi/iabtcf/decoder/v2/SegmentType;->DISCLOSED_VENDOR:Lio/didomi/iabtcf/decoder/v2/SegmentType;

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->encodeSegment(Lio/didomi/iabtcf/decoder/v2/SegmentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodePPTC()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->pubPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/IntIterable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->pubPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/IntIterable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->numberOfCustomPurposes:I

    if-nez v0, :cond_17

    const-string v0, ""

    return-object v0

    :cond_17
    new-instance v0, Lio/didomi/iabtcf/encoder/BitWriter;

    invoke-direct {v0}, Lio/didomi/iabtcf/encoder/BitWriter;-><init>()V

    sget-object v1, Lio/didomi/iabtcf/decoder/v2/SegmentType;->PUBLISHER_TC:Lio/didomi/iabtcf/decoder/v2/SegmentType;

    invoke-virtual {v1}, Lio/didomi/iabtcf/decoder/v2/SegmentType;->value()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_SEGMENT_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->pubPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_PUB_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/decoder/utils/IntIterable;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->pubPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_PUB_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/decoder/utils/IntIterable;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->numberOfCustomPurposes:I

    int-to-long v1, v1

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_NUM_CUSTOM_PURPOSES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1, v2, v3}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    iget v2, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->numberOfCustomPurposes:I

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/decoder/utils/IntIterable;I)V

    iget-object v1, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    iget v2, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->numberOfCustomPurposes:I

    invoke-virtual {v0, v1, v2}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/decoder/utils/IntIterable;I)V

    invoke-virtual {v0}, Lio/didomi/iabtcf/encoder/BitWriter;->toBase64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeSegment(Lio/didomi/iabtcf/decoder/v2/SegmentType;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->EMPTY:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    sget-object v0, Lio/didomi/iabtcf/encoder/TCStringEncoder$1;->$SwitchMap$io$didomi$iabtcf$decoder$v2$SegmentType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    goto :goto_2c

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid segment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v0, p0, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    :goto_2c
    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/IntIterable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    const-string p1, ""

    return-object p1

    :cond_35
    new-instance v1, Lio/didomi/iabtcf/encoder/BitWriter;

    invoke-direct {v1}, Lio/didomi/iabtcf/encoder/BitWriter;-><init>()V

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/v2/SegmentType;->value()I

    move-result p1

    int-to-long v2, p1

    sget-object p1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->OOB_SEGMENT_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v1, v2, v3, p1}, Lio/didomi/iabtcf/encoder/BitWriter;->write(JLio/didomi/iabtcf/decoder/utils/FieldDefs;)V

    new-instance p1, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    invoke-direct {p1}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;-><init>()V

    invoke-virtual {p1, v0}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->add(Lio/didomi/iabtcf/decoder/utils/IntIterable;)Lio/didomi/iabtcf/encoder/VendorFieldEncoder;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/iabtcf/encoder/VendorFieldEncoder;->build()Lio/didomi/iabtcf/encoder/BitWriter;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/didomi/iabtcf/encoder/BitWriter;->write(Lio/didomi/iabtcf/encoder/BitWriter;)V

    invoke-virtual {v1}, Lio/didomi/iabtcf/encoder/BitWriter;->toBase64()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->encodeCoreString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->encodeDisclosedVendors()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-direct {p0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->encodeAllowedVendors()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-direct {p0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->encodePPTC()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2c

    if-eqz v3, :cond_44

    const/4 v3, 0x0

    goto :goto_49

    :cond_44
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_49
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTCString()Lio/didomi/iabtcf/decoder/TCString;
    .registers 3

    invoke-virtual {p0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;->encode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/didomi/iabtcf/decoder/DecoderOption;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/TCString$Util;->decode(Ljava/lang/String;[Lio/didomi/iabtcf/decoder/DecoderOption;)Lio/didomi/iabtcf/decoder/TCString;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.iabtcf.encoder.TCStringEncoder.Util (io.didomi.iabtcf.encoder.TCStringEncoder$Util)
.class public Lio/didomi/iabtcf/encoder/TCStringEncoder$Util;
.super Ljava/lang/Object;
.source "TCStringEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/encoder/TCStringEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 1

    new-instance v0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    invoke-direct {v0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;-><init>()V

    return-object v0
.end method

.method public static newBuilder(Lio/didomi/iabtcf/decoder/TCString;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;-><init>(Lio/didomi/iabtcf/decoder/TCString;)V

    return-object v0
.end method

.method public static newBuilder(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;
    .registers 3

    new-instance v0, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;-><init>(Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;Lio/didomi/iabtcf/encoder/TCStringEncoder$1;)V

    return-object v0
.end method

.method public static truncateDateAtDayLevel(Ljava/util/Date;)Ljava/util/Date;
    .registers 3

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xb

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method
