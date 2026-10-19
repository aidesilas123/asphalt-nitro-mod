package kotlinx.serialization.json.internal;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.json.o2;
import java.util.ArrayList;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: kotlinx.serialization.json.internal.AbstractJsonLexer, reason: from toString */
/* JADX INFO: compiled from: AbstractJsonLexer.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u0001\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\r\b \u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0018\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0004H\u0014J\b\u0010\u001f\u001a\u00020 H&J\u0006\u0010!\u001a\u00020 J\u0010\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0004H\u0003J\u0006\u0010#\u001a\u00020 J\u0018\u0010$\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010&\u001a\u00020\u000fH&J\u001a\u0010'\u001a\u0004\u0018\u00010\u000f2\u0006\u0010(\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020 H&J\b\u0010*\u001a\u00020+H&J\u000e\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+J\u0010\u0010*\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020-H\u0016J\u0006\u0010.\u001a\u00020/J\u0006\u00100\u001a\u00020\u000fJ \u00100\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0005J\u0006\u00101\u001a\u00020\u000fJ\u0006\u00102\u001a\u00020\u000fJ\u0018\u00103\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\b\u00104\u001a\u00020\u001cH\u0016J\u0006\u00105\u001a\u00020\u001cJ\u0015\u00106\u001a\u0002072\u0006\u00108\u001a\u00020+H\u0000¢\u0006\u0002\b9J\"\u00106\u001a\u0002072\u0006\u0010:\u001a\u00020\u000f2\b\b\u0002\u0010;\u001a\u00020\u00042\b\b\u0002\u0010<\u001a\u00020\u000fJ\u000e\u0010=\u001a\u00020\u001c2\u0006\u0010>\u001a\u00020\u000fJ\u0018\u0010?\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0018\u0010@\u001a\u00020\u00042\u0006\u0010A\u001a\u00020-2\u0006\u0010\u001a\u001a\u00020\u0004H\u0016J\u0006\u0010B\u001a\u00020 J\u0010\u0010C\u001a\u00020 2\u0006\u0010D\u001a\u00020-H\u0004J\u0006\u0010E\u001a\u00020+J\u0010\u0010F\u001a\u0004\u0018\u00010\u000f2\u0006\u0010)\u001a\u00020 J\u0010\u0010G\u001a\u00020\u00042\u0006\u0010;\u001a\u00020\u0004H&J1\u0010H\u001a\u00020\u001c2\u0006\u0010I\u001a\u00020 2\b\b\u0002\u0010;\u001a\u00020\u00042\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u000f0JH\u0080\bø\u0001\u0000¢\u0006\u0002\bKJ\u000e\u0010L\u001a\u00020\u001c2\u0006\u0010M\u001a\u00020 J\b\u0010N\u001a\u00020\u0004H\u0016J\u0018\u0010O\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010P\u001a\u00020\u0004H\u0016J\b\u0010Q\u001a\u00020\u000fH\u0002J\b\u0010R\u001a\u00020\u000fH\u0016J\b\u0010S\u001a\u00020 H&J\u0006\u0010T\u001a\u00020 J\u0010\u0010U\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020-H\u0004J\b\u0010V\u001a\u00020 H\u0002R\u0012\u0010\u0003\u001a\u00020\u00048\u0004@\u0004X\u0085\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u0011X¤\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006W"}, d2 = {"Lkotlinx/serialization/json/internal/AbstractJsonLexer;", "", "()V", "currentPosition", "", "escapedString", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "getEscapedString", "()Ljava/lang/StringBuilder;", "setEscapedString", "(Ljava/lang/StringBuilder;)V", "path", "Lkotlinx/serialization/json/internal/JsonPath;", "peekedString", "", ShareConstants.FEED_SOURCE_PARAM, "", "getSource", "()Ljava/lang/CharSequence;", "appendEsc", "startPosition", "appendEscape", "lastPosition", "current", "appendHex", "startPos", "appendRange", "", "fromIndex", "toIndex", "canConsumeValue", "", "consumeBoolean", "start", "consumeBooleanLenient", "consumeBooleanLiteral", "literalSuffix", "consumeKeyString", "consumeLeadingMatchingValue", "keyToMatch", "isLenient", "consumeNextToken", "", "expected", "", "consumeNumericLiteral", "", "consumeString", "consumeStringLenient", "consumeStringLenientNotNull", "decodedString", "ensureHaveChars", "expectEof", o2.f.f6481e, "", "expectedToken", "fail$kotlinx_serialization_json", "message", o2.h.L, ViewHierarchyConstants.HINT_KEY, "failOnUnknownKey", "key", "fromHexChar", "indexOf", "char", "isNotEof", "isValidValueStart", "c", "peekNextToken", "peekString", "prefetchOrEof", "require", "condition", "Lkotlin/Function0;", "require$kotlinx_serialization_json", "skipElement", "allowLenientStrings", "skipWhitespaces", "substring", "endPos", "takePeeked", "toString", "tryConsumeComma", "tryConsumeNotNull", "unexpectedToken", "wasUnquotedString", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public abstract class JsonReader {

    /* JADX INFO: renamed from: a, reason: from toString */
    protected int currentPosition;
    private String c;
    public final JsonPath b = new JsonPath();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private StringBuilder f10480d = new StringBuilder();

    private final String K() {
        String str = this.c;
        Intrinsics.checkNotNull(str);
        this.c = null;
        return str;
    }

    private final boolean O() {
        return B().charAt(this.currentPosition - 1) != '\"';
    }

    private final int a(int i) {
        int iG = G(i);
        if (iG == -1) {
            fail$default(this, "Expected escape sequence to continue, got EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i2 = iG + 1;
        char cCharAt = B().charAt(iG);
        if (cCharAt == 'u') {
            return c(B(), i2);
        }
        char cEscapeToChar = AbstractJsonLexerKt.escapeToChar(cCharAt);
        if (cEscapeToChar != 0) {
            this.f10480d.append(cEscapeToChar);
            return i2;
        }
        fail$default(this, "Invalid escaped char '" + cCharAt + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final int b(int i, int i2) {
        d(i, i2);
        return a(i2 + 1);
    }

    private final int c(CharSequence charSequence, int i) {
        int i2 = i + 4;
        if (i2 < charSequence.length()) {
            this.f10480d.append((char) ((z(charSequence, i) << 12) + (z(charSequence, i + 1) << 8) + (z(charSequence, i + 2) << 4) + z(charSequence, i + 3)));
            return i2;
        }
        this.currentPosition = i;
        u();
        if (this.currentPosition + 4 < charSequence.length()) {
            return c(charSequence, this.currentPosition);
        }
        fail$default(this, "Unexpected EOF during unicode escape", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ Void fail$default(JsonReader jsonReader, String str, int i, String str2, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fail");
        }
        if ((i2 & 2) != 0) {
            i = jsonReader.currentPosition;
        }
        if ((i2 & 4) != 0) {
            str2 = "";
        }
        return jsonReader.w(str, i, str2);
    }

    private final boolean g(int i) {
        int iG = G(i);
        if (iG >= B().length() || iG == -1) {
            fail$default(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i2 = iG + 1;
        int iCharAt = B().charAt(iG) | ' ';
        if (iCharAt == 102) {
            i("alse", i2);
            return false;
        }
        if (iCharAt == 116) {
            i("rue", i2);
            return true;
        }
        fail$default(this, "Expected valid boolean literal prefix, but had '" + r() + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final void i(String str, int i) {
        if (B().length() - i < str.length()) {
            fail$default(this, "Unexpected end of boolean literal", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i2) != (B().charAt(i + i2) | ' ')) {
                fail$default(this, "Expected valid boolean literal prefix, but had '" + r() + '\'', 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
        }
        this.currentPosition = i + str.length();
    }

    public static /* synthetic */ void require$kotlinx_serialization_json$default(JsonReader jsonReader, boolean z, int i, Function0 message, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: require");
        }
        if ((i2 & 2) != 0) {
            i = jsonReader.currentPosition;
        }
        int i3 = i;
        Intrinsics.checkNotNullParameter(message, "message");
        if (z) {
            return;
        }
        fail$default(jsonReader, (String) message.invoke(), i3, null, 4, null);
        throw new KotlinNothingValueException();
    }

    private final String t(int i, int i2) {
        d(i, i2);
        String string = this.f10480d.toString();
        Intrinsics.checkNotNullExpressionValue(string, "escapedString.toString()");
        this.f10480d.setLength(0);
        return string;
    }

    private final int z(CharSequence charSequence, int i) {
        char cCharAt = charSequence.charAt(i);
        if ('0' <= cCharAt && cCharAt < ':') {
            return cCharAt - '0';
        }
        char c = 'a';
        if (!('a' <= cCharAt && cCharAt < 'g')) {
            c = 'A';
            if (!('A' <= cCharAt && cCharAt < 'G')) {
                fail$default(this, "Invalid toHexChar char '" + cCharAt + "' in unicode escape", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
        }
        return (cCharAt - c) + 10;
    }

    /* JADX INFO: renamed from: A, reason: from getter */
    protected final StringBuilder getF10480d() {
        return this.f10480d;
    }

    protected abstract CharSequence B();

    public final boolean C() {
        return E() != 10;
    }

    protected final boolean D(char c) {
        return !(((c == '}' || c == ']') || c == ':') || c == ',');
    }

    public final byte E() {
        CharSequence charSequenceB = B();
        int i = this.currentPosition;
        while (true) {
            int iG = G(i);
            if (iG == -1) {
                this.currentPosition = iG;
                return (byte) 10;
            }
            char cCharAt = charSequenceB.charAt(iG);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = iG;
                return AbstractJsonLexerKt.charToTokenClass(cCharAt);
            }
            i = iG + 1;
        }
    }

    public final String F(boolean z) {
        String strP;
        byte bE = E();
        if (z) {
            if (bE != 1 && bE != 0) {
                return null;
            }
            strP = r();
        } else {
            if (bE != 1) {
                return null;
            }
            strP = p();
        }
        this.c = strP;
        return strP;
    }

    public abstract int G(int i);

    public final void H(boolean z) {
        ArrayList arrayList = new ArrayList();
        byte bE = E();
        if (bE != 8 && bE != 6) {
            r();
            return;
        }
        while (true) {
            byte bE2 = E();
            boolean z2 = true;
            if (bE2 != 1) {
                if (bE2 != 8 && bE2 != 6) {
                    z2 = false;
                }
                if (z2) {
                    arrayList.add(Byte.valueOf(bE2));
                } else if (bE2 == 9) {
                    if (((Number) kotlin.collections.p.last((List) arrayList)).byteValue() != 8) {
                        throw JsonExceptionsKt.JsonDecodingException(this.currentPosition, "found ] instead of } at path: " + this.b, B());
                    }
                    kotlin.collections.p.removeLast(arrayList);
                } else if (bE2 == 7) {
                    if (((Number) kotlin.collections.p.last((List) arrayList)).byteValue() != 6) {
                        throw JsonExceptionsKt.JsonDecodingException(this.currentPosition, "found } instead of ] at path: " + this.b, B());
                    }
                    kotlin.collections.p.removeLast(arrayList);
                } else if (bE2 == 10) {
                    fail$default(this, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                l();
                if (arrayList.size() == 0) {
                    return;
                }
            } else if (z) {
                r();
            } else {
                j();
            }
        }
    }

    public int I() {
        int iG;
        char cCharAt;
        int i = this.currentPosition;
        while (true) {
            iG = G(i);
            if (iG == -1 || !((cCharAt = B().charAt(iG)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
                break;
            }
            i = iG + 1;
        }
        this.currentPosition = iG;
        return iG;
    }

    public String J(int i, int i2) {
        return B().subSequence(i, i2).toString();
    }

    public abstract boolean L();

    public final boolean M() {
        int iG = G(I());
        int length = B().length() - iG;
        if (length < 4 || iG == -1) {
            return true;
        }
        for (int i = 0; i < 4; i++) {
            if ("null".charAt(i) != B().charAt(iG + i)) {
                return true;
            }
        }
        if (length > 4 && AbstractJsonLexerKt.charToTokenClass(B().charAt(iG + 4)) == 0) {
            return true;
        }
        this.currentPosition = iG + 4;
        return false;
    }

    protected final void N(char c) {
        int i = this.currentPosition - 1;
        this.currentPosition = i;
        if (i >= 0 && c == '\"' && Intrinsics.areEqual(r(), "null")) {
            w("Expected string literal but 'null' literal was found", this.currentPosition - 4, "Use 'coerceInputValues = true' in 'Json {}` builder to coerce nulls to default values.");
            throw new KotlinNothingValueException();
        }
        x(AbstractJsonLexerKt.charToTokenClass(c));
        throw new KotlinNothingValueException();
    }

    protected void d(int i, int i2) {
        this.f10480d.append(B(), i, i2);
    }

    public abstract boolean e();

    public final boolean f() {
        return g(I());
    }

    public final boolean h() {
        boolean z;
        int I = I();
        if (I == B().length()) {
            fail$default(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (B().charAt(I) == '\"') {
            I++;
            z = true;
        } else {
            z = false;
        }
        boolean zG = g(I);
        if (z) {
            if (this.currentPosition == B().length()) {
                fail$default(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            if (B().charAt(this.currentPosition) != '\"') {
                fail$default(this, "Expected closing quotation mark", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            this.currentPosition++;
        }
        return zG;
    }

    public abstract String j();

    public abstract String k(String str, boolean z);

    public abstract byte l();

    public final byte m(byte b) {
        byte bL = l();
        if (bL == b) {
            return bL;
        }
        x(b);
        throw new KotlinNothingValueException();
    }

    public void n(char c) {
        u();
        CharSequence charSequenceB = B();
        int i = this.currentPosition;
        while (true) {
            int iG = G(i);
            if (iG == -1) {
                this.currentPosition = iG;
                N(c);
                return;
            }
            int i2 = iG + 1;
            char cCharAt = charSequenceB.charAt(iG);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = i2;
                if (cCharAt == c) {
                    return;
                } else {
                    N(c);
                }
            }
            i = i2;
        }
    }

    public final long o() {
        boolean z;
        int iG = G(I());
        if (iG >= B().length() || iG == -1) {
            fail$default(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (B().charAt(iG) == '\"') {
            iG++;
            if (iG == B().length()) {
                fail$default(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            z = true;
        } else {
            z = false;
        }
        int i = iG;
        long j = 0;
        boolean z2 = true;
        boolean z3 = false;
        while (z2) {
            char cCharAt = B().charAt(i);
            if (cCharAt != '-') {
                if (AbstractJsonLexerKt.charToTokenClass(cCharAt) != 0) {
                    break;
                }
                i++;
                z2 = i != B().length();
                int i2 = cCharAt - '0';
                if (!(i2 >= 0 && i2 < 10)) {
                    fail$default(this, "Unexpected symbol '" + cCharAt + "' in numeric literal", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                j = (j * ((long) 10)) - ((long) i2);
                if (j > 0) {
                    fail$default(this, "Numeric value overflow", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
            } else {
                if (i != iG) {
                    fail$default(this, "Unexpected symbol '-' in numeric literal", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                i++;
                z3 = true;
            }
        }
        if (iG == i || (z3 && iG == i - 1)) {
            fail$default(this, "Expected numeric literal", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (z) {
            if (!z2) {
                fail$default(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            if (B().charAt(i) != '\"') {
                fail$default(this, "Expected closing quotation mark", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            i++;
        }
        this.currentPosition = i;
        if (z3) {
            return j;
        }
        if (j != Long.MIN_VALUE) {
            return -j;
        }
        fail$default(this, "Numeric value overflow", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final String p() {
        return this.c != null ? K() : j();
    }

    protected final String q(CharSequence source, int i, int i2) {
        int iG;
        Intrinsics.checkNotNullParameter(source, "source");
        char cCharAt = source.charAt(i2);
        boolean z = false;
        while (cCharAt != '\"') {
            if (cCharAt == '\\') {
                iG = G(b(i, i2));
                if (iG == -1) {
                    fail$default(this, "EOF", iG, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            } else {
                i2++;
                if (i2 >= source.length()) {
                    d(i, i2);
                    iG = G(i2);
                    if (iG == -1) {
                        fail$default(this, "EOF", iG, null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                } else {
                    continue;
                    cCharAt = source.charAt(i2);
                }
            }
            i = iG;
            i2 = i;
            z = true;
            cCharAt = source.charAt(i2);
        }
        String strJ = !z ? J(i, i2) : t(i, i2);
        this.currentPosition = i2 + 1;
        return strJ;
    }

    public final String r() {
        if (this.c != null) {
            return K();
        }
        int I = I();
        if (I >= B().length() || I == -1) {
            fail$default(this, "EOF", I, null, 4, null);
            throw new KotlinNothingValueException();
        }
        byte bCharToTokenClass = AbstractJsonLexerKt.charToTokenClass(B().charAt(I));
        if (bCharToTokenClass == 1) {
            return p();
        }
        if (bCharToTokenClass != 0) {
            fail$default(this, "Expected beginning of the string, but got " + B().charAt(I), 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        boolean z = false;
        while (AbstractJsonLexerKt.charToTokenClass(B().charAt(I)) == 0) {
            I++;
            if (I >= B().length()) {
                d(this.currentPosition, I);
                int iG = G(I);
                if (iG == -1) {
                    this.currentPosition = I;
                    return t(0, 0);
                }
                I = iG;
                z = true;
            }
        }
        String strJ = !z ? J(this.currentPosition, I) : t(this.currentPosition, I);
        this.currentPosition = I;
        return strJ;
    }

    public final String s() {
        String strR = r();
        if (!Intrinsics.areEqual(strR, "null") || !O()) {
            return strR;
        }
        fail$default(this, "Unexpected 'null' value instead of string literal", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public String toString() {
        return "JsonReader(source='" + ((Object) B()) + "', currentPosition=" + this.currentPosition + ')';
    }

    public void u() {
    }

    public final void v() {
        if (l() == 10) {
            return;
        }
        fail$default(this, "Expected EOF after parsing, but had " + B().charAt(this.currentPosition - 1) + " instead", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final Void w(String message, int i, String hint) {
        String str;
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(hint, "hint");
        if (hint.length() == 0) {
            str = "";
        } else {
            str = '\n' + hint;
        }
        throw JsonExceptionsKt.JsonDecodingException(i, message + " at path: " + this.b.a() + str, B());
    }

    public final Void x(byte b) {
        fail$default(this, "Expected " + (b == 1 ? "quotation mark '\"'" : b == 4 ? "comma ','" : b == 5 ? "colon ':'" : b == 6 ? "start of the object '{'" : b == 7 ? "end of the object '}'" : b == 8 ? "start of the array '['" : b == 9 ? "end of the array ']'" : "valid token") + ", but had '" + ((this.currentPosition == B().length() || this.currentPosition <= 0) ? "EOF" : String.valueOf(B().charAt(this.currentPosition - 1))) + "' instead", this.currentPosition - 1, null, 4, null);
        throw new KotlinNothingValueException();
    }

    public final void y(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        w("Encountered an unknown key '" + key + '\'', StringsKt__StringsKt.lastIndexOf$default((CharSequence) J(0, this.currentPosition), key, 0, false, 6, (Object) null), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.");
        throw new KotlinNothingValueException();
    }
}
