package com.google.thirdparty.publicsuffix;

/* JADX INFO: loaded from: classes3.dex */
public enum PublicSuffixType {
    PRIVATE(':', ','),
    REGISTRY('!', '?');


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final char f4246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final char f4247e;

    PublicSuffixType(char c2, char c3) {
        this.f4246d = c2;
        this.f4247e = c3;
    }

    static PublicSuffixType f(char c2) {
        for (PublicSuffixType publicSuffixType : values()) {
            if (publicSuffixType.g() == c2 || publicSuffixType.h() == c2) {
                return publicSuffixType;
            }
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("No enum corresponding to given code: ");
        sb.append(c2);
        throw new IllegalArgumentException(sb.toString());
    }

    char g() {
        return this.f4246d;
    }

    char h() {
        return this.f4247e;
    }
}
