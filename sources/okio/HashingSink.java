package okio;

import com.mbridge.msdk.foundation.tools.SameMD5;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HashingSink.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class HashingSink extends i implements w {
    public static final a b = new a(null);
    private final MessageDigest c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Mac f10854d;

    /* JADX INFO: compiled from: HashingSink.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final HashingSink a(w sink, ByteString key) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            Intrinsics.checkNotNullParameter(key, "key");
            return new HashingSink(sink, key, "HmacSHA1");
        }

        public final HashingSink b(w sink, ByteString key) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            Intrinsics.checkNotNullParameter(key, "key");
            return new HashingSink(sink, key, "HmacSHA256");
        }

        public final HashingSink c(w sink, ByteString key) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            Intrinsics.checkNotNullParameter(key, "key");
            return new HashingSink(sink, key, "HmacSHA512");
        }

        public final HashingSink d(w sink) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            return new HashingSink(sink, SameMD5.TAG);
        }

        public final HashingSink e(w sink) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            return new HashingSink(sink, AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
        }

        public final HashingSink f(w sink) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            return new HashingSink(sink, "SHA-256");
        }

        public final HashingSink g(w sink) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            return new HashingSink(sink, "SHA-512");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HashingSink(w sink, String algorithm) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        Intrinsics.checkNotNullExpressionValue(messageDigest, "getInstance(algorithm)");
        this(sink, messageDigest);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSink(w sink, MessageDigest digest) {
        super(sink);
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(digest, "digest");
        this.c = digest;
        this.f10854d = null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSink(w sink, Mac mac) {
        super(sink);
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(mac, "mac");
        this.f10854d = mac;
        this.c = null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HashingSink(w sink, ByteString key, String algorithm) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.J(), algorithm));
            kotlin.v vVar = kotlin.v.a;
            Intrinsics.checkNotNullExpressionValue(mac, "try {\n      Mac.getInsta…rgumentException(e)\n    }");
            this(sink, mac);
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static final HashingSink hmacSha1(w wVar, ByteString byteString) {
        return b.a(wVar, byteString);
    }

    public static final HashingSink hmacSha256(w wVar, ByteString byteString) {
        return b.b(wVar, byteString);
    }

    public static final HashingSink hmacSha512(w wVar, ByteString byteString) {
        return b.c(wVar, byteString);
    }

    public static final HashingSink md5(w wVar) {
        return b.d(wVar);
    }

    public static final HashingSink sha1(w wVar) {
        return b.e(wVar);
    }

    public static final HashingSink sha256(w wVar) {
        return b.f(wVar);
    }

    public static final HashingSink sha512(w wVar) {
        return b.g(wVar);
    }

    @Override // okio.i, okio.w
    public void n(Buffer source, long j) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        _UtilKt.checkOffsetAndCount(source.I(), 0L, j);
        u uVar = source.a;
        Intrinsics.checkNotNull(uVar);
        long j2 = 0;
        while (j2 < j) {
            int iMin = (int) Math.min(j - j2, uVar.f10898d - uVar.c);
            MessageDigest messageDigest = this.c;
            if (messageDigest != null) {
                messageDigest.update(uVar.b, uVar.c, iMin);
            } else {
                Mac mac = this.f10854d;
                Intrinsics.checkNotNull(mac);
                mac.update(uVar.b, uVar.c, iMin);
            }
            j2 += (long) iMin;
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
        }
        super.n(source, j);
    }
}
