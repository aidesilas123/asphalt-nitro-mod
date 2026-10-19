package io.didomi.drawable;

import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: io.didomi.sdk.q7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0015\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lio/didomi/sdk/q7;", "Lio/didomi/sdk/B5;", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/C3;", "logoProvider", "Lio/didomi/sdk/s5;", "resourcesHelper", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/C3;Lio/didomi/sdk/s5;)V", "", "duration", "a", "(Ljava/lang/String;)Ljava/lang/String;", "e", "Lio/didomi/sdk/s5;", "Landroid/text/SpannableString;", "i", "()Landroid/text/SpannableString;", "keysAsSpannableString", "android_release"}, mv = {1, 8, 0})
public final class C1874q7 extends B5 {

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final C1892s5 resourcesHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1874q7(H configurationRepository, C1920v3 languagesHelper, C3 logoProvider, C1892s5 resourcesHelper) {
        super(configurationRepository, languagesHelper, logoProvider);
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        Intrinsics.checkNotNullParameter(resourcesHelper, "resourcesHelper");
        this.resourcesHelper = resourcesHelper;
    }

    private final String a(String duration) {
        return C1920v3.a(f(), "sdk_storage_max_duration", null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{duration}", duration)), null, 10, null);
    }

    public final SpannableString i() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int iA = this.resourcesHelper.a(R.color.didomi_tv_common_text_with_alpha);
        int i = 0;
        for (Object obj : e()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Pair pair = (Pair) obj;
            String str = (String) pair.c();
            String strA = a((String) pair.d());
            SpannableString spannableString = new SpannableString(i > 0 ? "\n•\t" + str + "\t\t" + strA : "•\t" + str + "\t\t" + strA);
            spannableString.setSpan(new ForegroundColorSpan(iA), StringsKt__StringsKt.lastIndexOf$default((CharSequence) spannableString, "\t", 0, false, 6, (Object) null) + 1, spannableString.length(), 33);
            spannableStringBuilder.append((CharSequence) spannableString);
            i = i2;
        }
        return new SpannableString(spannableStringBuilder);
    }
}
