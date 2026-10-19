package androidx.webkit.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.WebMessageCompat;
import org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface;

/* JADX INFO: loaded from: classes.dex */
public class WebMessagePayloadAdapter implements WebMessagePayloadBoundaryInterface {

    @NonNull
    private final WebMessageCompat mMessageCompat;

    public WebMessagePayloadAdapter(@NonNull WebMessageCompat webMessageCompat) {
        this.mMessageCompat = webMessageCompat;
    }

    @Override // org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface
    @NonNull
    public byte[] getAsArrayBuffer() {
        return this.mMessageCompat.getArrayBuffer();
    }

    @Override // org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface
    @Nullable
    public String getAsString() {
        return this.mMessageCompat.getData();
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    @NonNull
    public String[] getSupportedFeatures() {
        return new String[0];
    }

    @Override // org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface
    public int getType() {
        int type = this.mMessageCompat.getType();
        if (type == 0) {
            return 0;
        }
        if (type == 1) {
            return 1;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }
}
