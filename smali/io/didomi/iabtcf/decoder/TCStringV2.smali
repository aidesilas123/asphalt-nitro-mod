###### Class io.didomi.iabtcf.decoder.TCStringV2 (io.didomi.iabtcf.decoder.TCStringV2)
.class Lio/didomi/iabtcf/decoder/TCStringV2;
.super Ljava/lang/Object;
.source "TCStringV2.java"

# interfaces
.implements Lio/didomi/iabtcf/decoder/TCString;


# instance fields
.field private allowedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

.field private final cache:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
            ">;"
        }
    .end annotation
.end field

.field private consentLanguage:Ljava/lang/String;

.field private consentManagerProviderId:I

.field private consentManagerProviderVersion:I

.field private consentRecordCreated:Ljava/util/Date;

.field private consentRecordLastUpdated:Ljava/util/Date;

.field private consentScreen:I

.field private customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private disclosedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private isPurposeOneTreatment:Z

.field private isServiceSpecific:Z

.field private policyVersion:I

.field private publisherCountryCode:Ljava/lang/String;

.field private publisherPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private publisherPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private publisherRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;",
            ">;"
        }
    .end annotation
.end field

.field private purposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private final remainingVectors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/didomi/iabtcf/decoder/utils/BitReader;",
            ">;"
        }
    .end annotation
.end field

.field private specialFeaturesOptInts:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private useNonStandardStacks:Z

.field private vendorConsents:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private vendorLegitimateInterests:Lio/didomi/iabtcf/decoder/utils/IntIterable;

.field private vendorListVersion:I

.field private version:I


