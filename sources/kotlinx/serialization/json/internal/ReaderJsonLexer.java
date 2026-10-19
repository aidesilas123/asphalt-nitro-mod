package kotlinx.serialization.json.internal;

import com.facebook.share.internal.ShareConstants;
import com.json.o2;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: kotlinx.serialization.json.internal.n0, reason: from Kotlin metadata */
/* JADX INFO: compiled from: JsonLexer.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0019\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\f\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\fH\u0014J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0012H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u000eH\u0016J\u0018\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\fH\u0016J\u0010\u0010\u001f\u001a\u00020\f2\u0006\u0010 \u001a\u00020\fH\u0016J\u0010\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\fH\u0002J\u0018\u0010#\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010$\u001a\u00020\fH\u0016J\b\u0010%\u001a\u00020\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\bX\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lkotlinx/serialization/json/internal/ReaderJsonLexer;", "Lkotlinx/serialization/json/internal/AbstractJsonLexer;", "reader", "Lkotlinx/serialization/json/internal/SerialReader;", "charsBuffer", "", "(Lkotlinx/serialization/json/internal/SerialReader;[C)V", ShareConstants.FEED_SOURCE_PARAM, "Lkotlinx/serialization/json/internal/ArrayAsSequence;", "getSource", "()Lkotlinx/serialization/json/internal/ArrayAsSequence;", "threshold", "", "appendRange", "", "fromIndex", "toIndex", "canConsumeValue", "", "consumeKeyString", "", "consumeLeadingMatchingValue", "keyToMatch", "isLenient", "consumeNextToken", "", "ensureHaveChars", "indexOf", "char", "", "startPos", "prefetchOrEof", o2.h.L, "preload", "unprocessedCount", "substring", "endPos", "tryConsumeComma", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public final class ReaderJsonLexer extends JsonReader {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SerialReader f10504e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10505f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayAsSequence f10506g;

    public ReaderJsonLexer(SerialReader reader, char[] charsBuffer) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(charsBuffer, "charsBuffer");
        this.f10504e = reader;
        this.f10505f = 128;
        this.f10506g = new ArrayAsSequence(charsBuffer);
        R(0);
    }

    public /* synthetic */ ReaderJsonLexer(SerialReader serialReader, char[] cArr, int i, kotlin.jvm.internal.n nVar) {
        this(serialReader, (i & 2) != 0 ? new char[16384] : cArr);
    }

    private final void R(int i) {
        char[] a = getF10516e().getA();
        if (i != 0) {
            int i2 = this.currentPosition;
            ArraysKt___ArraysJvmKt.copyInto(a, a, 0, i2, i2 + i);
        }
        int length = getF10516e().length();
        while (true) {
            if (i == length) {
                break;
            }
            int iA = this.f10504e.a(a, i, length - i);
            if (iA == -1) {
                getF10516e().f(i);
                this.f10505f = -1;
                break;
            }
            i += iA;
        }
        this.currentPosition = 0;
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public int G(int i) {
        if (i < getF10516e().length()) {
            return i;
        }
        this.currentPosition = i;
        u();
        if (this.currentPosition == 0) {
            return getF10516e().length() == 0 ? -1 : 0;
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public String J(int i, int i2) {
        return getF10516e().e(i, i2);
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public boolean L() {
        int I = I();
        if (I >= getF10516e().length() || I == -1 || getF10516e().charAt(I) != ',') {
            return false;
        }
        this.currentPosition++;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.json.internal.JsonReader
    /* JADX INFO: renamed from: P, reason: from getter and merged with bridge method [inline-methods] */
    public ArrayAsSequence getF10516e() {
        return this.f10506g;
    }

    public int Q(char c, int i) {
        ArrayAsSequence f10516e = getF10516e();
        int length = f10516e.length();
        while (i < length) {
            if (f10516e.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    protected void d(int i, int i2) {
        StringBuilder f10480d = getF10480d();
        f10480d.append(getF10516e().getA(), i, i2 - i);
        Intrinsics.checkNotNullExpressionValue(f10480d, "this.append(value, start…x, endIndex - startIndex)");
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public boolean e() {
        u();
        int i = this.currentPosition;
        while (true) {
            int iG = G(i);
            if (iG == -1) {
                this.currentPosition = iG;
                return false;
            }
            char cCharAt = getF10516e().charAt(iG);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = iG;
                return D(cCharAt);
            }
            i = iG + 1;
        }
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public String j() {
        n('\"');
        int i = this.currentPosition;
        int iQ = Q('\"', i);
        if (iQ == -1) {
            int iG = G(i);
            if (iG != -1) {
                return q(getF10516e(), this.currentPosition, iG);
            }
            x((byte) 1);
            throw new KotlinNothingValueException();
        }
        for (int i2 = i; i2 < iQ; i2++) {
            if (getF10516e().charAt(i2) == '\\') {
                return q(getF10516e(), this.currentPosition, i2);
            }
        }
        this.currentPosition = iQ + 1;
        return J(i, iQ);
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public String k(String keyToMatch, boolean z) {
        Intrinsics.checkNotNullParameter(keyToMatch, "keyToMatch");
        return null;
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public byte l() {
        u();
        ArrayAsSequence f10516e = getF10516e();
        int i = this.currentPosition;
        while (true) {
            int iG = G(i);
            if (iG == -1) {
                this.currentPosition = iG;
                return (byte) 10;
            }
            int i2 = iG + 1;
            byte bCharToTokenClass = AbstractJsonLexerKt.charToTokenClass(f10516e.charAt(iG));
            if (bCharToTokenClass != 3) {
                this.currentPosition = i2;
                return bCharToTokenClass;
            }
            i = i2;
        }
    }

    @Override // kotlinx.serialization.json.internal.JsonReader
    public void u() {
        int length = getF10516e().length() - this.currentPosition;
        if (length > this.f10505f) {
            return;
        }
        R(length);
    }
}
