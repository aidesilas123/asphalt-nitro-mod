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
