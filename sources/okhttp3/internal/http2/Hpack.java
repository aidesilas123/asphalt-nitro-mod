package okhttp3.internal.http2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.webkit.ProxyConfig;
import com.facebook.share.internal.ShareConstants;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.ByteString;
import okio.Okio;
import okio.y;

/* JADX INFO: renamed from: okhttp3.internal.http2.b, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Hpack.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0018\u0019B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0005J\u0014\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u0019\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001a"}, d2 = {"Lokhttp3/internal/http2/Hpack;", "", "()V", "NAME_TO_FIRST_INDEX", "", "Lokio/ByteString;", "", "getNAME_TO_FIRST_INDEX", "()Ljava/util/Map;", "PREFIX_4_BITS", "PREFIX_5_BITS", "PREFIX_6_BITS", "PREFIX_7_BITS", "SETTINGS_HEADER_TABLE_SIZE", "SETTINGS_HEADER_TABLE_SIZE_LIMIT", "STATIC_HEADER_TABLE", "", "Lokhttp3/internal/http2/Header;", "getSTATIC_HEADER_TABLE", "()[Lokhttp3/internal/http2/Header;", "[Lokhttp3/internal/http2/Header;", "checkLowercase", "name", "nameToFirstIndex", "Reader", "Writer", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class Hpack {
    public static final Hpack a;
    private static final Header[] b;
    private static final Map<ByteString, Integer> c;

    /* JADX INFO: renamed from: okhttp3.internal.http2.b$a */
    /* JADX INFO: compiled from: Hpack.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0010\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\n0\u001aJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0018\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\nH\u0002J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\b\u0010!\u001a\u00020\u0005H\u0002J\u0006\u0010\"\u001a\u00020\u001cJ\u0006\u0010#\u001a\u00020\u0013J\u0010\u0010$\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0016\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u0005J\u0010\u0010(\u001a\u00020\u00132\u0006\u0010)\u001a\u00020\u0005H\u0002J\b\u0010*\u001a\u00020\u0013H\u0002J\u0010\u0010+\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\b\u0010,\u001a\u00020\u0013H\u0002R\u001c\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lokhttp3/internal/http2/Hpack$Reader;", "", ShareConstants.FEED_SOURCE_PARAM, "Lokio/Source;", "headerTableSizeSetting", "", "maxDynamicTableByteCount", "(Lokio/Source;II)V", "dynamicTable", "", "Lokhttp3/internal/http2/Header;", "[Lokhttp3/internal/http2/Header;", "dynamicTableByteCount", "headerCount", "headerList", "", "nextHeaderIndex", "Lokio/BufferedSource;", "adjustDynamicTableByteCount", "", "clearDynamicTable", "dynamicTableIndex", "index", "evictToRecoverBytes", "bytesToRecover", "getAndResetHeaderList", "", "getName", "Lokio/ByteString;", "insertIntoDynamicTable", "entry", "isStaticHeader", "", "readByte", "readByteString", "readHeaders", "readIndexedHeader", "readInt", "firstByte", "prefixMask", "readLiteralHeaderWithIncrementalIndexingIndexedName", "nameIndex", "readLiteralHeaderWithIncrementalIndexingNewName", "readLiteralHeaderWithoutIndexingIndexedName", "readLiteralHeaderWithoutIndexingNewName", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a {
        private final int a;
        private int b;
        private final List<Header> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final okio.e f10778d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Header[] f10779e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f10780f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f10781g;
        public int h;

        public a(y source, int i, int i2) {
            Intrinsics.checkNotNullParameter(source, "source");
            this.a = i;
            this.b = i2;
            this.c = new ArrayList();
            this.f10778d = Okio.buffer(source);
            this.f10779e = new Header[8];
            this.f10780f = r2.length - 1;
        }

        public /* synthetic */ a(y yVar, int i, int i2, int i3, n nVar) {
            this(yVar, i, (i3 & 4) != 0 ? i : i2);
        }

        private final void a() {
            int i = this.b;
            int i2 = this.h;
            if (i < i2) {
                if (i == 0) {
                    b();
                } else {
                    d(i2 - i);
                }
            }
        }

        private final void b() {
            ArraysKt___ArraysJvmKt.fill$default(this.f10779e, (Object) null, 0, 0, 6, (Object) null);
            this.f10780f = this.f10779e.length - 1;
            this.f10781g = 0;
            this.h = 0;
        }

        private final int c(int i) {
            return this.f10780f + 1 + i;
        }

        private final int d(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.f10779e.length;
                while (true) {
                    length--;
                    i2 = this.f10780f;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    Header header = this.f10779e[length];
                    Intrinsics.checkNotNull(header);
                    int i4 = header.j;
                    i -= i4;
                    this.h -= i4;
                    this.f10781g--;
                    i3++;
                }
                Header[] headerArr = this.f10779e;
                System.arraycopy(headerArr, i2 + 1, headerArr, i2 + 1 + i3, this.f10781g);
                this.f10780f += i3;
            }
            return i3;
        }

        private final ByteString f(int i) throws IOException {
            if (h(i)) {
                return Hpack.a.c()[i].h;
            }
            int iC = c(i - Hpack.a.c().length);
            if (iC >= 0) {
                Header[] headerArr = this.f10779e;
                if (iC < headerArr.length) {
                    Header header = headerArr[iC];
                    Intrinsics.checkNotNull(header);
                    return header.h;
                }
            }
            throw new IOException(Intrinsics.stringPlus("Header index too large ", Integer.valueOf(i + 1)));
        }

        private final void g(int i, Header header) {
            this.c.add(header);
            int i2 = header.j;
            if (i != -1) {
                Header header2 = this.f10779e[c(i)];
                Intrinsics.checkNotNull(header2);
                i2 -= header2.j;
            }
            int i3 = this.b;
            if (i2 > i3) {
                b();
                return;
            }
            int iD = d((this.h + i2) - i3);
            if (i == -1) {
                int i4 = this.f10781g + 1;
                Header[] headerArr = this.f10779e;
                if (i4 > headerArr.length) {
                    Header[] headerArr2 = new Header[headerArr.length * 2];
                    System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                    this.f10780f = this.f10779e.length - 1;
                    this.f10779e = headerArr2;
                }
                int i5 = this.f10780f;
                this.f10780f = i5 - 1;
                this.f10779e[i5] = header;
                this.f10781g++;
            } else {
                this.f10779e[i + c(i) + iD] = header;
            }
            this.h += i2;
        }

        private final boolean h(int i) {
            return i >= 0 && i <= Hpack.a.c().length - 1;
        }

        private final int i() throws IOException {
            return Util.and(this.f10778d.readByte(), 255);
        }

        private final void l(int i) throws IOException {
            if (h(i)) {
                this.c.add(Hpack.a.c()[i]);
                return;
            }
            int iC = c(i - Hpack.a.c().length);
            if (iC >= 0) {
                Header[] headerArr = this.f10779e;
                if (iC < headerArr.length) {
                    List<Header> list = this.c;
                    Header header = headerArr[iC];
                    Intrinsics.checkNotNull(header);
                    list.add(header);
                    return;
                }
            }
            throw new IOException(Intrinsics.stringPlus("Header index too large ", Integer.valueOf(i + 1)));
        }

        private final void n(int i) throws IOException {
            g(-1, new Header(f(i), j()));
        }

        private final void o() throws IOException {
            g(-1, new Header(Hpack.a.a(j()), j()));
        }

        private final void p(int i) throws IOException {
            this.c.add(new Header(f(i), j()));
        }

        private final void q() throws IOException {
            this.c.add(new Header(Hpack.a.a(j()), j()));
        }

        public final List<Header> e() {
            List<Header> list = CollectionsKt___CollectionsKt.toList(this.c);
            this.c.clear();
            return list;
        }

        public final ByteString j() throws IOException {
            int i = i();
            boolean z = (i & 128) == 128;
            long jM = m(i, 127);
            if (!z) {
                return this.f10778d.readByteString(jM);
            }
            Buffer buffer = new Buffer();
            Huffman.a.b(this.f10778d, jM, buffer);
            return buffer.readByteString();
        }

        public final void k() throws IOException {
            while (!this.f10778d.exhausted()) {
                int iAnd = Util.and(this.f10778d.readByte(), 255);
                if (iAnd == 128) {
                    throw new IOException("index == 0");
                }
                if ((iAnd & 128) == 128) {
                    l(m(iAnd, 127) - 1);
                } else if (iAnd == 64) {
                    o();
                } else if ((iAnd & 64) == 64) {
                    n(m(iAnd, 63) - 1);
                } else if ((iAnd & 32) == 32) {
                    int iM = m(iAnd, 31);
                    this.b = iM;
                    if (iM < 0 || iM > this.a) {
                        throw new IOException(Intrinsics.stringPlus("Invalid dynamic table size update ", Integer.valueOf(this.b)));
                    }
                    a();
                } else if (iAnd == 16 || iAnd == 0) {
                    q();
                } else {
                    p(m(iAnd, 15) - 1);
                }
            }
        }

        public final int m(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int i5 = i();
                if ((i5 & 128) == 0) {
                    return i2 + (i5 << i4);
                }
                i2 += (i5 & 127) << i4;
                i4 += 7;
            }
        }
    }

    /* JADX INFO: renamed from: okhttp3.internal.http2.b$b */
    /* JADX INFO: compiled from: Hpack.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\u0018\u00002\u00020\u0001B#\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0003H\u0002J\u0010\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u000bH\u0002J\u000e\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dJ\u0014\u0010\u001e\u001a\u00020\u00142\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000b0 J\u001e\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0003R\u001c\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\fR\u0012\u0010\r\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lokhttp3/internal/http2/Hpack$Writer;", "", "headerTableSizeSetting", "", "useCompression", "", "out", "Lokio/Buffer;", "(IZLokio/Buffer;)V", "dynamicTable", "", "Lokhttp3/internal/http2/Header;", "[Lokhttp3/internal/http2/Header;", "dynamicTableByteCount", "emitDynamicTableSizeUpdate", "headerCount", "maxDynamicTableByteCount", "nextHeaderIndex", "smallestHeaderTableSizeSetting", "adjustDynamicTableByteCount", "", "clearDynamicTable", "evictToRecoverBytes", "bytesToRecover", "insertIntoDynamicTable", "entry", "resizeHeaderTable", "writeByteString", "data", "Lokio/ByteString;", "writeHeaders", "headerBlock", "", "writeInt", "value", "prefixMask", "bits", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class b {
        public int a;
        private final boolean b;
        private final Buffer c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f10782d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f10783e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f10784f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public Header[] f10785g;
        private int h;
        public int i;
        public int j;

        public b(int i, boolean z, Buffer out) {
            Intrinsics.checkNotNullParameter(out, "out");
            this.a = i;
            this.b = z;
            this.c = out;
            this.f10782d = Integer.MAX_VALUE;
            this.f10784f = i;
            this.f10785g = new Header[8];
            this.h = r2.length - 1;
        }

        public /* synthetic */ b(int i, boolean z, Buffer buffer, int i2, n nVar) {
            this((i2 & 1) != 0 ? 4096 : i, (i2 & 2) != 0 ? true : z, buffer);
        }

        private final void a() {
            int i = this.f10784f;
            int i2 = this.j;
            if (i < i2) {
                if (i == 0) {
                    b();
                } else {
                    c(i2 - i);
                }
            }
        }

        private final void b() {
            ArraysKt___ArraysJvmKt.fill$default(this.f10785g, (Object) null, 0, 0, 6, (Object) null);
            this.h = this.f10785g.length - 1;
            this.i = 0;
            this.j = 0;
        }

        private final int c(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.f10785g.length;
                while (true) {
                    length--;
                    i2 = this.h;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    Header header = this.f10785g[length];
                    Intrinsics.checkNotNull(header);
                    i -= header.j;
                    int i4 = this.j;
                    Header header2 = this.f10785g[length];
                    Intrinsics.checkNotNull(header2);
                    this.j = i4 - header2.j;
                    this.i--;
                    i3++;
                }
                Header[] headerArr = this.f10785g;
                System.arraycopy(headerArr, i2 + 1, headerArr, i2 + 1 + i3, this.i);
                Header[] headerArr2 = this.f10785g;
                int i5 = this.h;
                Arrays.fill(headerArr2, i5 + 1, i5 + 1 + i3, (Object) null);
                this.h += i3;
            }
            return i3;
        }

        private final void d(Header header) {
            int i = header.j;
            int i2 = this.f10784f;
            if (i > i2) {
                b();
                return;
            }
            c((this.j + i) - i2);
            int i3 = this.i + 1;
            Header[] headerArr = this.f10785g;
            if (i3 > headerArr.length) {
                Header[] headerArr2 = new Header[headerArr.length * 2];
                System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                this.h = this.f10785g.length - 1;
                this.f10785g = headerArr2;
            }
            int i4 = this.h;
            this.h = i4 - 1;
            this.f10785g[i4] = header;
            this.i++;
            this.j += i;
        }

        public final void e(int i) {
            this.a = i;
            int iMin = Math.min(i, 16384);
            int i2 = this.f10784f;
            if (i2 == iMin) {
                return;
            }
            if (iMin < i2) {
                this.f10782d = Math.min(this.f10782d, iMin);
            }
            this.f10783e = true;
            this.f10784f = iMin;
            a();
        }

        public final void f(ByteString data) throws IOException {
            Intrinsics.checkNotNullParameter(data, "data");
            if (this.b) {
                Huffman huffman = Huffman.a;
                if (huffman.d(data) < data.F()) {
                    Buffer buffer = new Buffer();
                    huffman.c(data, buffer);
                    ByteString byteString = buffer.readByteString();
                    h(byteString.F(), 127, 128);
                    this.c.P(byteString);
                    return;
                }
            }
            h(data.F(), 127, 0);
            this.c.P(data);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00cc  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00d4  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void g(java.util.List<okhttp3.internal.http2.Header> r15) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 271
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Hpack.b.g(java.util.List):void");
        }

        public final void h(int i, int i2, int i3) {
            if (i < i2) {
                this.c.writeByte(i | i3);
                return;
            }
            this.c.writeByte(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.c.writeByte(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.c.writeByte(i4);
        }
    }

    static {
        Hpack hpack = new Hpack();
        a = hpack;
        ByteString byteString = Header.f10720d;
        ByteString byteString2 = Header.f10721e;
        ByteString byteString3 = Header.f10722f;
        ByteString byteString4 = Header.c;
        b = new Header[]{new Header(Header.f10723g, ""), new Header(byteString, "GET"), new Header(byteString, "POST"), new Header(byteString2, "/"), new Header(byteString2, "/index.html"), new Header(byteString3, ProxyConfig.MATCH_HTTP), new Header(byteString3, "https"), new Header(byteString4, "200"), new Header(byteString4, "204"), new Header(byteString4, "206"), new Header(byteString4, "304"), new Header(byteString4, "400"), new Header(byteString4, "404"), new Header(byteString4, "500"), new Header("accept-charset", ""), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header("authorization", ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header("cookie", ""), new Header("date", ""), new Header(DownloadModel.ETAG, ""), new Header("expect", ""), new Header("expires", ""), new Header(TypedValues.TransitionType.S_FROM, ""), new Header("host", ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header(WebPreferenceConstants.LOCATION, ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header("range", ""), new Header("referer", ""), new Header("refresh", ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header("transfer-encoding", ""), new Header("user-agent", ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "")};
        c = hpack.d();
    }

    private Hpack() {
    }

    private final Map<ByteString, Integer> d() {
        Header[] headerArr = b;
        LinkedHashMap linkedHashMap = new LinkedHashMap(headerArr.length);
        int length = headerArr.length;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            Header[] headerArr2 = b;
            if (!linkedHashMap.containsKey(headerArr2[i].h)) {
                linkedHashMap.put(headerArr2[i].h, Integer.valueOf(i));
            }
            i = i2;
        }
        Map<ByteString, Integer> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        Intrinsics.checkNotNullExpressionValue(mapUnmodifiableMap, "unmodifiableMap(result)");
        return mapUnmodifiableMap;
    }

    public final ByteString a(ByteString name) throws IOException {
        Intrinsics.checkNotNullParameter(name, "name");
        int iF = name.F();
        int i = 0;
        while (i < iF) {
            int i2 = i + 1;
            byte bJ = name.j(i);
            if (65 <= bJ && bJ <= 90) {
                throw new IOException(Intrinsics.stringPlus("PROTOCOL_ERROR response malformed: mixed case name: ", name.K()));
            }
            i = i2;
        }
        return name;
    }

    public final Map<ByteString, Integer> b() {
        return c;
    }

    public final Header[] c() {
        return b;
    }
}