# direct methods
.method private constructor <init>(Lio/didomi/iabtcf/decoder/utils/BitReader;)V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-direct {p0, p1, v0}, Lio/didomi/iabtcf/decoder/TCStringV2;-><init>(Lio/didomi/iabtcf/decoder/utils/BitReader;[Lio/didomi/iabtcf/decoder/utils/BitReader;)V

    return-void
.end method

.method private varargs constructor <init>(Lio/didomi/iabtcf/decoder/utils/BitReader;[Lio/didomi/iabtcf/decoder/utils/BitReader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->remainingVectors:Ljava/util/Collection;

    return-void
.end method

.method static fillBitSet(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;
    .registers 6

    invoke-virtual {p1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v0

    invoke-virtual {p1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result p1

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->newBuilder()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    move-result-object v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, p1, :cond_1f

    add-int v3, v0, v2

    invoke-virtual {p0, v3}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->add(I)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1f
    invoke-virtual {v1}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable$Builder;->build()Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object p0

    return-object p0
.end method

.method private fillPublisherRestrictions(Ljava/util/List;ILio/didomi/iabtcf/decoder/utils/BitReader;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;",
            ">;I",
            "Lio/didomi/iabtcf/decoder/utils/BitReader;",
            ")I"
        }
    .end annotation

    invoke-virtual {p3, p2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(I)I

    move-result v0

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->NUM_ENTRIES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v1, p3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v1

    add-int/2addr p2, v1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_41

    invoke-virtual {p3, p2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits6(I)B

    move-result v2

    sget-object v3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PURPOSE_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v3, p3}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v3

    add-int/2addr p2, v3

    invoke-virtual {p3, p2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits2(I)B

    move-result v3

    add-int/lit8 p2, p2, 0x2

    invoke-static {v3}, Lio/didomi/iabtcf/decoder/v2/RestrictionType;->from(I)Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    move-result-object v3

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Optional;->empty()Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object v5

    iget-object v6, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-static {v6, v4, p2, v5}, Lio/didomi/iabtcf/decoder/TCStringV2;->vendorIdsFromRange(Lio/didomi/iabtcf/decoder/utils/BitReader;Ljava/util/BitSet;ILio/didomi/iabtcf/decoder/utils/Optional;)I

    move-result p2

    new-instance v5, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;

    invoke-static {v4}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->from(Ljava/util/BitSet;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v4

    invoke-direct {v5, v2, v3, v4}, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;-><init>(ILio/didomi/iabtcf/decoder/v2/RestrictionType;Lio/didomi/iabtcf/decoder/utils/IntIterable;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_41
    return p2
.end method

.method static fillVendors(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;
    .registers 6

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits16(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v1

    invoke-virtual {p1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getEnd(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v2

    invoke-virtual {p0, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {p1}, Lio/didomi/iabtcf/decoder/utils/Optional;->of(Ljava/lang/Object;)Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p1

    invoke-static {p0, v0, p2, p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->vendorIdsFromRange(Lio/didomi/iabtcf/decoder/utils/BitReader;Ljava/util/BitSet;Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/Optional;)V

    goto :goto_31

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    if-ge p1, v1, :cond_31

    invoke-virtual {p2, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :cond_2e
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    :cond_31
    :goto_31
    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->from(Ljava/util/BitSet;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs fromBitVector(Lio/didomi/iabtcf/decoder/utils/BitReader;[Lio/didomi/iabtcf/decoder/utils/BitReader;)Lio/didomi/iabtcf/decoder/TCStringV2;
    .registers 3

    new-instance v0, Lio/didomi/iabtcf/decoder/TCStringV2;

    invoke-direct {v0, p0, p1}, Lio/didomi/iabtcf/decoder/TCStringV2;-><init>(Lio/didomi/iabtcf/decoder/utils/BitReader;[Lio/didomi/iabtcf/decoder/utils/BitReader;)V

    return-object v0
.end method

.method private getSegment(Lio/didomi/iabtcf/decoder/v2/SegmentType;)Lio/didomi/iabtcf/decoder/utils/BitReader;
    .registers 5

    sget-object v0, Lio/didomi/iabtcf/decoder/v2/SegmentType;->DEFAULT:Lio/didomi/iabtcf/decoder/v2/SegmentType;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    return-object p1

    :cond_7
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->remainingVectors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->OOB_SEGMENT_TYPE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v1, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits3(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)B

    move-result v2

    invoke-static {v2}, Lio/didomi/iabtcf/decoder/v2/SegmentType;->from(I)Lio/didomi/iabtcf/decoder/v2/SegmentType;

    move-result-object v2

    if-ne p1, v2, :cond_d

    return-object v1

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method static vendorIdsFromRange(Lio/didomi/iabtcf/decoder/utils/BitReader;Ljava/util/BitSet;ILio/didomi/iabtcf/decoder/utils/Optional;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/iabtcf/decoder/utils/BitReader;",
            "Ljava/util/BitSet;",
            "I",
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(I)I

    move-result v0

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->NUM_ENTRIES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v1, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v1

    add-int/2addr p2, v1

    new-instance v1, Lio/didomi/iabtcf/decoder/TCStringV2$1;

    invoke-direct {v1, p0}, Lio/didomi/iabtcf/decoder/TCStringV2$1;-><init>(Lio/didomi/iabtcf/decoder/utils/BitReader;)V

    invoke-virtual {p3, v1}, Lio/didomi/iabtcf/decoder/utils/Optional;->map(Lio/didomi/iabtcf/decoder/utils/function/Function;)Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p3

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lio/didomi/iabtcf/decoder/utils/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v0, :cond_8c

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, p2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(I)Z

    move-result p2

    invoke-virtual {p0, v3}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits16(I)I

    move-result v4

    sget-object v5, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->START_OR_ONLY_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v5, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v6

    add-int/2addr v3, v6

    if-eqz p2, :cond_85

    invoke-virtual {p0, v3}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits16(I)I

    move-result p2

    invoke-virtual {v5, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getLength(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-gt v4, p2, :cond_6b

    if-gt p2, p3, :cond_51

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v4, p2}, Ljava/util/BitSet;->set(II)V

    goto :goto_88

    :cond_51
    new-instance p0, Lio/didomi/iabtcf/decoder/exceptions/InvalidRangeFieldException;

    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v6

    const-string p2, "end vendor id (%d) is greater than max (%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/didomi/iabtcf/decoder/exceptions/InvalidRangeFieldException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6b
    new-instance p0, Lio/didomi/iabtcf/decoder/exceptions/InvalidRangeFieldException;

    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v6

    const-string p2, "start vendor id (%d) is greater than endVendorId (%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/didomi/iabtcf/decoder/exceptions/InvalidRangeFieldException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    :goto_88
    move p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_8c
    return p2
.end method

.method static vendorIdsFromRange(Lio/didomi/iabtcf/decoder/utils/BitReader;Ljava/util/BitSet;Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/Optional;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/iabtcf/decoder/utils/BitReader;",
            "Ljava/util/BitSet;",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
            "Lio/didomi/iabtcf/decoder/utils/Optional<",
            "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2, p0}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Lio/didomi/iabtcf/decoder/TCStringV2;->vendorIdsFromRange(Lio/didomi/iabtcf/decoder/utils/BitReader;Ljava/util/BitSet;ILio/didomi/iabtcf/decoder/utils/Optional;)I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    check-cast p1, Lio/didomi/iabtcf/decoder/TCStringV2;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getAllowedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getAllowedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getConsentLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getConsentLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCmpId()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCmpId()I

    move-result v3

    if-ne v2, v3, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCmpVersion()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCmpVersion()I

    move-result v3

    if-ne v2, v3, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCreated()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getLastUpdated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getLastUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getConsentScreen()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getConsentScreen()I

    move-result v3

    if-ne v2, v3, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCustomPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCustomPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCustomPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCustomPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getDisclosedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getDisclosedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPurposeOneTreatment()Z

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPurposeOneTreatment()Z

    move-result v3

    if-ne v2, v3, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->isServiceSpecific()Z

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->isServiceSpecific()Z

    move-result v3

    if-ne v2, v3, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getTcfPolicyVersion()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getTcfPolicyVersion()I

    move-result v3

    if-ne v2, v3, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPublisherCC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPublisherCC()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPubPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPubPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPubPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPubPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPublisherRestrictions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPublisherRestrictions()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getSpecialFeatureOptIns()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getSpecialFeatureOptIns()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getUseNonStandardStacks()Z

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getUseNonStandardStacks()Z

    move-result v3

    if-ne v2, v3, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVendorConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVendorConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVendorLegitimateInterest()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVendorLegitimateInterest()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVendorListVersion()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVendorListVersion()I

    move-result v3

    if-ne v2, v3, :cond_150

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVersion()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVersion()I

    move-result p1

    if-ne v2, p1, :cond_150

    goto :goto_151

    :cond_150
    const/4 v0, 0x0

    :goto_151
    return v0
.end method

.method public getAllowedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 4

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->AV_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->EMPTY:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    sget-object v0, Lio/didomi/iabtcf/decoder/v2/SegmentType;->ALLOWED_VENDOR:Lio/didomi/iabtcf/decoder/v2/SegmentType;

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getSegment(Lio/didomi/iabtcf/decoder/v2/SegmentType;)Lio/didomi/iabtcf/decoder/utils/BitReader;

    move-result-object v0

    if-eqz v0, :cond_1e

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->AV_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v2, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillVendors(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    :cond_1e
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->allowedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object v0
.end method

.method public getCmpId()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CMP_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    int-to-short v0, v0

    iput v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->consentManagerProviderId:I

    :cond_13
    iget v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->consentManagerProviderId:I

    return v0
.end method

.method public getCmpVersion()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CMP_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    int-to-short v0, v0

    iput v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->consentManagerProviderVersion:I

    :cond_13
    iget v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->consentManagerProviderVersion:I

    return v0
.end method

.method public getConsentLanguage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CONSENT_LANGUAGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readStr2(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->consentLanguage:Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->consentLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentScreen()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CONSENT_SCREEN:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits6(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)B

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->consentScreen:I

    :cond_12
    iget v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->consentScreen:I

    return v0
.end method

.method public getCreated()Ljava/util/Date;
    .registers 6

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_CREATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v2, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits36(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->consentRecordCreated:Ljava/util/Date;

    :cond_1b
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->consentRecordCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getCustomPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_CUSTOM_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->EMPTY:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    sget-object v0, Lio/didomi/iabtcf/decoder/v2/SegmentType;->PUBLISHER_TC:Lio/didomi/iabtcf/decoder/v2/SegmentType;

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getSegment(Lio/didomi/iabtcf/decoder/v2/SegmentType;)Lio/didomi/iabtcf/decoder/utils/BitReader;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillBitSet(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    :cond_1c
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->customPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object v0
.end method

.method public getCustomPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_CUSTOM_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->EMPTY:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    sget-object v0, Lio/didomi/iabtcf/decoder/v2/SegmentType;->PUBLISHER_TC:Lio/didomi/iabtcf/decoder/v2/SegmentType;

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getSegment(Lio/didomi/iabtcf/decoder/v2/SegmentType;)Lio/didomi/iabtcf/decoder/utils/BitReader;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillBitSet(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    :cond_1c
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->customPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object v0
.end method

.method public getDefaultVendorConsent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDisclosedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 4

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->DV_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->EMPTY:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    sget-object v0, Lio/didomi/iabtcf/decoder/v2/SegmentType;->DISCLOSED_VENDOR:Lio/didomi/iabtcf/decoder/v2/SegmentType;

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getSegment(Lio/didomi/iabtcf/decoder/v2/SegmentType;)Lio/didomi/iabtcf/decoder/utils/BitReader;

    move-result-object v0

    if-eqz v0, :cond_1e

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->DV_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v2, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillVendors(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    :cond_1e
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->disclosedVendors:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object v0
.end method

.method public getLastUpdated()Ljava/util/Date;
    .registers 6

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_LAST_UPDATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v2, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits36(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->consentRecordLastUpdated:Ljava/util/Date;

    :cond_1b
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->consentRecordLastUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public getPubPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_PUB_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->EMPTY:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->publisherPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    sget-object v0, Lio/didomi/iabtcf/decoder/v2/SegmentType;->PUBLISHER_TC:Lio/didomi/iabtcf/decoder/v2/SegmentType;

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getSegment(Lio/didomi/iabtcf/decoder/v2/SegmentType;)Lio/didomi/iabtcf/decoder/utils/BitReader;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillBitSet(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->publisherPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    :cond_1c
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->publisherPurposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object v0
.end method

.method public getPubPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->PPTC_PUB_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->EMPTY:Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->publisherPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    sget-object v0, Lio/didomi/iabtcf/decoder/v2/SegmentType;->PUBLISHER_TC:Lio/didomi/iabtcf/decoder/v2/SegmentType;

    invoke-direct {p0, v0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getSegment(Lio/didomi/iabtcf/decoder/v2/SegmentType;)Lio/didomi/iabtcf/decoder/utils/BitReader;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillBitSet(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->publisherPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    :cond_1c
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->publisherPurposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object v0
.end method

.method public getPublisherCC()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PUBLISHER_CC:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readStr2(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->publisherCountryCode:Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->publisherCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherRestrictions()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PUB_RESTRICTION_ENTRY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->publisherRestrictions:Ljava/util/List;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_NUM_PUB_RESTRICTION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v1, v2}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v1

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-direct {p0, v0, v1, v2}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillPublisherRestrictions(Ljava/util/List;ILio/didomi/iabtcf/decoder/utils/BitReader;)I

    :cond_1e
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->publisherRestrictions:Ljava/util/List;

    return-object v0
.end method

.method public getPurposeOneTreatment()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSE_ONE_TREATMENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Z

    move-result v0

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->isPurposeOneTreatment:Z

    :cond_12
    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->isPurposeOneTreatment:Z

    return v0
.end method

.method public getPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSES_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillBitSet(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    :cond_12
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->purposesConsent:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object v0
.end method

.method public getPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_PURPOSES_LI_TRANSPARENCY:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillBitSet(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    :cond_12
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->purposesLITransparency:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object v0
.end method

.method public getSpecialFeatureOptIns()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_SPECIAL_FEATURE_OPT_INS:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillBitSet(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->specialFeaturesOptInts:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    :cond_12
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->specialFeaturesOptInts:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object v0
.end method

.method public getTcfPolicyVersion()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_TCF_POLICY_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits6(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)B

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->policyVersion:I

    :cond_12
    iget v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->policyVersion:I

    return v0
.end method

.method public getUseNonStandardStacks()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_USE_NON_STANDARD_STOCKS:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Z

    move-result v0

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->useNonStandardStacks:Z

    :cond_12
    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->useNonStandardStacks:Z

    return v0
.end method

.method public getVendorConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 4

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v2, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillVendors(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->vendorConsents:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    :cond_14
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->vendorConsents:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object v0
.end method

.method public getVendorLegitimateInterest()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 4

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_LI_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_LI_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v2, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillVendors(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->vendorLegitimateInterests:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    :cond_14
    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->vendorLegitimateInterests:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object v0
.end method

.method public getVendorListVersion()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VENDOR_LIST_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    int-to-short v0, v0

    iput v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->vendorListVersion:I

    :cond_13
    iget v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->vendorListVersion:I

    return v0
.end method

.method public getVersion()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits6(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)B

    move-result v0

    iput v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->version:I

    :cond_12
    iget v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->version:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getAllowedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getConsentLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCmpId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCmpVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCreated()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getLastUpdated()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getConsentScreen()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCustomPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCustomPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getDisclosedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPurposeOneTreatment()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->isServiceSpecific()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getTcfPolicyVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPublisherCC()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPubPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPubPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPublisherRestrictions()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getSpecialFeatureOptIns()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getUseNonStandardStacks()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVendorConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVendorLegitimateInterest()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVendorListVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isServiceSpecific()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->cache:Ljava/util/EnumSet;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->CORE_IS_SERVICE_SPECIFIC:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Z

    move-result v0

    iput-boolean v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->isServiceSpecific:Z

    :cond_12
    iget-boolean v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2;->isServiceSpecific:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCStringV2 [getVersion()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getCreated()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getLastUpdated()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getLastUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getCmpId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCmpId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getCmpVersion()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCmpVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getConsentScreen()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getConsentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getConsentLanguage()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getConsentLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getVendorListVersion()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVendorListVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getTcfPolicyVersion()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getTcfPolicyVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isServiceSpecific()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->isServiceSpecific()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getUseNonStandardStacks()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getUseNonStandardStacks()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getSpecialFeatureOptIns()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getSpecialFeatureOptIns()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getPurposesConsent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getPurposesLITransparency()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getPurposeOneTreatment()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPurposeOneTreatment()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getPublisherCC()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPublisherCC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getVendorConsent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVendorConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getVendorLegitimateInterest()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getVendorLegitimateInterest()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getPublisherRestrictions()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPublisherRestrictions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getDisclosedVendors()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getDisclosedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getAllowedVendors()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getAllowedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getPubPurposesConsent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPubPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getPubPurposesLITransparency()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getPubPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getCustomPurposesConsent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCustomPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getCustomPurposesLITransparency()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV2;->getCustomPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.iabtcf.decoder.TCStringV2.AnonymousClass1 (io.didomi.iabtcf.decoder.TCStringV2$1)
.class final Lio/didomi/iabtcf/decoder/TCStringV2$1;
.super Ljava/lang/Object;
.source "TCStringV2.java"

# interfaces
.implements Lio/didomi/iabtcf/decoder/utils/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/iabtcf/decoder/TCStringV2;->vendorIdsFromRange(Lio/didomi/iabtcf/decoder/utils/BitReader;Ljava/util/BitSet;ILio/didomi/iabtcf/decoder/utils/Optional;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/didomi/iabtcf/decoder/utils/function/Function<",
        "Lio/didomi/iabtcf/decoder/utils/FieldDefs;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;


# direct methods
.method constructor <init>(Lio/didomi/iabtcf/decoder/utils/BitReader;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/TCStringV2$1;->val$bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV2$1;->val$bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-virtual {v0, p1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits16(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {p0, p1}, Lio/didomi/iabtcf/decoder/TCStringV2$1;->apply(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
