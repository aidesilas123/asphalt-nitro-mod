package io.didomi.drawable;

import android.os.Build;
import com.json.b4;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lio/didomi/sdk/J2;", "Lio/didomi/sdk/s3;", "", b4.r, "<init>", "(Z)V", "", "script", "Lio/didomi/sdk/y;", "", "a", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Z", "android_release"}, mv = {1, 8, 0})
public final class J2 implements InterfaceC1890s3 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final boolean enabled;

    public J2(boolean z) {
        this.enabled = z;
    }

    @Override // io.didomi.drawable.InterfaceC1890s3
    public Object a(String str, Continuation<? super C1946y> continuation) {
        return C1946y.INSTANCE.a(!this.enabled ? "DCS is not enabled." : Build.VERSION.SDK_INT < 19 ? "DCS won't be saved because the functionality requires API 19." : "DCS won't be saved because Android System WebView is not available.");
    }
}
