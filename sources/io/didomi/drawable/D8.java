package io.didomi.drawable;

import androidx.annotation.CallSuper;
import androidx.fragment.app.FragmentActivity;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0017¢\u0006\u0004\b\u0005\u0010\u0011J\u0015\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016¢\u0006\u0004\b\u0005\u0010\nJ\u000f\u0010\u0012\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0012\u0010\fJ\u000f\u0010\u0013\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0013\u0010\u000eR\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u00148&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u00148&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0016¨\u0006\u001a"}, d2 = {"Lio/didomi/sdk/D8;", "", "Landroidx/fragment/app/FragmentActivity;", "activity", "", "a", "(Landroidx/fragment/app/FragmentActivity;)V", "Lkotlinx/coroutines/flow/StateFlow;", "", "e", "()Lkotlinx/coroutines/flow/StateFlow;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", "Lio/didomi/sdk/Y5;", "subScreenType", "(Landroidx/fragment/app/FragmentActivity;Lio/didomi/sdk/Y5;)V", "c", "h", "Lkotlinx/coroutines/flow/MutableStateFlow;", "g", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "isNoticeDisplayed", InneractiveMediationDefs.GENDER_FEMALE, "isPreferencesDisplayed", "android_release"}, mv = {1, 8, 0})
public interface D8 {

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public static final class a {
        public static StateFlow<Boolean> a(D8 d8) {
            return d8.g();
        }

        @CallSuper
        public static void a(D8 d8, FragmentActivity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            d8.g().setValue(Boolean.TRUE);
        }

        @CallSuper
        public static void a(D8 d8, FragmentActivity activity, Y5 subScreenType) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(subScreenType, "subScreenType");
            d8.f().setValue(Boolean.TRUE);
        }

        public static StateFlow<Boolean> b(D8 d8) {
            return d8.f();
        }

        public static boolean c(D8 d8) {
            return d8.g().getValue().booleanValue();
        }

        public static boolean d(D8 d8) {
            return d8.f().getValue().booleanValue();
        }

        public static void e(D8 d8) {
            d8.g().setValue(Boolean.FALSE);
        }

        public static void f(D8 d8) {
            d8.f().setValue(Boolean.FALSE);
        }
    }

    StateFlow<Boolean> a();

    @CallSuper
    void a(FragmentActivity fragmentActivity);

    @CallSuper
    void a(FragmentActivity fragmentActivity, Y5 y5);

    boolean b();

    boolean c();

    void d();

    StateFlow<Boolean> e();

    MutableStateFlow<Boolean> f();

    MutableStateFlow<Boolean> g();

    void h();
}
