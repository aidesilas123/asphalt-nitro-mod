package io.didomi.iabtcf.decoder.v2;

/* JADX INFO: loaded from: classes4.dex */
public enum SegmentType {
    DEFAULT { // from class: io.didomi.iabtcf.decoder.v2.SegmentType.1
        @Override // io.didomi.iabtcf.decoder.v2.SegmentType
        public int value() {
            return 0;
        }
    },
    DISCLOSED_VENDOR { // from class: io.didomi.iabtcf.decoder.v2.SegmentType.2
        @Override // io.didomi.iabtcf.decoder.v2.SegmentType
        public int value() {
            return 1;
        }
    },
    ALLOWED_VENDOR { // from class: io.didomi.iabtcf.decoder.v2.SegmentType.3
        @Override // io.didomi.iabtcf.decoder.v2.SegmentType
        public int value() {
            return 2;
        }
    },
    PUBLISHER_TC { // from class: io.didomi.iabtcf.decoder.v2.SegmentType.4
        @Override // io.didomi.iabtcf.decoder.v2.SegmentType
        public int value() {
            return 3;
        }
    },
    INVALID { // from class: io.didomi.iabtcf.decoder.v2.SegmentType.5
        @Override // io.didomi.iabtcf.decoder.v2.SegmentType
        public int value() {
            return -1;
        }
    };

    public static SegmentType from(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? INVALID : PUBLISHER_TC : ALLOWED_VENDOR : DISCLOSED_VENDOR : DEFAULT;
    }

    public abstract int value();
}
