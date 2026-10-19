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
