package io.didomi.drawable.view.mobile;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.LifecycleOwner;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1892s5;
import io.didomi.drawable.C1919v2;
import io.didomi.drawable.C1955y8;
import io.didomi.drawable.C1965z8;
import io.didomi.drawable.C3;
import io.didomi.drawable.Didomi;
import io.didomi.drawable.R;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.v;

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
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J1\u0010\r\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\r\u0010\u001aJ+\u0010\r\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u001cJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u0012R\u0014\u0010\u001f\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u001eR\"\u0010&\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0011\u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u0006/"}, d2 = {"Lio/didomi/sdk/view/mobile/HeaderView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/graphics/Bitmap;", "bitmap", "", "a", "(Landroid/graphics/Bitmap;)V", "resourceId", "(I)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", "Lio/didomi/sdk/C3;", "logoProvider", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "", "title", "accessibilityTitle", "(Lio/didomi/sdk/C3;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;)V", "titleGravity", "(Ljava/lang/String;Ljava/lang/String;I)V", "Lio/didomi/sdk/v2;", "Lio/didomi/sdk/v2;", "binding", "Lio/didomi/sdk/z8;", "Lio/didomi/sdk/z8;", "getThemeProvider", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "Lio/didomi/sdk/s5;", "c", "Lio/didomi/sdk/s5;", "getResourcesHelper", "()Lio/didomi/sdk/s5;", "setResourcesHelper", "(Lio/didomi/sdk/s5;)V", "resourcesHelper", "android_release"}, mv = {1, 8, 0})
public final class HeaderView extends FrameLayout {
    private final C1919v2 a;
    public C1965z8 b;
    public C1892s5 c;

    @Metadata(mv = {1, 8, 0}, xi = 48)
    /* synthetic */ class a extends r implements Function1<Bitmap, v> {
        a(Object obj) {
            super(1, obj, HeaderView.class, "onBitmapLogo", "onBitmapLogo(Landroid/graphics/Bitmap;)V", 0);
        }

        public final void a(Bitmap bitmap) {
            ((HeaderView) this.receiver).a(bitmap);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Bitmap bitmap) {
            a(bitmap);
            return v.a;
        }
    }

    @Metadata(mv = {1, 8, 0}, xi = 48)
    /* synthetic */ class b extends r implements Function1<Integer, v> {
        b(Object obj) {
            super(1, obj, HeaderView.class, "onResourceLogo", "onResourceLogo(I)V", 0);
        }

        public final void a(int i) {
            ((HeaderView) this.receiver).a(i);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Integer num) {
            a(num.intValue());
            return v.a;
        }
    }

    @Metadata(mv = {1, 8, 0}, xi = 48)
    /* synthetic */ class c extends r implements Function0<v> {
        c(Object obj) {
            super(0, obj, HeaderView.class, "onLogoAbsent", "onLogoAbsent()V", 0);
        }

        public final void a() {
            ((HeaderView) this.receiver).b();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ v invoke() {
            a();
            return v.a;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HeaderView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HeaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HeaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        C1919v2 c1919v2A = C1919v2.a(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(c1919v2A, "inflate(LayoutInflater.from(context), this, true)");
        this.a = c1919v2A;
        if (isInEditMode()) {
            return;
        }
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
    }

    public /* synthetic */ HeaderView(Context context, AttributeSet attributeSet, int i, int i2, n nVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i) {
        this.a.c.setVisibility(8);
        ImageView imageView = this.a.b;
        imageView.setImageResource(i);
        imageView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Bitmap bitmap) {
        this.a.c.setVisibility(8);
        ImageView imageView = this.a.b;
        imageView.setImageBitmap(bitmap);
        imageView.setVisibility(0);
    }

    public static /* synthetic */ void a(HeaderView headerView, C3 c3, LifecycleOwner lifecycleOwner, String str, String str2, int i, Object obj) {
        if ((i & 8) != 0) {
            str2 = null;
        }
        headerView.a(c3, lifecycleOwner, str, str2);
    }

    public static /* synthetic */ void a(HeaderView headerView, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str2 = null;
        }
        if ((i2 & 4) != 0) {
            i = 17;
        }
        headerView.a(str, str2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b() {
        this.a.c.setVisibility(0);
    }

    public final void a() {
        if (getResourcesHelper().b()) {
            return;
        }
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.didomi_title_horizontal_padding_with_cross);
        if (this.a.c.getGravity() == 17) {
            setPadding(dimensionPixelOffset, getPaddingTop(), dimensionPixelOffset, getPaddingBottom());
        } else {
            setPadding(getPaddingStart(), getPaddingTop(), dimensionPixelOffset, getPaddingBottom());
        }
    }

    public final void a(C3 logoProvider, LifecycleOwner lifecycleOwner, String title, String str) {
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(title, "title");
        TextView setup$lambda$0 = this.a.c;
        setup$lambda$0.setText(title);
        if (!(!StringsKt__StringsJVMKt.isBlank(title)) || str == null || StringsKt__StringsJVMKt.isBlank(str)) {
            str = null;
        }
        setup$lambda$0.setHint(str);
        Intrinsics.checkNotNullExpressionValue(setup$lambda$0, "setup$lambda$0");
        C1955y8.a(setup$lambda$0, getThemeProvider().i().n());
        this.a.b.setVisibility(8);
        logoProvider.a(lifecycleOwner, new a(this), new b(this), new c(this));
    }

    public final void a(String title, String str, int i) {
        Intrinsics.checkNotNullParameter(title, "title");
        ImageView imageView = this.a.b;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.imageHeaderLogo");
        imageView.setVisibility(8);
        TextView setup$lambda$2 = this.a.c;
        setup$lambda$2.setText(title);
        if (!(!StringsKt__StringsJVMKt.isBlank(title)) || str == null || StringsKt__StringsJVMKt.isBlank(str)) {
            str = null;
        }
        setup$lambda$2.setHint(str);
        Intrinsics.checkNotNullExpressionValue(setup$lambda$2, "setup$lambda$2");
        C1955y8.a(setup$lambda$2, getThemeProvider().i().n());
        setup$lambda$2.setGravity(i);
        setup$lambda$2.setVisibility(0);
    }

    public final C1892s5 getResourcesHelper() {
        C1892s5 c1892s5 = this.c;
        if (c1892s5 != null) {
            return c1892s5;
        }
        Intrinsics.throwUninitializedPropertyAccessException("resourcesHelper");
        return null;
    }

    public final C1965z8 getThemeProvider() {
        C1965z8 c1965z8 = this.b;
        if (c1965z8 != null) {
            return c1965z8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("themeProvider");
        return null;
    }

    public final void setResourcesHelper(C1892s5 c1892s5) {
        Intrinsics.checkNotNullParameter(c1892s5, "<set-?>");
        this.c = c1892s5;
    }

    public final void setThemeProvider(C1965z8 c1965z8) {
        Intrinsics.checkNotNullParameter(c1965z8, "<set-?>");
        this.b = c1965z8;
    }
}
