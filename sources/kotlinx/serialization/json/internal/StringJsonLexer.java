package kotlinx.serialization.json.internal;

import com.facebook.share.internal.ShareConstants;
import com.json.o2;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: kotlinx.serialization.json.internal.r0, reason: from Kotlin metadata */
/* JADX INFO: compiled from: StringJsonLexer.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0003H\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\bH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\r\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\b\u0010\u0015\u001a\u00020\u0013H\u0016J\b\u0010\u0016\u001a\u00020\bH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0017"}, d2 = {"Lkotlinx/serialization/json/internal/StringJsonLexer;", "Lkotlinx/serialization/json/internal/AbstractJsonLexer;", ShareConstants.FEED_SOURCE_PARAM, "", "(Ljava/lang/String;)V", "getSource", "()Ljava/lang/String;", "canConsumeValue", "", "consumeKeyString", "consumeLeadingMatchingValue", "keyToMatch", "isLenient", "consumeNextToken", "", "", "expected", "", "prefetchOrEof", "", o2.h.L, "skipWhitespaces", "tryConsumeComma", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public final class StringJsonLexer extends JsonReader {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f10516e;

    public StringJsonLexer(String source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f10516e = source;
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public int G(int i) {
        if (i < B().length()) {
            return i;
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public int I() {
        char cCharAt;
        int i = this.currentPosition;
        if (i == -1) {
            return i;
        }
        while (i < B().length() && ((cCharAt = B().charAt(i)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
            i++;
        }
        this.currentPosition = i;
        return i;
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public boolean L() {
        int I = I();
        if (I == B().length() || I == -1 || B().charAt(I) != ',') {
            return false;
        }
        this.currentPosition++;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.json.internal.JsonReader
    /* JADX INFO: renamed from: P, reason: from getter and merged with bridge method [inline-methods] */
    public String B() {
        return this.f10516e;
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public boolean e() {
        int i = this.currentPosition;
        if (i == -1) {
            return false;
        }
        while (i < B().length()) {
            char cCharAt = B().charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = i;
                return D(cCharAt);
            }
            i++;
        }
        this.currentPosition = i;
        return false;
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public String j() {
        n('\"');
        int i = this.currentPosition;
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) B(), '\"', i, false, 4, (Object) null);
        if (iIndexOf$default == -1) {
            x((byte) 1);
            throw new KotlinNothingValueException();
        }
        for (int i2 = i; i2 < iIndexOf$default; i2++) {
            if (B().charAt(i2) == '\\') {
                return q(B(), this.currentPosition, i2);
            }
        }
        this.currentPosition = iIndexOf$default + 1;
        String strSubstring = B().substring(i, iIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public String k(String keyToMatch, boolean z) {
        Intrinsics.checkNotNullParameter(keyToMatch, "keyToMatch");
        int i = this.currentPosition;
        try {
            if (l() != 6) {
                return null;
            }
            if (!Intrinsics.areEqual(z ? j() : s(), keyToMatch)) {
                return null;
            }
            if (l() != 5) {
                return null;
            }
            return z ? p() : s();
        } finally {
            this.currentPosition = i;
        }
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public byte l() {
        byte bCharToTokenClass;
        String strB = B();
        do {
            int i = this.currentPosition;
            if (i == -1 || i >= strB.length()) {
                return (byte) 10;
            }
            int i2 = this.currentPosition;
            this.currentPosition = i2 + 1;
            bCharToTokenClass = AbstractJsonLexerKt.charToTokenClass(strB.charAt(i2));
        } while (bCharToTokenClass == 3);
        return bCharToTokenClass;
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public void n(char c) {
        if (this.currentPosition == -1) {
            N(c);
        }
        String strB = B();
        while (this.currentPosition < strB.length()) {
            int i = this.currentPosition;
            this.currentPosition = i + 1;
            char cCharAt = strB.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                if (cCharAt == c) {
                    return;
                } else {
                    N(c);
                }
            }
        }
        N(c);
    }
}
