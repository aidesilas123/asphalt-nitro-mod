package io.didomi.iabtcf.encoder;

import io.didomi.iabtcf.decoder.utils.BitSetIntIterable;
import io.didomi.iabtcf.decoder.utils.FieldDefs;
import io.didomi.iabtcf.decoder.utils.IntIterable;
import io.didomi.iabtcf.decoder.utils.IntIterator;
import io.didomi.iabtcf.decoder.v2.RestrictionType;

/* JADX INFO: loaded from: classes4.dex */
public class PublisherRestrictionEntry {
    private final int purposeId;
    private final RestrictionType restrictionType;
    private final IntIterable vendors;

    public static class Builder {
        private int purposeId;
        private RestrictionType restrictionType;
        private final BitSetIntIterable.Builder vendors;

        public Builder() {
            this.vendors = BitSetIntIterable.newBuilder();
        }

        public Builder(Builder builder) {
            BitSetIntIterable.Builder builderNewBuilder = BitSetIntIterable.newBuilder();
            this.vendors = builderNewBuilder;
            this.purposeId = builder.purposeId;
            this.restrictionType = builder.restrictionType;
            builderNewBuilder.add(builder.vendors);
        }

        public Builder(PublisherRestrictionEntry publisherRestrictionEntry) {
            BitSetIntIterable.Builder builderNewBuilder = BitSetIntIterable.newBuilder();
            this.vendors = builderNewBuilder;
            this.purposeId = publisherRestrictionEntry.purposeId;
            this.restrictionType = publisherRestrictionEntry.restrictionType;
            builderNewBuilder.add(publisherRestrictionEntry.vendors);
        }

        public Builder addVendor(int i) {
            if (i >= 1) {
                this.vendors.add(i);
                return this;
            }
            throw new IllegalArgumentException("vendor id must be > 0: " + i);
        }

        public Builder addVendor(IntIterable intIterable) {
            IntIterator intIterator = intIterable.intIterator();
            while (intIterator.hasNext()) {
                addVendor(intIterator.nextInt());
            }
            return this;
        }

        public Builder addVendor(int... iArr) {
            for (int i : iArr) {
                addVendor(i);
            }
            return this;
        }

        public PublisherRestrictionEntry build() {
            return new PublisherRestrictionEntry(this.purposeId, this.restrictionType, this.vendors.build());
        }

        public Builder clearVendors() {
            this.vendors.clear();
            return this;
        }

        public Builder purposeId(int i) {
            this.purposeId = i;
            return this;
        }

        public Builder restrictionType(RestrictionType restrictionType) {
            this.restrictionType = restrictionType;
            return this;
        }
    }

    private PublisherRestrictionEntry(int i, RestrictionType restrictionType, IntIterable intIterable) {
        if (i > 0) {
            this.purposeId = Bounds.checkBounds(i, FieldDefs.PURPOSE_ID);
            this.restrictionType = restrictionType;
            this.vendors = intIterable;
        } else {
            throw new IllegalArgumentException("purposeId must be positive: " + i);
        }
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public static Builder newBuilder(Builder builder) {
        return new Builder(builder);
    }

    public static Builder newBuilder(PublisherRestrictionEntry publisherRestrictionEntry) {
        return new Builder(publisherRestrictionEntry);
    }

    public int getPurposeId() {
        return this.purposeId;
    }

    public RestrictionType getRestrictionType() {
        return this.restrictionType;
    }

    public IntIterable getVendors() {
        return this.vendors;
    }
}
