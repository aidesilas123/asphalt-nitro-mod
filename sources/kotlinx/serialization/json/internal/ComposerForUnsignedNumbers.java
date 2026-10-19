package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: kotlinx.serialization.json.internal.q, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Composers.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\n\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u000bH\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\fH\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;", "Lkotlinx/serialization/json/internal/Composer;", "writer", "Lkotlinx/serialization/json/internal/JsonWriter;", "forceQuoting", "", "(Lkotlinx/serialization/json/internal/JsonWriter;Z)V", "print", "", "v", "", "", "", "", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public final class ComposerForUnsignedNumbers extends Composer {
    private final boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposerForUnsignedNumbers(JsonWriter writer, boolean z) {
        super(writer);
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.c = z;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void d(byte b) {
        boolean z = this.c;
        String strM1251toStringimpl = UByte.m1251toStringimpl(UByte.m1247constructorimpl(b));
        if (z) {
            m(strM1251toStringimpl);
        } else {
            j(strM1251toStringimpl);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void h(int i) {
        boolean z = this.c;
        int iM1267constructorimpl = UInt.m1267constructorimpl(i);
        if (z) {
            m(Long.toString(((long) iM1267constructorimpl) & 4294967295L, 10));
        } else {
            j(Long.toString(((long) iM1267constructorimpl) & 4294967295L, 10));
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void i(long j) {
        boolean z = this.c;
        long jM1287constructorimpl = ULong.m1287constructorimpl(j);
        if (z) {
            m(p.a(jM1287constructorimpl, 10));
        } else {
            j(o.a(jM1287constructorimpl, 10));
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void k(short s) {
        boolean z = this.c;
        String strM1311toStringimpl = UShort.m1311toStringimpl(UShort.m1307constructorimpl(s));
        if (z) {
            m(strM1311toStringimpl);
        } else {
            j(strM1311toStringimpl);
        }
    }
}
