###### Class io.didomi.iabtcf.decoder.PPCString (io.didomi.iabtcf.decoder.PPCString)
.class public Lio/didomi/iabtcf/decoder/PPCString;
.super Ljava/lang/Object;
.source "PPCString.java"


# instance fields
.field private final bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;


# direct methods
.method private constructor <init>(Lio/didomi/iabtcf/decoder/utils/BitReader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/iabtcf/decoder/PPCString;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    return-void
.end method

.method public static decode(Ljava/lang/String;)Lio/didomi/iabtcf/decoder/PPCString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lio/didomi/iabtcf/decoder/exceptions/ByteParseException;,
            Lio/didomi/iabtcf/decoder/exceptions/UnsupportedVersionException;
        }
    .end annotation

    invoke-static {}, Lio/didomi/iabtcf/decoder/utils/Base64;->getUrlDecoder()Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/didomi/iabtcf/decoder/utils/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Lio/didomi/iabtcf/decoder/PPCString;

    new-instance v1, Lio/didomi/iabtcf/decoder/utils/BitReader;

    invoke-direct {v1, p0}, Lio/didomi/iabtcf/decoder/utils/BitReader;-><init>([B)V

    invoke-direct {v0, v1}, Lio/didomi/iabtcf/decoder/PPCString;-><init>(Lio/didomi/iabtcf/decoder/utils/BitReader;)V

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
    check-cast p1, Lio/didomi/iabtcf/decoder/PPCString;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getVersion()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/PPCString;->getVersion()I

    move-result v3

    if-ne v2, v3, :cond_a4

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/PPCString;->getCreated()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getLastUpdated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/PPCString;->getLastUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getCmpId()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/PPCString;->getCmpId()I

    move-result v3

    if-ne v2, v3, :cond_a4

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getCmpVersion()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/PPCString;->getCmpVersion()I

    move-result v3

    if-ne v2, v3, :cond_a4

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getConsentScreen()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/PPCString;->getConsentScreen()I

    move-result v3

    if-ne v2, v3, :cond_a4

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getConsentLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/PPCString;->getConsentLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getVendorListVersion()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/PPCString;->getVendorListVersion()I

    move-result v3

    if-ne v2, v3, :cond_a4

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getPublisherPurposesVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/PPCString;->getPublisherPurposesVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getStandardPurposesAllowed()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/PPCString;->getStandardPurposesAllowed()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v3

    invoke-static {v2, v3}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getCustomPurposesBitField()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/iabtcf/decoder/PPCString;->getCustomPurposesBitField()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object p1

    invoke-static {v2, p1}, Lio/didomi/iabtcf/decoder/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a4

    goto :goto_a5

    :cond_a4
    const/4 v0, 0x0

    :goto_a5
    return v0
.end method

.method public getCmpId()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/PPCString;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CMP_ID:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    return v0
.end method

.method public getCmpVersion()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/PPCString;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CMP_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    return v0
.end method

.method public getConsentLanguage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/PPCString;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CONSENT_LANGUAGE:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readStr2(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsentScreen()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/PPCString;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CONSENT_SCREEN:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits6(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)B

    move-result v0

    return v0
.end method

.method public getCreated()Ljava/util/Date;
    .registers 6

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/PPCString;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_CREATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v1, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits36(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getCustomPurposesBitField()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/PPCString;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PPC_CUSTOM_PURPOSES_BITFIELD:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillBitSet(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdated()Ljava/util/Date;
    .registers 6

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/PPCString;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v2, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_LAST_UPDATED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v1, v2}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits36(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getPublisherPurposesVersion()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/PPCString;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PPC_PUBLISHER_PURPOSES_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    return v0
.end method

.method public getStandardPurposesAllowed()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/PPCString;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_PPC_STANDARD_PURPOSES_ALLOWED:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-static {v0, v1}, Lio/didomi/iabtcf/decoder/TCStringV2;->fillBitSet(Lio/didomi/iabtcf/decoder/utils/BitReader;Lio/didomi/iabtcf/decoder/utils/FieldDefs;)Lio/didomi/iabtcf/decoder/utils/BitSetIntIterable;

    move-result-object v0

    return-object v0
.end method

.method public getVendorListVersion()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/PPCString;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VENDOR_LIST_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits12(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .registers 3

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/PPCString;->bbv:Lio/didomi/iabtcf/decoder/utils/BitReader;

    sget-object v1, Lio/didomi/iabtcf/decoder/utils/FieldDefs;->V1_VERSION:Lio/didomi/iabtcf/decoder/utils/FieldDefs;

    invoke-virtual {v0, v1}, Lio/didomi/iabtcf/decoder/utils/BitReader;->readBits6(Lio/didomi/iabtcf/decoder/utils/FieldDefs;)B

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getCreated()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getLastUpdated()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getCmpId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getCmpVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getConsentScreen()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getConsentLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getVendorListVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getPublisherPurposesVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getStandardPurposesAllowed()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getCustomPurposesBitField()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PPCString [getVersion()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getCreated()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getLastUpdated()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getLastUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getCmpId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getCmpId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getCmpVersion()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getCmpVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getConsentScreen()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getConsentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getConsentLanguage()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getConsentLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getVendorListVersion()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getVendorListVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getPublisherPurposesVersion()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getPublisherPurposesVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getStandardPurposesAllowed()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getStandardPurposesAllowed()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getCustomPurposesBitField()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/PPCString;->getCustomPurposesBitField()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
