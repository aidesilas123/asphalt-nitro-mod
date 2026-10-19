package kotlinx.serialization.json.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: renamed from: kotlinx.serialization.json.internal.e0, reason: from Kotlin metadata */
/* JADX INFO: compiled from: JsonToStringWriter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0002J\b\u0010\u0012\u001a\u00020\bH\u0016J\b\u0010\u0013\u001a\u00020\fH\u0016J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\fH\u0016J\u0010\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lkotlinx/serialization/json/internal/JsonToStringWriter;", "Lkotlinx/serialization/json/internal/JsonWriter;", "()V", "array", "", "size", "", "appendStringSlowPath", "", "firstEscapedChar", "currentSize", TypedValues.Custom.S_STRING, "", "ensureAdditionalCapacity", "expected", "ensureTotalCapacity", "oldSize", "additional", "release", "toString", "write", "text", "writeChar", "char", "", "writeLong", "value", "", "writeQuoted", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public final class JsonToStringWriter implements JsonWriter {
    private char[] a = CharArrayPool.a.b();
    private int b;

    private final void d(int i, int i2, String str) {
        byte b;
        int length = str.length();
        while (i < length) {
            int iF = f(i2, 2);
            char cCharAt = str.charAt(i);
            if (cCharAt >= StringOpsKt.getESCAPE_MARKERS().length || (b = StringOpsKt.getESCAPE_MARKERS()[cCharAt]) == 0) {
                int i3 = iF + 1;
                this.a[iF] = cCharAt;
                i2 = i3;
                i++;
            } else {
                if (b == 1) {
                    String str2 = StringOpsKt.getESCAPE_STRINGS()[cCharAt];
                    Intrinsics.checkNotNull(str2);
                    int iF2 = f(iF, str2.length());
                    str2.getChars(0, str2.length(), this.a, iF2);
                    i2 = iF2 + str2.length();
                    this.b = i2;
                } else {
                    char[] cArr = this.a;
                    cArr[iF] = '\\';
                    cArr[iF + 1] = (char) b;
                    i2 = iF + 2;
                    this.b = i2;
                }
                i++;
            }
        }
        int iF3 = f(i2, 1);
        this.a[iF3] = '\"';
        this.b = iF3 + 1;
    }

    private final void e(int i) {
        f(this.b, i);
    }

    private final int f(int i, int i2) {
        int i3 = i2 + i;
        char[] cArr = this.a;
        if (cArr.length <= i3) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, RangesKt___RangesKt.coerceAtLeast(i3, i * 2));
            Intrinsics.checkNotNullExpressionValue(cArrCopyOf, "copyOf(this, newSize)");
            this.a = cArrCopyOf;
        }
        return i;
    }

    @Override // kotlinx.serialization.json.internal.JsonWriter
    public void a(char c) {
        e(1);
        char[] cArr = this.a;
        int i = this.b;
        this.b = i + 1;
        cArr[i] = c;
    }

    @Override // kotlinx.serialization.json.internal.JsonWriter
    public void b(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        e(text.length() + 2);
        char[] cArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        cArr[i] = '\"';
        int length = text.length();
        text.getChars(0, length, cArr, i2);
        int i3 = length + i2;
        for (int i4 = i2; i4 < i3; i4++) {
            char c = cArr[i4];
            if (c < StringOpsKt.getESCAPE_MARKERS().length && StringOpsKt.getESCAPE_MARKERS()[c] != 0) {
                d(i4 - i2, i4, text);
                return;
            }
        }
        cArr[i3] = '\"';
        this.b = i3 + 1;
    }

    @Override // kotlinx.serialization.json.internal.JsonWriter
    public void c(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        int length = text.length();
        if (length == 0) {
            return;
        }
        e(length);
        text.getChars(0, text.length(), this.a, this.b);
        this.b += length;
    }

    public void g() {
        CharArrayPool.a.a(this.a);
    }

    public String toString() {
        return new String(this.a, 0, this.b);
    }

    @Override // kotlinx.serialization.json.internal.JsonWriter
    public void writeLong(long value) {
        c(String.valueOf(value));
    }
}
