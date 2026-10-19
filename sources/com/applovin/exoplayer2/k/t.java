package com.applovin.exoplayer2.k;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.common.base.Predicate;
import com.applovin.exoplayer2.k.i;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface t extends i {
    public static final Predicate<String> aaJ = new Predicate() { // from class: com.applovin.exoplayer2.k.c0
        @Override // com.applovin.exoplayer2.common.base.Predicate
        public final boolean apply(Object obj) {
            return g0.a((String) obj);
        }
    };

    public static final class a extends c {
        public a(IOException iOException, l lVar) {
            super("Cleartext HTTP traffic not permitted. See https://exoplayer.dev/issues/cleartext-not-permitted", iOException, lVar, 2007, 1);
        }
    }

    public interface b extends i.a {
        @Override // com.applovin.exoplayer2.k.i.a
        /* synthetic */ i of();

        t ox();
    }

    public static class c extends j {
        public final int bs;
        public final l tw;

        public c(l lVar, int i, int i2) {
            super(J(i, i2));
            this.tw = lVar;
            this.bs = i2;
        }

        public c(IOException iOException, l lVar, int i, int i2) {
            super(iOException, J(i, i2));
            this.tw = lVar;
            this.bs = i2;
        }

        public c(String str, l lVar, int i, int i2) {
            super(str, J(i, i2));
            this.tw = lVar;
            this.bs = i2;
        }

        public c(String str, @Nullable IOException iOException, l lVar, int i, int i2) {
            super(str, iOException, J(i, i2));
            this.tw = lVar;
            this.bs = i2;
        }

        private static int J(int i, int i2) {
            if (i == 2000 && i2 == 1) {
                return 2001;
            }
            return i;
        }

        public static c a(IOException iOException, l lVar, int i) {
            String message = iOException.getMessage();
            int i2 = iOException instanceof SocketTimeoutException ? 2002 : iOException instanceof InterruptedIOException ? 1004 : (message == null || !Ascii.toLowerCase(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
            return i2 == 2007 ? new a(iOException, lVar) : new c(iOException, lVar, i2, i);
        }
    }

    public static final class d extends c {
        public final String aaK;

        public d(String str, l lVar) {
            super("Invalid content type: " + str, lVar, 2003, 1);
            this.aaK = str;
        }
    }

    public static final class e extends c {
        public final int aaC;

        @Nullable
        public final String aaL;
        public final Map<String, List<String>> aaM;
        public final byte[] aaN;

        public e(int i, @Nullable String str, @Nullable IOException iOException, Map<String, List<String>> map, l lVar, byte[] bArr) {
            super("Response code: " + i, iOException, lVar, 2004, 1);
            this.aaC = i;
            this.aaL = str;
            this.aaM = map;
            this.aaN = bArr;
        }
    }

    public static final class f {
        private final Map<String, String> aaO = new HashMap();

        @Nullable
        private Map<String, String> aaP;

        public synchronized Map<String, String> oy() {
            if (this.aaP == null) {
                this.aaP = Collections.unmodifiableMap(new HashMap(this.aaO));
            }
            return this.aaP;
        }
    }
}
