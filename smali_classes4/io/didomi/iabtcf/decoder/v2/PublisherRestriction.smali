###### Class io.didomi.iabtcf.decoder.v2.PublisherRestriction (io.didomi.iabtcf.decoder.v2.PublisherRestriction)
.class public Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;
.super Ljava/lang/Object;
.source "PublisherRestriction.java"


# instance fields
.field private final purposeId:I

.field private final restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

.field private final vendorIds:Lio/didomi/iabtcf/decoder/utils/IntIterable;


# direct methods
.method public constructor <init>(ILio/didomi/iabtcf/decoder/v2/RestrictionType;Lio/didomi/iabtcf/decoder/utils/IntIterable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lio/didomi/iabtcf/decoder/utils/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->purposeId:I

    iput-object p2, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    iput-object p3, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->vendorIds:Lio/didomi/iabtcf/decoder/utils/IntIterable;

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

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    :cond_12
    check-cast p1, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;

    iget v2, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->purposeId:I

    iget v3, p1, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->purposeId:I

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    iget-object v3, p1, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->vendorIds:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    iget-object p1, p1, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->vendorIds:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public getPurposeId()I
    .registers 2

    iget v0, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->purposeId:I

    return v0
.end method

.method public getRestrictionType()Lio/didomi/iabtcf/decoder/v2/RestrictionType;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    return-object v0
.end method

.method public getVendorIds()Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 2

    iget-object v0, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->vendorIds:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->purposeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->vendorIds:Lio/didomi/iabtcf/decoder/utils/IntIterable;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lio/didomi/iabtcf/decoder/utils/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Lio/didomi/iabtcf/decoder/utils/StringJoiner;

    const-string v1, ", "

    const-string v2, "["

    const-string v3, "]"

    invoke-direct {v0, v1, v2, v3}, Lio/didomi/iabtcf/decoder/utils/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->getVendorIds()Lio/didomi/iabtcf/decoder/utils/IntIterable;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/iabtcf/decoder/utils/IntIterable;->intIterator()Lio/didomi/iabtcf/decoder/utils/IntIterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->add(Ljava/lang/CharSequence;)Lio/didomi/iabtcf/decoder/utils/StringJoiner;

    goto :goto_13

    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublisherRestriction{purposeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->purposeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", restrictionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;->restrictionType:Lio/didomi/iabtcf/decoder/v2/RestrictionType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", vendorIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/didomi/iabtcf/decoder/utils/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
