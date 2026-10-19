package io.didomi.iabtcf.decoder.v2;

/* JADX INFO: loaded from: classes4.dex */
public enum RestrictionType {
    NOT_ALLOWED,
    REQUIRE_CONSENT,
    REQUIRE_LEGITIMATE_INTEREST,
    UNDEFINED;

    public static RestrictionType from(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? NOT_ALLOWED : UNDEFINED : REQUIRE_LEGITIMATE_INTEREST : REQUIRE_CONSENT : NOT_ALLOWED;
    }
}
