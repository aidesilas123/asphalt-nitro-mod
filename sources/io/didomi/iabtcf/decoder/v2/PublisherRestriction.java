package io.didomi.iabtcf.decoder.v2;

import com.json.o2;
import io.didomi.iabtcf.decoder.utils.IntIterable;
import io.didomi.iabtcf.decoder.utils.IntIterator;
import io.didomi.iabtcf.decoder.utils.Objects;
import io.didomi.iabtcf.decoder.utils.StringJoiner;

/* JADX INFO: loaded from: classes4.dex */
public class PublisherRestriction {
    private final int purposeId;
    private final RestrictionType restrictionType;
    private final IntIterable vendorIds;

    public PublisherRestriction(int i, RestrictionType restrictionType, IntIterable intIterable) {
        Objects.requireNonNull(intIterable);
        Objects.requireNonNull(restrictionType);
        this.purposeId = i;
        this.restrictionType = restrictionType;
        this.vendorIds = intIterable;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PublisherRestriction publisherRestriction = (PublisherRestriction) obj;
        return this.purposeId == publisherRestriction.purposeId && this.restrictionType == publisherRestriction.restrictionType && this.vendorIds.equals(publisherRestriction.vendorIds);
    }

    public int getPurposeId() {
        return this.purposeId;
    }

    public RestrictionType getRestrictionType() {
        return this.restrictionType;
    }

    public IntIterable getVendorIds() {
        return this.vendorIds;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.purposeId), this.restrictionType, this.vendorIds);
    }

    public String toString() {
        StringJoiner stringJoiner = new StringJoiner(", ", o2.i.f6490d, o2.i.f6491e);
        IntIterator intIterator = getVendorIds().intIterator();
        while (intIterator.hasNext()) {
            stringJoiner.add(intIterator.next().toString());
        }
        return "PublisherRestriction{purposeId=" + this.purposeId + ", restrictionType=" + this.restrictionType + ", vendorIds=" + stringJoiner.toString() + '}';
    }
}
