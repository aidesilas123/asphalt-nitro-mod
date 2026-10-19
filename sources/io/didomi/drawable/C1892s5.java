package io.didomi.drawable;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: renamed from: io.didomi.sdk.s5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018\u0000 \u001e2\u00020\u0001:\u0001\rB\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0012¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u000b2\b\b\u0001\u0010\f\u001a\u00020\u000bH\u0017¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\r\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\r\u0010\u0010J\u0019\u0010\r\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0013J#\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0014J\u000f\u0010\t\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\t\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00188\u0012@\u0012X\u0092.¢\u0006\u0006\n\u0004\b\t\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00068\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lio/didomi/sdk/s5;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "language", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;)V", "", "resourceId", "a", "(I)I", "", "()F", "resourceName", "Landroid/graphics/Typeface;", "(Ljava/lang/String;)Landroid/graphics/Typeface;", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "", "()Z", "Landroid/content/Context;", "Landroid/content/res/Resources;", "Landroid/content/res/Resources;", "resources", "c", "Ljava/lang/String;", "currentLanguage", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "android_release"}, mv = {1, 8, 0})
public class C1892s5 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Context context;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private Resources resources;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private String currentLanguage;

    public C1892s5(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        b(this.currentLanguage);
    }

    private void b(String language) {
        String language2;
        Configuration configuration = new Configuration(this.context.getResources().getConfiguration());
        configuration.setLocale(A3.a.a(language));
        Resources resources = this.context.createConfigurationContext(configuration).getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "context.createConfigurat…eConfiguration).resources");
        this.resources = resources;
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            language2 = configuration.getLocales().get(0).toLanguageTag();
        } else if (i >= 21) {
            language2 = configuration.locale.toLanguageTag();
        } else {
            String country = configuration.locale.getCountry();
            if (country == null || StringsKt__StringsJVMKt.isBlank(country)) {
                language2 = configuration.locale.getLanguage();
            } else {
                language2 = configuration.locale.getLanguage() + '-' + configuration.locale.getCountry();
            }
        }
        this.currentLanguage = language2;
    }

    public float a() {
        Resources resources = this.resources;
        if (resources == null) {
            Intrinsics.throwUninitializedPropertyAccessException("resources");
            resources = null;
        }
        return resources.getDisplayMetrics().density;
    }

    @ColorInt
    public int a(@ColorRes int resourceId) {
        return ContextCompat.getColor(this.context, resourceId);
    }

    public Typeface a(String resourceName) {
        Intrinsics.checkNotNullParameter(resourceName, "resourceName");
        int iA = C1707a0.a(this.context, resourceName, "font");
        if (iA > 0) {
            return ResourcesCompat.getFont(this.context, iA);
        }
        return null;
    }

    public String a(String resourceName, String language) {
        Intrinsics.checkNotNullParameter(resourceName, "resourceName");
        if (!A3.a.a(language, this.currentLanguage)) {
            b(language);
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.a;
        String str = String.format("didomi_%s", Arrays.copyOf(new Object[]{resourceName}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        int iA = C1707a0.a(this.context, str, TypedValues.Custom.S_STRING);
        Resources resources = null;
        if (iA <= 0) {
            return null;
        }
        Resources resources2 = this.resources;
        if (resources2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("resources");
        } else {
            resources = resources2;
        }
        return resources.getString(iA);
    }

    public boolean b() {
        Resources resources = this.resources;
        Resources resources2 = null;
        if (resources == null) {
            Intrinsics.throwUninitializedPropertyAccessException("resources");
            resources = null;
        }
        boolean z = (resources.getConfiguration().screenLayout & 15) == 3;
        Resources resources3 = this.resources;
        if (resources3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("resources");
        } else {
            resources2 = resources3;
        }
        return (resources2.getConfiguration().screenLayout & 15) == 4 || z;
    }
}
