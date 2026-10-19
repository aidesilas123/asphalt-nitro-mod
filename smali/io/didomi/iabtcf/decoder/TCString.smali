###### Class io.didomi.iabtcf.decoder.TCString (io.didomi.iabtcf.decoder.TCString)
.class public interface abstract Lio/didomi/iabtcf/decoder/TCString;
.super Ljava/lang/Object;
.source "TCString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/iabtcf/decoder/TCString$Util;
    }
.end annotation


# virtual methods
.method public abstract getAllowedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;
.end method

.method public abstract getCmpId()I
.end method

.method public abstract getCmpVersion()I
.end method

.method public abstract getConsentLanguage()Ljava/lang/String;
.end method

.method public abstract getConsentScreen()I
.end method

.method public abstract getCreated()Ljava/util/Date;
.end method

.method public abstract getCustomPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;
.end method

.method public abstract getCustomPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;
.end method

.method public abstract getDefaultVendorConsent()Z
.end method

.method public abstract getDisclosedVendors()Lio/didomi/iabtcf/decoder/utils/IntIterable;
.end method

.method public abstract getLastUpdated()Ljava/util/Date;
.end method

.method public abstract getPubPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;
.end method

.method public abstract getPubPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;
.end method

.method public abstract getPublisherCC()Ljava/lang/String;
.end method

.method public abstract getPublisherRestrictions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/iabtcf/decoder/v2/PublisherRestriction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPurposeOneTreatment()Z
.end method

.method public abstract getPurposesConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;
.end method

.method public abstract getPurposesLITransparency()Lio/didomi/iabtcf/decoder/utils/IntIterable;
.end method

.method public abstract getSpecialFeatureOptIns()Lio/didomi/iabtcf/decoder/utils/IntIterable;
.end method

.method public abstract getTcfPolicyVersion()I
.end method

.method public abstract getUseNonStandardStacks()Z
.end method

.method public abstract getVendorConsent()Lio/didomi/iabtcf/decoder/utils/IntIterable;
.end method

.method public abstract getVendorLegitimateInterest()Lio/didomi/iabtcf/decoder/utils/IntIterable;
.end method

.method public abstract getVendorListVersion()I
.end method

.method public abstract getVersion()I
.end method

.method public abstract isServiceSpecific()Z
.end method

###### Class io.didomi.iabtcf.decoder.TCString.Util (io.didomi.iabtcf.decoder.TCString$Util)
.class public Lio/didomi/iabtcf/decoder/TCString$Util;
.super Ljava/lang/Object;
.source "TCString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/decoder/TCString;
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

.method public static varargs decode(Ljava/lang/String;[Lio/didomi/iabtcf/decoder/DecoderOption;)Lio/didomi/iabtcf/decoder/TCString;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lio/didomi/iabtcf/decoder/exceptions/ByteParseException;,
            Lio/didomi/iabtcf/decoder/exceptions/UnsupportedVersionException;
        }
    .end annotation

    invoke-static {p0, p1}, Lio/didomi/iabtcf/decoder/TCStringDecoder;->decode(Ljava/lang/String;[Lio/didomi/iabtcf/decoder/DecoderOption;)Lio/didomi/iabtcf/decoder/TCString;

    move-result-object p0

    return-object p0
.end method
