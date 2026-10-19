package io.didomi.iabtcf.decoder;

import io.didomi.iabtcf.decoder.exceptions.ByteParseException;
import io.didomi.iabtcf.decoder.exceptions.UnsupportedVersionException;
import io.didomi.iabtcf.decoder.utils.IntIterable;
import io.didomi.iabtcf.decoder.v2.PublisherRestriction;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface TCString {

    public static class Util {
        public static TCString decode(String str, DecoderOption... decoderOptionArr) throws ByteParseException, UnsupportedVersionException, IllegalArgumentException {
            return TCStringDecoder.decode(str, decoderOptionArr);
        }
    }

    IntIterable getAllowedVendors();

    int getCmpId();

    int getCmpVersion();

    String getConsentLanguage();

    int getConsentScreen();

    Date getCreated();

    IntIterable getCustomPurposesConsent();

    IntIterable getCustomPurposesLITransparency();

    boolean getDefaultVendorConsent();

    IntIterable getDisclosedVendors();

    Date getLastUpdated();

    IntIterable getPubPurposesConsent();

    IntIterable getPubPurposesLITransparency();

    String getPublisherCC();

    List<PublisherRestriction> getPublisherRestrictions();

    boolean getPurposeOneTreatment();

    IntIterable getPurposesConsent();

    IntIterable getPurposesLITransparency();

    IntIterable getSpecialFeatureOptIns();

    int getTcfPolicyVersion();

    boolean getUseNonStandardStacks();

    IntIterable getVendorConsent();

    IntIterable getVendorLegitimateInterest();

    int getVendorListVersion();

    int getVersion();

    boolean isServiceSpecific();
}
