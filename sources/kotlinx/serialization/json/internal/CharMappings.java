package kotlinx.serialization.json.internal;

import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import kotlin.Metadata;

/* JADX INFO: renamed from: kotlinx.serialization.json.internal.i, reason: from Kotlin metadata */
/* JADX INFO: compiled from: AbstractJsonLexer.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u0010\u0010\u001a\u00020\bH\u0002J\b\u0010\u0011\u001a\u00020\bH\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lkotlinx/serialization/json/internal/CharMappings;", "", "()V", "CHAR_TO_TOKEN", "", "ESCAPE_2_CHAR", "", "initC2ESC", "", "c", "", AppLovinSdkExtraParameterKey.ENABLE_SEQUENTIAL_CACHING, "", "initC2TC", "cl", "", "initCharToToken", "initEscape", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public final class CharMappings {
    public static final CharMappings a;
    public static final char[] b;
    public static final byte[] c;

    static {
        CharMappings charMappings = new CharMappings();
        a = charMappings;
        b = new char[117];
        c = new byte[126];
        charMappings.f();
        charMappings.e();
    }

    private CharMappings() {
    }

    private final void a(char c2, char c3) {
        b(c2, c3);
    }

    private final void b(int i, char c2) {
        if (c2 != 'u') {
            b[c2] = (char) i;
        }
    }

    private final void c(char c2, byte b2) {
        d(c2, b2);
    }

    private final void d(int i, byte b2) {
        c[i] = b2;
    }

    private final void e() {
        for (int i = 0; i < 33; i++) {
            d(i, Ascii.DEL);
        }
        d(9, (byte) 3);
        d(10, (byte) 3);
        d(13, (byte) 3);
        d(32, (byte) 3);
        c(',', (byte) 4);
        c(':', (byte) 5);
        c('{', (byte) 6);
        c('}', (byte) 7);
        c('[', (byte) 8);
        c(']', (byte) 9);
        c('\"', (byte) 1);
        c('\\', (byte) 2);
    }

    private final void f() {
        for (int i = 0; i < 32; i++) {
            b(i, 'u');
        }
        b(8, 'b');
        b(9, 't');
        b(10, 'n');
        b(12, 'f');
        b(13, 'r');
        a('/', '/');
        a('\"', '\"');
        a('\\', '\\');
    }
}
