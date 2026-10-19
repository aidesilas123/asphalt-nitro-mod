package com.facebook.messenger;

import android.net.Uri;
import androidx.webkit.ProxyConfig;
import com.applovin.sdk.AppLovinEventTypes;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.HashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: ShareToMessengerParams.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ShareToMessengerParams {
    public static final Companion Companion = new Companion(null);
    private static final Set<String> VALID_EXTERNAL_URI_SCHEMES;
    private static final Set<String> VALID_MIME_TYPES;
    private static final Set<String> VALID_URI_SCHEMES;
    private final Uri externalUri;
    private final String metaData;
    private final String mimeType;
    private final Uri uri;

    /* JADX INFO: compiled from: ShareToMessengerParams.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final Set<String> getVALID_EXTERNAL_URI_SCHEMES() {
            return ShareToMessengerParams.VALID_EXTERNAL_URI_SCHEMES;
        }

        public final Set<String> getVALID_MIME_TYPES() {
            return ShareToMessengerParams.VALID_MIME_TYPES;
        }

        public final Set<String> getVALID_URI_SCHEMES() {
            return ShareToMessengerParams.VALID_URI_SCHEMES;
        }

        public final ShareToMessengerParamsBuilder newBuilder(Uri uri, String mimeType) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            Intrinsics.checkNotNullParameter(mimeType, "mimeType");
            return new ShareToMessengerParamsBuilder(uri, mimeType);
        }
    }

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("image/*");
        hashSet.add("image/jpeg");
        hashSet.add("image/png");
        hashSet.add("image/gif");
        hashSet.add("image/webp");
        hashSet.add("video/*");
        hashSet.add(MimeTypes.VIDEO_MP4);
        hashSet.add("audio/*");
        hashSet.add(MimeTypes.AUDIO_MPEG);
        VALID_MIME_TYPES = CollectionsKt___CollectionsKt.toSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(AppLovinEventTypes.USER_VIEWED_CONTENT);
        hashSet2.add("android.resource");
        hashSet2.add("file");
        VALID_URI_SCHEMES = CollectionsKt___CollectionsKt.toSet(hashSet2);
        HashSet hashSet3 = new HashSet();
        hashSet3.add(ProxyConfig.MATCH_HTTP);
        hashSet3.add("https");
        VALID_EXTERNAL_URI_SCHEMES = CollectionsKt___CollectionsKt.toSet(hashSet3);
    }

    public ShareToMessengerParams(ShareToMessengerParamsBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        Uri uri = builder.getUri();
        if (uri == null) {
            throw new IllegalStateException("Must provide non-null uri".toString());
        }
        this.uri = uri;
        String mimeType = builder.getMimeType();
        if (mimeType == null) {
            throw new IllegalStateException("Must provide mimeType".toString());
        }
        this.mimeType = mimeType;
        this.metaData = builder.getMetaData();
        Uri externalUri = builder.getExternalUri();
        this.externalUri = externalUri;
        if (!CollectionsKt___CollectionsKt.contains(VALID_URI_SCHEMES, uri.getScheme())) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("Unsupported URI scheme: ", getUri().getScheme()).toString());
        }
        if (!VALID_MIME_TYPES.contains(mimeType)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("Unsupported mime-type: ", getMimeType()).toString());
        }
        if (externalUri != null && !CollectionsKt___CollectionsKt.contains(VALID_EXTERNAL_URI_SCHEMES, externalUri.getScheme())) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("Unsupported external uri scheme: ", getExternalUri().getScheme()).toString());
        }
    }

    public static final ShareToMessengerParamsBuilder newBuilder(Uri uri, String str) {
        return Companion.newBuilder(uri, str);
    }

    public final Uri getExternalUri() {
        return this.externalUri;
    }

    public final String getMetaData() {
        return this.metaData;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final Uri getUri() {
        return this.uri;
    }
}
