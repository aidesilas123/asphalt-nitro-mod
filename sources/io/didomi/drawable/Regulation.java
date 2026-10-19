package io.didomi.drawable;

import androidx.annotation.Keep;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b \b\u0087\u0001\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013B)\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\n\u001a\u0004\b\u0010\u0010\fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\n\u001a\u0004\b\u0011\u0010\fj\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#¨\u0006$"}, d2 = {"Lio/didomi/sdk/Regulation;", "", "", "value", "", "mixed", "tokenKey", "dcsKey", "<init>", "(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "Z", "getMixed", "()Z", "getTokenKey", "getDcsKey", "Companion", "a", "GDPR", "CCPA", "CPA", "CPRA", "CTDPA", "DPDPA", "FDBR", "IDPL", "MCDPA", "NHPA", "NJDPA", "OCPA", "TDPSA", "UCPA", "VCDPA", "NONE", "android_release"}, mv = {1, 8, 0})
public enum Regulation {
    GDPR("gdpr", false, "Didomi_Token", "Didomi_DCS_GDPR"),
    CCPA("ccpa", false, "Didomi_Token_CCPA", "Didomi_DCS_CCPA"),
    CPA("cpa", true, "Didomi_Token_CPA", "Didomi_DCS_CPA"),
    CPRA("cpra", true, "Didomi_Token_CPRA", "Didomi_DCS_CPRA"),
    CTDPA("ctdpa", true, "Didomi_Token_CTDPA", "Didomi_DCS_CTDPA"),
    DPDPA("dpdpa", true, "Didomi_Token_DPDPA", "Didomi_DCS_DPDPA"),
    FDBR("fdbr", true, "Didomi_Token_FDBR", "Didomi_DCS_FDBR"),
    IDPL("idpl", true, "Didomi_Token_IDPL", "Didomi_DCS_IDPL"),
    MCDPA("mcdpa", true, "Didomi_Token_MCDPA", "Didomi_DCS_MCDPA"),
    NHPA("nhpa", true, "Didomi_Token_NHPA", "Didomi_DCS_NHPA"),
    NJDPA("njdpa", true, "Didomi_Token_NJDPA", "Didomi_DCS_NJDPA"),
    OCPA("ocpa", true, "Didomi_Token_OCPA", "Didomi_DCS_OCPA"),
    TDPSA("tdpsa", true, "Didomi_Token_TDPSA", "Didomi_DCS_TDPSA"),
    UCPA("ucpa", true, "Didomi_Token_UCPA", "Didomi_DCS_UCPA"),
    VCDPA("vcdpa", true, "Didomi_Token_VCDPA", "Didomi_DCS_VCDPA"),
    NONE("none", false, "Didomi_Token_NONE", "Didomi_DCS_NONE");


    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String dcsKey;
    private final boolean mixed;
    private final String tokenKey;
    private final String value;

    /* JADX INFO: renamed from: io.didomi.sdk.Regulation$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/Regulation$a;", "", "<init>", "()V", "", "value", "Lio/didomi/sdk/Regulation;", "a", "(Ljava/lang/String;)Lio/didomi/sdk/Regulation;", "android_release"}, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final Regulation a(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            Locale ENGLISH = Locale.ENGLISH;
            Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
            String lowerCase = value.toLowerCase(ENGLISH);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            Regulation regulation = Regulation.CCPA;
            if (Intrinsics.areEqual(lowerCase, regulation.getValue())) {
                return regulation;
            }
            Regulation regulation2 = Regulation.CPA;
            if (Intrinsics.areEqual(lowerCase, regulation2.getValue())) {
                return regulation2;
            }
            Regulation regulation3 = Regulation.CPRA;
            if (Intrinsics.areEqual(lowerCase, regulation3.getValue())) {
                return regulation3;
            }
            Regulation regulation4 = Regulation.CTDPA;
            if (Intrinsics.areEqual(lowerCase, regulation4.getValue())) {
                return regulation4;
            }
            Regulation regulation5 = Regulation.DPDPA;
            if (Intrinsics.areEqual(lowerCase, regulation5.getValue())) {
                return regulation5;
            }
            Regulation regulation6 = Regulation.FDBR;
            if (Intrinsics.areEqual(lowerCase, regulation6.getValue())) {
                return regulation6;
            }
            Regulation regulation7 = Regulation.GDPR;
            if (Intrinsics.areEqual(lowerCase, regulation7.getValue())) {
                return regulation7;
            }
            Regulation regulation8 = Regulation.IDPL;
            if (Intrinsics.areEqual(lowerCase, regulation8.getValue())) {
                return regulation8;
            }
            Regulation regulation9 = Regulation.MCDPA;
            if (Intrinsics.areEqual(lowerCase, regulation9.getValue())) {
                return regulation9;
            }
            Regulation regulation10 = Regulation.NHPA;
            if (Intrinsics.areEqual(lowerCase, regulation10.getValue())) {
                return regulation10;
            }
            Regulation regulation11 = Regulation.NJDPA;
            if (Intrinsics.areEqual(lowerCase, regulation11.getValue())) {
                return regulation11;
            }
            Regulation regulation12 = Regulation.NONE;
            if (Intrinsics.areEqual(lowerCase, regulation12.getValue())) {
                return regulation12;
            }
            Regulation regulation13 = Regulation.OCPA;
            if (Intrinsics.areEqual(lowerCase, regulation13.getValue())) {
                return regulation13;
            }
            Regulation regulation14 = Regulation.TDPSA;
            if (Intrinsics.areEqual(lowerCase, regulation14.getValue())) {
                return regulation14;
            }
            Regulation regulation15 = Regulation.UCPA;
            if (Intrinsics.areEqual(lowerCase, regulation15.getValue())) {
                return regulation15;
            }
            Regulation regulation16 = Regulation.VCDPA;
            if (Intrinsics.areEqual(lowerCase, regulation16.getValue())) {
                return regulation16;
            }
            return null;
        }
    }

    Regulation(String str, boolean z, String str2, String str3) {
        this.value = str;
        this.mixed = z;
        this.tokenKey = str2;
        this.dcsKey = str3;
    }

    public final String getDcsKey() {
        return this.dcsKey;
    }

    public final boolean getMixed() {
        return this.mixed;
    }

    public final String getTokenKey() {
        return this.tokenKey;
    }

    public final String getValue() {
        return this.value;
    }
}
