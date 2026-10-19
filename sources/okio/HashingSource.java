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

/* JADX INFO: compiled from: HashingSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class HashingSource extends j implements y {
    public static final a a = new a(null);
    private final MessageDigest b;
    private final Mac c;

    /* JADX INFO: compiled from: HashingSource.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final HashingSource a(y source, ByteString key) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(key, "key");
            return new HashingSource(source, key, "HmacSHA1");
        }

        public final HashingSource b(y source, ByteString key) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(key, "key");
            return new HashingSource(source, key, "HmacSHA256");
        }

        public final HashingSource c(y source, ByteString key) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(key, "key");
            return new HashingSource(source, key, "HmacSHA512");
        }

        public final HashingSource d(y source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new HashingSource(source, SameMD5.TAG);
        }

        public final HashingSource e(y source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new HashingSource(source, AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
        }

        public final HashingSource f(y source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new HashingSource(source, "SHA-256");
        }

        public final HashingSource g(y source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new HashingSource(source, "SHA-512");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HashingSource(y source, String algorithm) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        Intrinsics.checkNotNullExpressionValue(messageDigest, "getInstance(algorithm)");
        this(source, messageDigest);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSource(y source, MessageDigest digest) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(digest, "digest");
        this.b = digest;
        this.c = null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSource(y source, Mac mac) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(mac, "mac");
        this.c = mac;
        this.b = null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HashingSource(y source, ByteString key, String algorithm) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.J(), algorithm));
            kotlin.v vVar = kotlin.v.a;
            Intrinsics.checkNotNullExpressionValue(mac, "try {\n      Mac.getInsta…rgumentException(e)\n    }");
            this(source, mac);
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static final HashingSource hmacSha1(y yVar, ByteString byteString) {
        return a.a(yVar, byteString);
    }

    public static final HashingSource hmacSha256(y yVar, ByteString byteString) {
        return a.b(yVar, byteString);
    }

    public static final HashingSource hmacSha512(y yVar, ByteString byteString) {
        return a.c(yVar, byteString);
    }

    public static final HashingSource md5(y yVar) {
        return a.d(yVar);
    }

    public static final HashingSource sha1(y yVar) {
        return a.e(yVar);
    }

    public static final HashingSource sha256(y yVar) {
        return a.f(yVar);
    }

    public static final HashingSource sha512(y yVar) {
        return a.g(yVar);
    }

    @Override // okio.j, okio.y
    public long read(Buffer sink, long j) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j2 = super.read(sink, j);
        if (j2 != -1) {
            long jI = sink.I() - j2;
            long jI2 = sink.I();
            u uVar = sink.a;
            Intrinsics.checkNotNull(uVar);
            while (jI2 > jI) {
                uVar = uVar.h;
                Intrinsics.checkNotNull(uVar);
                jI2 -= (long) (uVar.f10898d - uVar.c);
            }
            while (jI2 < sink.I()) {
                int i = (int) ((((long) uVar.c) + jI) - jI2);
                MessageDigest messageDigest = this.b;
                if (messageDigest != null) {
                    messageDigest.update(uVar.b, i, uVar.f10898d - i);
                } else {
                    Mac mac = this.c;
                    Intrinsics.checkNotNull(mac);
                    mac.update(uVar.b, i, uVar.f10898d - i);
                }
                jI2 += (long) (uVar.f10898d - uVar.c);
                uVar = uVar.f10901g;
                Intrinsics.checkNotNull(uVar);
                jI = jI2;
            }
        }
        return j2;
    }
}
