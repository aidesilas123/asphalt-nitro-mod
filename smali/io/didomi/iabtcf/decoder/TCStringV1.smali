###### Class io.didomi.iabtcf.decoder.TCStringV1 (io.didomi.iabtcf.decoder.TCStringV1)
.class Lio/didomi/iabtcf/decoder/TCStringV1;
.super Ljava/lang/Object;
.source "TCStringV1.java"

# interfaces
.implements Lio/didomi/iabtcf/decoder/TCString;


# instance fields
.field private final bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;


# direct methods
.method private constructor <init>(Lio/didomi/iabtcf/decoder/utils/BitReader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/TCStringV1;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    return-void
.end method

.method private fillVendorsV1(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 7

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p1, p2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits16(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v1

    invoke-virtual {p2, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getEnd(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v2

    invoke-virtual {p1, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    sget-object p3, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_DEFAULT_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {p1, p3}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Z

    move-result p3

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_NUM_ENTRIES:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v2, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v2

    invoke-static {p2}, Lio/didomi/iabtcf/decoder/utils/Optional;->of(Ljava/lang/Object;)Lio/didomi/iabtcf/decoder/utils/Optional;

    move-result-object p2

    invoke-static {p1, v0, v2, p2}, Lio/didomi/iabtcf/decoder/TCStringV2;->vendorIdsFromRange(Lio/didomi/iabtcf/decoder/utils/BitReader;Ljava/util/BitSet;ILio/didomi/iabtcf/decoder/utils/Optional;)I

    if-eqz p3, :cond_44

    const/4 p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Ljava/util/BitSet;->flip(II)V

    goto :goto_44

    :cond_2e
    const/4 p2, 0x0

    :goto_2f
    if-ge p2, v1, :cond_44

    invoke-virtual {p3, p1}, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->getOffset(Lio/didomi/iabtcf/decoder/utils/BitReader;)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(I)Z

    move-result v2

    if-eqz v2, :cond_41

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :cond_41
    add-int/lit8 p2, p2, 0x1

    goto :goto_2f

    :cond_44
    :goto_44
    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;->from(Ljava/util/BitSet;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object p1

    return-object p1
.end method

.method public static fromBitVector(Lio/didomi/iabtcf/decoder/utils/BitReader;)Lio/didomi/iabtcf/decoder/TCStringV1;
    .registers 2

    new-instance v0, Lio/didomi/iabtcf/decoder/TCStringV1;

    invoke-direct {v0, p0}, Lio/didomi/iabtcf/decoder/TCStringV1;-><init>(Lio/didomi/iabtcf/decoder/utils/BitReader;)V

    return-object v0
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
    check-cast p1, Lio/didomi/iabtcf/decoder/TCStringV1;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getVersion()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV1;->getVersion()I

    move-result v3

    if-ne v2, v3, :cond_98

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV1;->getCreated()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getLastUpdated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV1;->getLastUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getCmpId()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV1;->getCmpId()I

    move-result v3

    if-ne v2, v3, :cond_98

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getCmpVersion()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV1;->getCmpVersion()I

    move-result v3

    if-ne v2, v3, :cond_98

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getConsentScreen()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV1;->getConsentScreen()I

    move-result v3

    if-ne v2, v3, :cond_98

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getConsentLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV1;->getConsentLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getVendorListVersion()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV1;->getVendorListVersion()I

    move-result v3

    if-ne v2, v3, :cond_98

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getVendorConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV1;->getVendorConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getDefaultVendorConsent()Z

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV1;->getDefaultVendorConsent()Z

    move-result v3

    if-ne v2, v3, :cond_98

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/TCStringV1;->getPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object p1

    invoke-static {v2, p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_98

    goto :goto_99

    :cond_98
    const/4 v0, 0x0

    :goto_99
    return v0
.end method

.method public getAllowedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCmpId()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV1;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CMP_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    return v0
.end method

.method public getCmpVersion()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV1;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CMP_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    return v0
.end method

.method public getConsentLanguage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV1;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CONSENT_LANGUAGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readStr2(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsentScreen()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV1;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CONSENT_SCREEN:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits6(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)B

    move-result v0

    return v0
.end method

.method public getCreated()Ljava/util/Date;
    .registers 6

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/TCStringV1;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CREATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v1, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits36(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getCustomPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCustomPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDefaultVendorConsent()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV1;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_IS_RANGE_ENCODING:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV1;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_DEFAULT_CONSENT:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits1(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public getDisclosedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLastUpdated()Ljava/util/Date;
    .registers 6

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/TCStringV1;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_LAST_UPDATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v1, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits36(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getPubPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPubPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPublisherCC()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPublisherRestrictions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPurposeOneTreatment()Z
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV1;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PURPOSES_ALLOW:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillBitSet(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    return-object v0
.end method

.method public getPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSpecialFeatureOptIns()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTcfPolicyVersion()I
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getUseNonStandardStacks()Z
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVendorConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 4

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV1;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_MAX_VENDOR_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_BITRANGE_FIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-direct {p0, v0, v1, v2}, Lio/didomi/iabtcf/decoder/TCStringV1;->fillVendorsV1(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v0

    return-object v0
.end method

.method public getVendorLegitimateInterest()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVendorListVersion()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV1;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_LIST_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/TCStringV1;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits6(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)B

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getCreated()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getLastUpdated()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getCmpId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getCmpVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getConsentScreen()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getConsentLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getVendorListVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getVendorConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getDefaultVendorConsent()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isServiceSpecific()Z
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TCStringV1 [getVersion()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getCreated()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getLastUpdated()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getLastUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getCmpId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getCmpId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getCmpVersion()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getCmpVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getConsentScreen()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getConsentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getConsentLanguage()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getConsentLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getVendorListVersion()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getVendorListVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getVendorConsent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getVendorConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getDefaultVendorConsent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getDefaultVendorConsent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getPurposesConsent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/TCStringV1;->getPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
